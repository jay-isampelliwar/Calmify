# Calmify - Color Guidelines

This document defines the color system for the Calmify app, covering both light and dark themes with specific usage guidelines for each color role.

---

## 1. Color Roles & Definitions

| Role                 | Light Theme Color       | Dark Theme Color        | Purpose & Usage                                  |
| -------------------- | ----------------------- | ----------------------- | ------------------------------------------------ |
| **Primary**          | Lavender `#B39DDB`      | Medium Purple `#9575CD` | Brand identity, app bars, selected tabs, icons   |
| **Accent**           | Peach `#FFCC80`         | Coral Pink `#FFAB91`    | Call-to-action buttons, toggles, link highlights |
| **Background**       | Light Lilac `#F3E5F5`   | Dark Purple `#2E1A47`   | Scaffold and screen backgrounds                  |
| **Surface**          | White `#FFFFFF`         | Eggplant `#382B5F`      | Cards, dialogs, bottom sheets                    |
| **Text Primary**     | Deep Purple `#4A148C`   | Pale Lilac `#EDE7F6`    | Main headings, body text                         |
| **Text Secondary**   | Purple `#6A1B9A`        | Soft Lavender `#D1C4E9` | Subheadings, captions, disabled text             |
| **Divider / Border** | Pale Lavender `#E1BEE7` | Rich Purple `#5E35B1`   | Separators, input borders, list dividers         |
| **Success**          | Mint `#A5D6A7`          | Mint Green `#81C784`    | Success messages, completed-step indicators      |
| **Error / Warning**  | Soft Red `#E57373`      | Soft Red `#E57373`      | Error messages, validation feedback              |
| **Accent Dark**      | Vivid Purple `#8E24AA`  | Dark Magenta `#7B1FA2`  | Icon states, pressed button backgrounds          |

---

## 2. Light Theme Guidelines

### Primary (`#B39DDB`)

- AppBar background
- Active tab indicators
- Iconography and selected UI elements

### Accent (`#FFCC80`)

- "Start" and "Next" buttons
- Slider thumbs, switches
- Highlight links and inline buttons

### Background (`#F3E5F5`)

- Scaffold background for all screens
- Underlying color behind cards/panels

### Surface (`#FFFFFF`)

- Cards, modals, bottom sheets
- TextField backgrounds, menus

### Text

- **Primary** (`#4A148C`) for headings and body
- **Secondary** (`#6A1B9A`) for labels, captions, disabled

### Divider / Border (`#E1BEE7`)

- Between list items
- Under input fields and menus

### Feedback

- **Success** (`#A5D6A7`) on completed steps, checkmarks
- **Error** (`#E57373`) on validation errors, alerts

### Accent Dark (`#8E24AA`)

- Button pressed states
- Active icon highlights

---

## 3. Dark Theme Guidelines

### Background (`#2E1A47`)

- Primary app background

### Surface (`#382B5F`)

- Cards, dialogs, sheets

### Primary (`#9575CD`)

- AppBar, selected tabs, header icons

### Accent (`#FFAB91`)

- Main CTA ("Start"), toggles, links

### Text

- **Primary** (`#EDE7F6`) for headings/body
- **Secondary** (`#D1C4E9`) for subtext, disabled

### Divider / Border (`#5E35B1`)

- Section separators
- Input underlines

### Feedback

- **Success** (`#81C784`) for positive states
- **Error** (`#E57373`) for warnings and failures

### Accent Dark (`#7B1FA2`)

- Pressed button backgrounds
- Active iconography

---

## 4. Accessibility & Contrast

### Minimum Contrast Ratios

- **Text (primary) vs. background:** ≥ 4.5:1
- **UI elements (buttons, icons) vs. background:** ≥ 3:1

### Testing

- Use tools (e.g., Lighthouse, Contrast Checker) to verify
- Adjust opacity or switch to darker shades if below threshold

### Disabled States

- Reduce opacity to ~50% for secondary text and icons

---

## 5. Component Usage Examples

### Button (Light)

- **Background:** Accent `#FFCC80`
- **Text:** Text Primary `#4A148C`
- **Pressed:** Accent Dark `#8E24AA`

### Card (Dark)

- **Background:** Surface `#382B5F`
- **Border:** Divider `#5E35B1`
- **Title Text:** Text Primary `#EDE7F6`

### AppBar (Both Themes)

- **Light:** Primary `#B39DDB`
- **Dark:** Primary `#9575CD`
- **Title Text:** Text Primary (white or `#EDE7F6`)

### Progress Indicator

- **Completed portion:** Success color
- **Remaining portion:** Divider color

---

## Implementation Notes

### Flutter Implementation

Reference the color definitions in `/lib/core/theme/colors.dart` for the actual Flutter color constants that implement this system.

### Theme Switching

Ensure all color references are dynamic and respond to system theme changes or in-app theme toggles.

### Consistency

Always use semantic color names (e.g., `primary`, `accent`, `textPrimary`) rather than hard-coded hex values in your code to ensure consistency across the app.

---

**Last Updated:** September 30, 2025  
**Version:** 1.0
