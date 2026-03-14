---
name: course-microsite
description: Use when the user says "build a microsite," "create a course site," "compile course content into a site," or "spin up the microsite." Generates a deployable React course site from vault or repo course content. Requires Node.js and pnpm.
---

# Course Microsite Builder

Reads course content from your faculty repo, compiles it into structured JSON, and produces a deployable React + Vite + Tailwind site. Students access it via a shareable URL.

## Prerequisites

This skill requires additional tools beyond Claude Code:

- **Node.js** (v18 or later): [nodejs.org](https://nodejs.org)
- **pnpm** (v9 or later): `npm install -g pnpm`
- **Vercel CLI** (for deployment): `pnpm add -g vercel`

If any of these are missing, stop and tell the user what to install before proceeding.

## Input

A course folder path in the user's faculty repo. The folder should contain:

```
courses/{course-name}/
├── briefs/                    # Project briefs (required)
│   ├── project-01.md
│   ├── project-02.md
│   └── ...
├── materials/                 # Session plans by week (required)
│   ├── week-01.md
│   ├── week-02.md
│   └── ...
└── syllabus.md                # Course syllabus (required)
```

Alternative vault structure (if using Obsidian):

```
{course}/
├── planning/syllabus/         # Syllabus
├── modules/                   # Session plans
├── projects/                  # Project briefs
└── projects/shared-templates/ # Templates (optional)
```

## Output

A deployable React project at `~/projects/course-microsites/{course-code}/`.

---

## Step 1: Check Prerequisites

```bash
node --version   # Must be v18+
pnpm --version   # Must be v9+
```

If either command fails, stop and instruct the user to install the missing tool.

## Step 2: Gather and Parse Source Files

Read these files from the course folder:

1. **Syllabus** (required): extract course code, title, quarter, year, instructor, description, learning outcomes, course structure (units, weeks, themes), grading, policies
2. **Session plans / materials** (required): extract week number, unit, theme, sessions with activities, deliverables, looking ahead
3. **Project briefs** (required): extract project number, title, overview, weight, weeks, due date, AI use policy, deliverables, assessment criteria, resources
4. **Templates** (optional): extract Position Statement, AI Use Log, Record of Resistance structures

**Parsing rules:**
- Activity timing: parse `**Name (Xmin)**` into `activityName` and `duration` fields
- Blockquotes: classify as `principle`, `warning`, or `context`
- Session duration: calculate total from activity durations

## Step 3: Generate JSON Data File

Compile all extracted content into `course-data.json`. The schema matches the TypeScript interfaces in the template's `src/types.ts`. Key structure:

```json
{
  "metadata": {
    "courseCode": "COURSE-201",
    "courseTitle": "Your Course Title",
    "quarter": "Spring",
    "year": 2026,
    "instructor": "Faculty Name",
    "courseDescription": "2 to 3 sentence overview",
    "totalWeeks": 10,
    "hasESF": true,
    "program": "Your Program Name"
  },
  "learningOutcomes": [{ "id": 1, "outcome": "..." }],
  "courseStructure": {
    "units": [{
      "unitNumber": 1,
      "unitName": "Unit Name",
      "weeks": [1, 2, 3],
      "theme": "Theme description",
      "aiPresent": false
    }]
  },
  "grading": { "components": [{ "component": "Project 1", "weight": 20, "description": "..." }] },
  "courseMap": [{ "week": 1, "unit": "Unit Name", "theme": "Theme", "activeProject": "P1", "keyDeliverable": "..." }],
  "weeks": [{
    "weekNumber": 1,
    "unitNumber": 1,
    "unitName": "Unit Name",
    "theme": "Theme",
    "overview": "2 to 3 sentences",
    "learningObjectives": ["..."],
    "sessions": [{
      "sessionNumber": 1,
      "sessionTitle": "Title",
      "activities": [{ "activityName": "Name", "duration": "15 min", "description": "..." }]
    }],
    "deliverables": [{ "deliverable": "Name", "dueDate": "End of Week 1" }],
    "lookingAhead": "Next week..."
  }],
  "projects": [{
    "projectNumber": 1,
    "projectTitle": "Title",
    "overview": "2 to 3 sentences",
    "weight": "20%",
    "weeks": [1, 2, 3],
    "dueDate": "End of Week 3",
    "aiUse": { "allowed": false, "restrictions": "..." },
    "deliverables": ["..."],
    "assessmentCriteria": ["..."],
    "resources": [{ "title": "Name", "url": "https://..." }]
  }],
  "templates": {},
  "policies": {
    "aiUse": {
      "unitProgression": [{ "unit": "Unit 1", "weeks": "1 to 3", "aiStatus": "Prohibited", "guidance": "..." }],
      "projectMatrix": [{ "project": "P1", "consultative": "Prohibited", "transformative": "Prohibited", "generativePrimary": "Prohibited" }],
      "principles": ["..."]
    },
    "lateWork": "Policy text",
    "attendance": "Policy text"
  }
}
```

Include `esfIntegration` only if the syllabus references the Epistemic Stewardship Framework.

## Step 4: Scaffold the Project

If `~/projects/course-microsites/{course-code}/` does not exist:

```bash
mkdir -p ~/projects/course-microsites
cd ~/projects/course-microsites

# Scaffold from Vite template
pnpm create vite@latest {course-code} --template react-ts
cd {course-code}

# Install dependencies
pnpm add tailwindcss @tailwindcss/vite react-router-dom lucide-react class-variance-authority clsx tailwind-merge
pnpm add @radix-ui/react-accordion @radix-ui/react-collapsible @radix-ui/react-dialog @radix-ui/react-slot @radix-ui/react-tabs @radix-ui/react-tooltip @radix-ui/react-separator @radix-ui/react-scroll-area

# Initialize shadcn/ui
pnpm dlx shadcn@latest init -d
pnpm dlx shadcn@latest add accordion badge card tabs sidebar sheet tooltip separator scroll-area skeleton button input
```

Then write all component files following the architecture spec below.

If the project already exists, update only `src/data/course-data.json`.

## Step 5: Write Component Files

Write these files using the architecture described in the Template Architecture section below. All components receive typed props from `App.tsx` via the router.

### Files to Write

| File | Purpose |
|------|---------|
| `src/App.tsx` | BrowserRouter with routes: `/` and `/projects/:projectId` |
| `src/main.tsx` | React entry point |
| `src/types.ts` | All TypeScript interfaces for course data |
| `src/index.css` | Tailwind v4 import, light + dark theme tokens, portal-glow effect |
| `src/lib/utils.ts` | cn() utility (from shadcn) |
| `src/lib/unit-colors.ts` | Unit color definitions mapped to course units |
| `src/hooks/use-mobile.tsx` | Mobile breakpoint hook (1024px) |
| `src/components/layout/main-layout.tsx` | Outlet shell with shared footer |
| `src/components/layout/top-nav.tsx` | Sticky top nav with Brain icon, nav links, projects dropdown, theme toggle, mobile hamburger |
| `src/components/theme-toggle.tsx` | Light/dark mode toggle with localStorage |
| `src/pages/home-page.tsx` | Composition: overview + course map + weeks + projects + templates + policies |
| `src/pages/project-page.tsx` | Project detail: hero card, deliverables, assessment, AI policy, resources |
| `src/components/course-overview.tsx` | Full-bleed hero, deadline cards, bento grid (About + Outcomes + Grading + Quick Links) |
| `src/components/deadline-cards.tsx` | Next 3 project deadlines with unit-colored accents |
| `src/components/course-map.tsx` | Week-by-week table with unit badges, clickable rows |
| `src/components/week-accordion.tsx` | Custom accordion with tabs: Sessions / Deliverables / Looking Ahead |
| `src/components/project-cards.tsx` | 4-column grid of Link cards to project detail pages |
| `src/components/templates-section.tsx` | Accordion for Position Statement, AI Use Log, Record of Resistance |
| `src/components/policies-tabs.tsx` | Tabbed view: AI progression table, project permission matrix, late work, attendance |
| `index.html` | HTML shell with theme flash prevention script |
| `vite.config.ts` | React + Tailwind v4 plugins, @ path alias |
| `tsconfig.json` | Strict TS, ESNext module, @ path alias |
| `components.json` | shadcn/ui config |
| `vercel.json` | SPA rewrites |

### Course-Specific Customizations

For each new course, customize:

1. **`src/lib/unit-colors.ts`**: Map the course's unit names to four colors (violet, blue, emerald, amber)
2. **`src/components/course-overview.tsx`**: Update the positioning callout text and tags
3. **`src/components/layout/sidebar-nav.tsx`**: Update `SUBMISSION_WEEKS` array
4. **`src/components/deadline-cards.tsx`**: Update `PROJECT_UNIT_MAP`
5. **`index.html`**: Update `<title>` tag
6. **`package.json`**: Update `name` field

## Step 6: Verify and Run

1. `pnpm install` (confirm no errors)
2. `pnpm run build` (confirm TypeScript compiles)
3. `pnpm dev` (confirm site loads at localhost)
4. Report: weeks compiled, projects compiled, any missing content

## Step 7: Deploy (On Request)

```bash
cd ~/projects/course-microsites/{course-code}
pnpm run build
vercel deploy --prod
```

Report the live URL.

---

## Template Architecture

### Design System

**Themes:** Light and dark modes via CSS custom properties and `.dark` class toggle.

**Semantic tokens:** `text-primary`, `text-secondary`, `text-tertiary`, `text-muted`, `text-faint`, `bg-card`, `bg-surface`, `bg-surface-hover`, `bg-highlight`, `border-subtle`, `border-highlight-border`, `nav-bg`, `hero-bg`.

**Unit colors:** Four-color palette (violet, blue, emerald, amber). Each unit style includes: `color`, `bg`, `light`, `border`, `badge`, `dot`, `icon`.

**Portal glow:** `.portal-glow` class adds violet box-shadow on hover.

**Typography:** Inter font family, font-weight 500 for headings, 16px minimum body text.

### Layout

- Sticky top navigation with logo, nav links, projects dropdown, theme toggle
- Mobile: hamburger with slide-down panel
- Content: max-w-[1400px] centered, responsive padding (px-6 / sm:px-10 / lg:px-12)
- Full-bleed hero on course overview
- Project detail pages as separate routes

### Key Interaction Patterns

- Course map rows scroll to corresponding week accordion
- Week accordion uses custom toggle (not shadcn Accordion) with tabbed content
- Project cards link to routed detail pages via react-router-dom
- Top nav shows active section highlight and projects dropdown on hover
- Theme preference persists in localStorage

---

## ESF Integration

If the course uses ESF:

- Include `esfIntegration` object in JSON
- Add Position Statement, AI Use Log, and Record of Resistance to templates section
- Show Five Questions in the ESF section
- Show Records of Resistance minimums per project
- Show Content Epistemic Weight table
- Use "Design Cycle" vocabulary (not "Sprint"), "Studio Check-In" (not "Standup")

---

## Content Update Workflow

When course content changes:

1. Re-run Steps 2 and 3 to regenerate `course-data.json`
2. Write the new JSON to `src/data/course-data.json`
3. `pnpm run build && vercel deploy --prod`

Components do not change for content updates. Only the JSON changes.
