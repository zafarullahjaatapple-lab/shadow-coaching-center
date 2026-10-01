# THE SHADOW ACADEMY Attendance System

An online-ready attendance management app for THE SHADOW COACHING CENTER.
It uses Supabase for shared cloud storage and keeps a local browser backup as a fallback.

## Final design

This version uses the colors supplied as references:
- White as the main surface color
- Light blue for navigation, information and progress
- Light green for present/success states
- Red for absent/attention states
- Black/charcoal for navigation, headings and primary controls

The palette is intentionally restrained so the interface stays clean on desktop, tablet and mobile.

## Features

- Dashboard with daily statistics
- Attendance trend graph for the last 10 days
- Daily present/absent/pending breakdown chart
- Take attendance by any date
- Mark all present / all absent
- Save attendance to the online Supabase database automatically
- Open the same app link from any device without keeping the owner's computer running
- Manual cloud refresh for cross-device updates
- Add, edit, archive and restore students
- Search students
- Daily attendance PDF for the complete class
- Weekly attendance PDF with seven-day matrix
- Monthly attendance PDF for the complete class
- Individual monthly PDF for every student
- Report screen for daily, weekly and monthly views
- JSON backup and restore
- Responsive sidebar, tables, cards and controls
- Simple built-in SVG icons
- Small interface animations with reduced-motion support

## Run on Windows

First time:

```text
install-and-run.bat
```

Next time:

```text
run.bat
```

Manual:

```text
npm install
npm run dev
```

Then open the localhost URL shown by Vite.

## Supabase setup

Create a Supabase project, then create `.env.local` in the project root:

```env
VITE_SUPABASE_URL=https://YOUR_PROJECT.supabase.co
VITE_SUPABASE_ANON_KEY=YOUR_PUBLISHABLE_OR_ANON_KEY
```

Never put a database password, service-role key, or secret key in `.env.local` that will be exposed to the browser.

Run the SQL in `supabase/schema.sql` once in the Supabase SQL Editor. This creates the shared `students` and `attendance` tables and public policies required by this no-login app.

## Data storage

When Supabase is configured, the app loads shared data from Supabase and syncs student and attendance changes back to the cloud. Browser localStorage is retained as a local backup. The same deployed website can be opened from phones, tablets and computers without the original computer running.

This version intentionally has no login because the requested workflow is a public link. Anyone with the link can use the attendance system, so do not expose sensitive information beyond what you are comfortable making accessible to link holders.

For production use with sensitive student records, add authentication and stricter Row Level Security policies.

## Visual update

- Sidebar keeps the logo only; the academy name/motto text beside it has been removed.
- Typography uses Aptos/Segoe UI system fonts for a clean modern interface.
- Features and the existing light-blue, light-green, red, black and white palette are unchanged.
