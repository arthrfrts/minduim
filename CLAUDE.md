# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is **Minduim**, a Jekyll blog theme inspired by the classic Posterous default theme. The theme is named after the Brazilian translation of the Peanuts comic strip and includes subtle homages to it.

## Development Commands

### Local Development
- `bundle exec jekyll serve` - Start development server with live reload
- `bundle exec jekyll build` - Build the site for production
- `bundle install` - Install Ruby dependencies

### Build and Deployment
- The site builds to the `_site/` directory
- Uses Jekyll 4.4+ with Ruby gems managed via Bundler

## Architecture and Structure

### Core Components
- **Layouts**: `_layouts/` contains the main templates
  - `default.html` - Base layout with SEO, feeds, and CSS includes
  - `blog.html` - Blog listing with pagination and sidebar
  - `post.html` - Individual post layout with tags and navigation
  - `page.html` - Static page layout
  - `archive.html` - Archive pages for dates and tags

- **Includes**: `_includes/` contains reusable components
  - `header.html` - Site branding and main navigation
  - `footer.html` - Footer with secondary navigation
  - `post.html` - Post preview component for blog listings
  - `sidebar.html` - Customizable sidebar widgets
  - `widget.html` - Widget template for sidebar content

- **Assets**: `assets/css/` contains the styling
  - `base.css` - Base styles and typography
  - `layout.css` - Layout and grid system
  - `theme.css` - Customizable theme variables and colors
  - `syntax.css` - Code syntax highlighting

### Configuration System
The theme uses extensive YAML configuration in `_config.yml`:
- **Theme settings**: Under `minduim:` key for date formats, translations
- **Menus**: `main_menu` and `footer_menu` for navigation
- **Jekyll plugins**: Pagination, archives, feeds, SEO tags, sitemap

### Content Structure
- **Posts**: Markdown files in `_posts/` with YAML front matter
- **Pages**: Root-level `.md` files (about.md, 404.md)
- **Localization**: customizable via theme config

### Key Features
- Two-column responsive layout with optional sidebar
- Built-in pagination, archives, and SEO optimization
- Customizable color schemes (light/dark mode support)
- Post author system with multiple data sources
- Tag-based categorization with archive pages
- JSON and XML feed generation

### Theme Customization
- Override `theme.css` variables for colors, fonts, backgrounds
- Create custom sidebar widgets using the widget include pattern
- Configure menus, translations, and date formats in `_config.yml`
- Author information can be set in front matter, `_data/authors.yml`, or site config
