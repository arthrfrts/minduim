---
layout: post
date: "2025-08-09 08:30:00 -0300"
title: Text elements
author: charlie
tags:
  - typography
  - development
  - code
---

This post demonstrates text elements code syntax highlighting to test the theme's styling capabilities.

## Basic elements

**Bold text** and *italic text* work beautifully together. You can also combine them for ***bold and italic emphasis***. Sometimes you need to highlight `inline code snippets` or reference specific functions like `getElementById()`.

### Text Decorations

Here's text with ~~strikethrough~~, <u>underline</u>, and <mark>highlighted text</mark>. Mathematical expressions like H<sub>2</sub>O and E=mc<sup>2</sup> should render properly.

### Smarty-Pants

"Smart quotes" and 'single quotes' along with em-dashes—like this one—and ellipses... should all render correctly. Don't forget about proper apostrophes in contractions like don't, won't, and can't.

## Code Examples

```css
:root {
  --primary-color: #3b82f6;
  --secondary-color: #64748b;
  --accent-color: #f59e0b;
  --text-color: #1f2937;
  --bg-color: #ffffff;
  --border-radius: 0.5rem;
  --shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.1);
  --transition: all 0.2s ease-in-out;
}

@media (prefers-color-scheme: dark) {
  :root {
    --text-color: #f9fafb;
    --bg-color: #111827;
    --secondary-color: #9ca3af;
  }
}

.blog-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
  gap: 2rem;
  padding: 2rem;
}
```
