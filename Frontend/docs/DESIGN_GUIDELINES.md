# Calmify - Complete Design Guidelines

This comprehensive design system document defines all visual design elements for the Calmify meditation and wellness app, ensuring consistency across all platforms and components.

---

## Table of Contents

1. [Color System](#1-color-system)
2. [Typography](#2-typography)
3. [Spacing & Layout](#3-spacing--layout)
4. [Shadows & Elevation](#4-shadows--elevation)
5. [Border Radius](#5-border-radius)
6. [Component Guidelines](#6-component-guidelines)
7. [Implementation Examples](#7-implementation-examples)
8. [Accessibility](#8-accessibility)

---

## 1. Color System

### 1.1 Color Palette

The Calmify app uses a soothing purple and lavender-based color scheme that promotes calmness and mindfulness.

#### Light Theme Colors

| Color Name         | Hex Code  | Usage                                        |
| ------------------ | --------- | -------------------------------------------- |
| **Primary**        | `#B39DDB` | App bars, selected states, brand identity    |
| **Accent**         | `#FFCC80` | Call-to-action buttons, interactive elements |
| **Background**     | `#F3E5F5` | Main app background, scaffold                |
| **Surface**        | `#FFFFFF` | Cards, dialogs, input fields                 |
| **Text Primary**   | `#4A148C` | Headings, main content text                  |
| **Text Secondary** | `#6A1B9A` | Subtitles, captions, secondary text          |
| **Success**        | `#A5D6A7` | Success states, completed indicators         |
| **Error**          | `#E57373` | Error messages, validation feedback          |
| **Divider**        | `#E1BEE7` | Borders, separators, dividers                |
| **Accent Dark**    | `#8E24AA` | Pressed states, active highlights            |

#### Dark Theme Colors

| Color Name         | Hex Code  | Usage                                        |
| ------------------ | --------- | -------------------------------------------- |
| **Background**     | `#2E1A47` | Main app background                          |
| **Surface**        | `#382B5F` | Cards, dialogs, elevated surfaces            |
| **Primary**        | `#9575CD` | App bars, selected states                    |
| **Accent**         | `#FFAB91` | Call-to-action buttons, interactive elements |
| **Text Primary**   | `#EDE7F6` | Main content text, headings                  |
| **Text Secondary** | `#D1C4E9` | Subtitles, secondary text                    |
| **Divider**        | `#5E35B1` | Borders, separators                          |
| **Success**        | `#81C784` | Success states                               |
| **Error**          | `#E57373` | Error messages                               |
| **Accent Dark**    | `#7B1FA2` | Pressed states, active elements              |

### 1.2 Color Usage Guidelines

- **Primary colors** should be used sparingly for maximum impact
- **Accent colors** are for interactive elements and calls-to-action
- **Background colors** provide the foundation and should never be used for text
- **Surface colors** are for elevated content like cards and modals
- **Text colors** must maintain sufficient contrast ratios (4.5:1 minimum)

---

## 2. Typography

### 2.1 Font Families

Calmify uses a combination of Google Fonts to create a harmonious and readable typography system:

- **Nunito Sans**: Primary font for body text, headings, labels, and titles
- **Red Hat Display**: Used for larger display text and special emphasis
- **Montserrat**: Used for specific text styles in the IFontStyle system

### 2.2 Text Style Hierarchy

#### Headings (`IHeadingTextStyle`)

| Style              | Font Size | Font Weight | Line Height | Usage                       |
| ------------------ | --------- | ----------- | ----------- | --------------------------- |
| **Large**          | 34px      | Bold        | 1.18        | Main page titles            |
| **Large Regular**  | 34px      | Normal      | 1.18        | Main page titles (subtle)   |
| **Medium**         | 24px      | Bold        | 1.4         | Section headers             |
| **Medium Regular** | 24px      | Normal      | 1.4         | Section headers (subtle)    |
| **Small**          | 20px      | Bold        | 1.3         | Subsection headers          |
| **Small Regular**  | 20px      | Normal      | 1.3         | Subsection headers (subtle) |

#### Titles (`ITitleTextStyle`)

| Style                   | Font Size | Font Weight | Line Height | Usage                         |
| ----------------------- | --------- | ----------- | ----------- | ----------------------------- |
| **Large**               | 18px      | Bold        | 1.2         | Card titles, important labels |
| **Large Regular**       | 18px      | Normal      | 1.2         | Card titles (subtle)          |
| **Medium**              | 16px      | Bold        | 1.3         | List item titles              |
| **Medium Regular**      | 16px      | Normal      | 1.3         | List item titles (subtle)     |
| **Small**               | 14px      | Bold        | 1.5         | Small card titles             |
| **Small Regular**       | 14px      | Normal      | 1.5         | Small card titles (subtle)    |
| **Extra Small Bold**    | 12px      | Bold        | 1.2         | Micro titles                  |
| **Extra Small Regular** | 12px      | Normal      | 1.2         | Micro titles (subtle)         |

#### Labels (`ILabelTextStyle`)

| Style              | Font Size | Font Weight | Line Height | Usage                       |
| ------------------ | --------- | ----------- | ----------- | --------------------------- |
| **Large**          | 18px      | Bold        | 1.2         | Form labels, important tags |
| **Large Regular**  | 18px      | Normal      | 1.2         | Form labels (subtle)        |
| **Medium**         | 16px      | Bold        | 1.3         | Button labels, navigation   |
| **Medium Regular** | 16px      | Normal      | 1.3         | Button labels (subtle)      |
| **Small**          | 14px      | Bold        | 1.5         | Small labels, captions      |
| **Small Regular**  | 14px      | Normal      | 1.5         | Small labels (subtle)       |
| **Extra Small**    | 10px      | Bold        | 1.3         | Micro labels, tags          |

#### Body Text (`IBodyTextStyle`)

| Style              | Font Size | Font Weight     | Line Height | Usage                        |
| ------------------ | --------- | --------------- | ----------- | ---------------------------- |
| **Large**          | 14px      | Bold            | 1.5         | Important body text          |
| **Large Regular**  | 14px      | Normal          | 1.5         | Main body text               |
| **Medium**         | 12px      | Bold            | 1.2         | Secondary body text          |
| **Medium Regular** | 12px      | Normal          | 1.2         | Secondary body text (subtle) |
| **Medium Bold**    | 12px      | Bold            | 1.2         | Emphasized secondary text    |
| **Small**          | 11px      | Semi-bold (600) | 1.3         | Small body text              |
| **Small Regular**  | 11px      | Normal          | 1.3         | Small body text (subtle)     |

#### Font Styles (`IFontStyle`)

| Style                   | Font Size | Font Weight | Line Height | Font Family     | Usage                   |
| ----------------------- | --------- | ----------- | ----------- | --------------- | ----------------------- |
| **Extra Large**         | 24px      | Bold        | 1.18        | Red Hat Display | Display text            |
| **Extra Large Regular** | 24px      | Normal      | 1.18        | Red Hat Display | Display text (subtle)   |
| **Semi Large**          | 20px      | Bold        | 1.20        | Red Hat Display | Large emphasis          |
| **Semi Large Regular**  | 20px      | Normal      | 1.20        | Red Hat Display | Large emphasis (subtle) |
| **Large**               | 18px      | Bold        | 1.25        | Montserrat      | Large text              |
| **Large Regular**       | 18px      | Normal      | 1.25        | Montserrat      | Large text (subtle)     |
| **Medium**              | 14px      | Bold        | 1.25        | Montserrat      | Medium text             |
| **Medium Regular**      | 14px      | Normal      | 1.25        | Montserrat      | Medium text (subtle)    |
| **Small**               | 12px      | Bold        | 1.29        | Montserrat      | Small text              |
| **Small Regular**       | 12px      | Normal      | 1.29        | Montserrat      | Small text (subtle)     |
| **Extra Small**         | 10px      | Bold        | 1.33        | Montserrat      | Micro text              |
| **Extra Small Regular** | 10px      | Normal      | 1.33        | Montserrat      | Micro text (subtle)     |

### 2.3 Typography Usage Guidelines

- Use heading styles for page titles and section headers
- Use title styles for card and component titles
- Use label styles for form labels, buttons, and navigation elements
- Use body styles for content text and descriptions
- Maintain consistent line heights for readability
- Always consider text contrast against background colors

---

## 3. Spacing & Layout

### 3.1 Padding System (`AppPadding`)

The padding system provides consistent spacing for all UI elements:

#### All-Around Padding

| Size            | Value | Usage                           |
| --------------- | ----- | ------------------------------- |
| **Extra Small** | 4px   | Tight spacing, small icons      |
| **Small**       | 8px   | Compact elements, small buttons |
| **Regular**     | 12px  | Standard content spacing        |
| **Medium**      | 16px  | Card padding, standard spacing  |
| **Large**       | 20px  | Section spacing, large cards    |
| **Extra Large** | 24px  | Screen margins, large sections  |

#### Horizontal Padding

| Size            | Value | Usage                       |
| --------------- | ----- | --------------------------- |
| **Extra Small** | 4px   | Icon spacing                |
| **Small**       | 8px   | Button text spacing         |
| **Regular**     | 12px  | Standard horizontal spacing |
| **Medium**      | 16px  | Card horizontal padding     |
| **Large**       | 20px  | Section horizontal margins  |
| **Extra Large** | 24px  | Screen horizontal margins   |

#### Vertical Padding

| Size            | Value | Usage                     |
| --------------- | ----- | ------------------------- |
| **Extra Small** | 4px   | Line spacing              |
| **Small**       | 8px   | Element vertical spacing  |
| **Regular**     | 12px  | Standard vertical spacing |
| **Medium**      | 16px  | Card vertical padding     |
| **Large**       | 20px  | Section vertical margins  |
| **Extra Large** | 24px  | Screen vertical margins   |

#### Special Padding

| Type                        | Value                            | Usage                   |
| --------------------------- | -------------------------------- | ----------------------- |
| **Button Padding**          | 16px vertical, 20px horizontal   | Standard button padding |
| **Outlined Button Padding** | 14.8px vertical, 20px horizontal | Outlined button padding |
| **Chip Padding**            | 6px vertical, 16px horizontal    | Chip/tag padding        |

### 3.2 Spacer System (`AppSpacer`)

The spacer system provides consistent spacing between elements:

| Size            | Value       | Usage                 |
| --------------- | ----------- | --------------------- |
| **Zero**        | 0px × 0px   | No spacing            |
| **Extra Small** | 4px × 4px   | Minimal spacing       |
| **Small**       | 8px × 8px   | Small element spacing |
| **Regular**     | 12px × 12px | Standard spacing      |
| **Medium**      | 16px × 16px | Card spacing          |
| **Large**       | 20px × 20px | Section spacing       |
| **Extra Large** | 24px × 24px | Large section spacing |
| **Huge**        | 32px × 32px | Major section spacing |
| **Massive**     | 48px × 48px | Screen-level spacing  |

### 3.3 Spacing Guidelines

- Use consistent spacing multiples (4px base unit)
- Apply larger spacing for more important content separation
- Use smaller spacing for related elements
- Maintain visual rhythm throughout the app
- Consider touch targets (minimum 44px) for interactive elements

---

## 4. Shadows & Elevation

### 4.1 Shadow System (`AppShadows`)

The shadow system creates depth and hierarchy in the UI:

#### Elevation Shadows

| Shadow Type     | Blur Radius | Offset  | Spread | Usage                         |
| --------------- | ----------- | ------- | ------ | ----------------------------- |
| **Light**       | 4px         | (0, 2)  | 0      | Subtle elevation, small cards |
| **Medium**      | 8px         | (0, 4)  | 0      | Standard cards, containers    |
| **Large**       | 16px        | (0, 8)  | 0      | Elevated elements, modals     |
| **Extra Large** | 24px        | (0, 12) | 0      | High elevation, dialogs       |

#### Directional Shadows

| Shadow Type   | Blur Radius | Offset  | Spread | Usage                          |
| ------------- | ----------- | ------- | ------ | ------------------------------ |
| **Light Up**  | 4px         | (0, -2) | 0      | Top shadows, floating elements |
| **Medium Up** | 8px         | (0, -4) | 0      | Elevated top elements          |
| **Large Up**  | 16px        | (0, -8) | 0      | High top elevation             |

#### Interactive Shadows

| Shadow Type | Blur Radius | Offset | Spread | Usage                         |
| ----------- | ----------- | ------ | ------ | ----------------------------- |
| **Soft**    | 6px         | (0, 3) | 0      | Buttons, interactive elements |
| **Focus**   | 8px         | (0, 0) | 2      | Input field focus states      |
| **Error**   | 8px         | (0, 0) | 2      | Error state indicators        |
| **Success** | 8px         | (0, 0) | 2      | Success state indicators      |

#### Special Shadows

| Shadow Type | Blur Radius | Offset | Spread | Usage                         |
| ----------- | ----------- | ------ | ------ | ----------------------------- |
| **Inner**   | 4px         | (0, 2) | -2     | Pressed states, inset effects |
| **None**    | -           | -      | -      | Flat elements, no elevation   |

### 4.2 Elevation Guidelines

- Use shadows to create visual hierarchy
- Apply lighter shadows for subtle elevation
- Use medium shadows for standard cards and containers
- Apply large shadows for modals and important elements
- Use directional shadows for specific UI patterns
- Interactive shadows should respond to user actions

---

## 5. Border Radius

### 5.1 Border Radius System (`AppBorderRadius`)

The border radius system provides consistent rounded corners:

| Size            | Value | Usage                             |
| --------------- | ----- | --------------------------------- |
| **Extra Small** | 4px   | Small buttons, tags, chips        |
| **Small**       | 8px   | Small cards, input fields         |
| **Regular**     | 12px  | Standard cards, buttons           |
| **Medium**      | 16px  | Large cards, containers           |
| **Large**       | 20px  | Major containers, sections        |
| **Extra Large** | 32px  | Special containers, hero elements |
| **Max**         | 999px | Pills, fully rounded elements     |

#### Special Border Radius

| Type                   | Value            | Usage                  |
| ---------------------- | ---------------- | ---------------------- |
| **Bottom Sheet**       | 16px top corners | Standard bottom sheets |
| **Top Sheet**          | 16px top corners | Top sheets, overlays   |
| **Bottom Sheet Large** | 24px top corners | Large bottom sheets    |

### 5.2 Border Radius Guidelines

- Use smaller radius for smaller elements
- Apply larger radius for major containers
- Use max radius for pill-shaped elements
- Maintain consistency within component types
- Consider the element's size when choosing radius

---

## 6. Component Guidelines

### 6.1 Cards

```dart
// Standard card implementation
Container(
  padding: AppPadding.medium,
  decoration: BoxDecoration(
    color: AppColors.lightSurface,
    borderRadius: AppBorderRadius.medium,
    boxShadow: AppShadows.medium,
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Card Title',
        style: ITextStyle.title.medium,
      ),
      AppSpacer.small(),
      Text(
        'Card content goes here',
        style: ITextStyle.body.largeRegular,
      ),
    ],
  ),
)
```

### 6.2 Buttons

```dart
// Primary button
ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: AppColors.lightAccent,
    foregroundColor: AppColors.lightTextPrimary,
    padding: AppPadding.buttonPadding,
    shape: RoundedRectangleBorder(
      borderRadius: AppBorderRadius.regular,
    ),
    elevation: 0,
    shadowColor: Colors.transparent,
  ),
  onPressed: () {},
  child: Text(
    'Start Session',
    style: ITextStyle.label.medium,
  ),
)

// Outlined button
OutlinedButton(
  style: OutlinedButton.styleFrom(
    foregroundColor: AppColors.lightPrimary,
    padding: AppPadding.outlinedButtonPadding,
    shape: RoundedRectangleBorder(
      borderRadius: AppBorderRadius.regular,
    ),
    side: BorderSide(color: AppColors.lightPrimary),
  ),
  onPressed: () {},
  child: Text(
    'Learn More',
    style: ITextStyle.label.medium,
  ),
)
```

### 6.3 Input Fields

```dart
// Text input field
Container(
  decoration: BoxDecoration(
    color: AppColors.lightSurface,
    borderRadius: AppBorderRadius.small,
    border: Border.all(color: AppColors.lightDivider),
    boxShadow: AppShadows.soft,
  ),
  child: TextField(
    style: ITextStyle.body.largeRegular,
    decoration: InputDecoration(
      hintText: 'Enter your name',
      hintStyle: ITextStyle.body.largeRegular.copyWith(
        color: AppColors.lightTextSecondary,
      ),
      border: InputBorder.none,
      contentPadding: AppPadding.medium,
    ),
  ),
)
```

### 6.4 Bottom Sheets

```dart
// Bottom sheet
showModalBottomSheet(
  context: context,
  backgroundColor: Colors.transparent,
  builder: (context) => Container(
    decoration: BoxDecoration(
      color: AppColors.lightSurface,
      borderRadius: AppBorderRadius.bottomSheet,
      boxShadow: AppShadows.extraLarge,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppSpacer.medium(),
        Text(
          'Session Options',
          style: ITextStyle.heading.small,
        ),
        AppSpacer.large(),
        // Sheet content
      ],
    ),
  ),
)
```

---

## 7. Implementation Examples

### 7.1 Theme Usage

```dart
// Import the theme system
import 'package:calmify/core/theme/index.dart';

// Use colors
Container(
  color: AppColors.lightBackground,
  child: Text(
    'Hello World',
    style: ITextStyle.heading.large.copyWith(
      color: AppColors.lightTextPrimary,
    ),
  ),
)

// Use spacing
Column(
  children: [
    Text('First item'),
    AppSpacer.medium(), // 16px spacing
    Text('Second item'),
  ],
)

// Use shadows and border radius
Container(
  decoration: BoxDecoration(
    color: AppColors.lightSurface,
    borderRadius: AppBorderRadius.medium,
    boxShadow: AppShadows.medium,
  ),
  padding: AppPadding.large,
  child: Text('Content'),
)
```

### 7.2 Responsive Design

```dart
// Responsive spacing based on screen size
Widget buildResponsiveSpacing(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;

  return Padding(
    padding: screenWidth > 600
      ? AppPadding.extraLarge
      : AppPadding.medium,
    child: Text('Responsive content'),
  );
}
```

### 7.3 Dark Theme Support

```dart
// Theme-aware colors
Widget buildThemedWidget(BuildContext context) {
  final isDark = Theme.of(context).brightness == Brightness.dark;

  return Container(
    color: isDark ? AppColors.darkSurface : AppColors.lightSurface,
    child: Text(
      'Themed content',
      style: ITextStyle.body.largeRegular.copyWith(
        color: isDark
          ? AppColors.darkTextPrimary
          : AppColors.lightTextPrimary,
      ),
    ),
  );
}
```

---

## 8. Accessibility

### 8.1 Color Contrast

- Maintain minimum 4.5:1 contrast ratio for text
- Use 3:1 contrast ratio for UI elements
- Test with color blindness simulators
- Provide alternative indicators beyond color

### 8.2 Typography

- Use sufficient font sizes (minimum 12px for body text)
- Maintain adequate line height (1.2-1.5)
- Ensure text scales with system font size settings
- Use semantic font weights appropriately

### 8.3 Touch Targets

- Minimum 44px touch target size
- Adequate spacing between interactive elements
- Clear visual feedback for interactions

### 8.4 Screen Reader Support

- Use semantic widgets and labels
- Provide meaningful alt text for images
- Ensure proper focus order
- Use heading hierarchy correctly

---

## Implementation Notes

### Flutter Implementation

All theme elements are implemented in `/lib/core/theme/` with the following structure:

- `colors.dart` - Color definitions and theme data
- `text_styles/` - Typography system
- `padding.dart` - Spacing and padding system
- `shadows.dart` - Shadow and elevation system
- `border_radius.dart` - Border radius system
- `spacer.dart` - Spacer widget system
- `index.dart` - Central export file

### Usage Best Practices

1. Always import from the theme index file
2. Use semantic names instead of hard-coded values
3. Test both light and dark themes
4. Maintain consistency across all components
5. Document any custom variations
6. Regularly review and update the system

### Maintenance

- Keep the design system up to date with app changes
- Document any new additions or modifications
- Ensure backward compatibility when possible
- Test accessibility compliance regularly

---

**Last Updated:** December 2024  
**Version:** 2.0  
**Maintained by:** Calmify Design Team
