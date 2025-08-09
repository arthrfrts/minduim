# Minduim

A charming Jekyll blog theme inspired by the classic Posterous default theme. Named after the Brazilian translation of the _Peanuts_ comic strip, Minduim offers a clean two-column layout with subtle homages to Charlie Brown.

![Minduim Theme Preview](assets/preview.png)

## Features

- **Responsive design**: Clean two-column layout that adapts to all screen sizes
- **Customization**: Easily customize colors and typography
- **SEO-ready**: Built-in support for SEO tags, sitemaps, and feeds
- **Archiving**: Automatic archives for dates and tags
- **Pagination**: Built-in pagination support for blog listings
- **Sidebar widgets**: Custom sidebar widgets using includes
- **Multilingual**: Fully translatable using theme configuration
- **Multiple author support**: Flexible author information system

## Quick Start

### Option 1: Remote Theme (Recommended)

Add to your site's `Gemfile`:

```ruby
gem "jekyll-remote-theme"
```

Add to your `_config.yml`:

```yaml
remote_theme: arthrfrts/minduim@latest

plugins:
  - jekyll-remote-theme
```

Then run:

```bash
bundle install
bundle exec jekyll serve
```

### Option 2: Gem-based Theme

Add to your `Gemfile`:

```ruby
gem "minduim"
```

Add to your `_config.yml`:

```yaml
theme: minduim
```

Then run:

```bash
bundle install
bundle exec jekyll serve
```

## Configuration

Create or update your `_config.yml` with these settings:

```yaml
title: Your Site Title
description: Your site description
tagline: A short tagline

lang: en
logo: /path/to/logo.svg

# Build settings
permalink: "/:year/:month/:day/:title.html"
slug_mode: latin

# Theme settings
minduim:
  date_formats:
    day: "%v"
    month: "%B, %Y" 
    year: "%Y"
  translations:
    jump_to_navigation: "Go to navigation"
    jump_to_content: "Go to content"
    archive_date_title: "Posts from %s"
    archive_tag_title: "Posts with the tag %s"
    post_tagged_with: "Tagged with:"
    blog_pagination_title: "Blog Pagination"
    blog_pagination_next_page: "Older posts"
    blog_pagination_prev_page: "Newer posts"

# Navigation menus
main_menu:
  title: Navigate
  items:
    - label: About
      url: /about/
    - label: Archive
      url: /archive/

footer_menu:
  title: Links
  items:
    - label: RSS Feed
      url: /feed.xml
    - label: JSON Feed
      url: /feed.json
```

## Customization

### Colors and Styling

Create `/assets/css/theme.css` to customize the theme.

Copy the default [theme.css](https://github.com/arthrfrts/minduim/blob/main/assets/css/theme.css), and uncomment and modify the CSS variables you want to change.

This is the ideal place to customize your site, since it's the last stylesheet loaded. Just add your custom styles at the end of the file and it'll overwrite the theme style rules accordingly.

### Sidebar widgets

Create `/_includes/sidebar.html` to add custom widgets. For example:

```liquid
{% assign widget_title = "About Me" %}
{% capture widget_content %}
  <p>Welcome to my blog! I write about web development and design.</p>
{% endcapture %}
{% include widget.html title=widget_title content=widget_content %}

{% assign widget_title = "Recent Posts" %}
{% capture widget_content %}
  <ul>
  {% for post in site.posts limit:5 %}
    <li><a href="{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
  </ul>
{% endcapture %}
{% include widget.html title=widget_title content=widget_content %}
```

This will create two widgets: an about me and a recents posts widget. You can add as many widgets you want!

### Author Information

Set up author information in multiple ways:

**In post front matter:**
```yaml
---
title: My Post
author:
  name: Charlie Brown
  url: https://charliebrown.blog
---
```

**In `_data/authors.yml`:**
```yaml
charlie:
  name: Charlie Brown
  url: https://charliebrown.blog
lucy:
  name: Lucy Van Pelt
  url: https://thedoctoris.online
```

**In `_config.yml`:**
```yaml
author:
  name: Snoopy
  url: https://snoopy.as
```

If no `authors` object is set in any of these places, the post will show the `post.author` value as is.

## Plugins

Minduim adds support for pagination, archives, feeds and SEO tags, so you can configure the settings following these plugins docs:

* [jekyll-paginate](https://jekyllrb.com/docs/pagination/)
* [jekyll-archives](https://github.com/jekyll/jekyll-archives/blob/master/docs/configuration.md)
* [jekyll-feed](https://github.com/jekyll/jekyll-feed?tab=readme-ov-file#usage)
* [jekyll-seo-tag](https://github.com/jekyll/jekyll-seo-tag/blob/master/docs/usage.md)
* [jekyll-sitemap](https://github.com/jekyll/jekyll-sitemap)

Please refer to the full [`_config.yml`](https://github.com/arthrfrts/minduim/blob/main/_config.yml) for the default plugin settings.

## Development

### Local Development

```bash
# Install dependencies
bundle install

# Start development server
bundle exec jekyll serve

# Build for production
bundle exec jekyll build
```

### Project Structure

```
minduim/
├── _layouts/          # Page layouts
├── _includes/         # Reusable components
├── assets/           # CSS, images, and other assets
├── _config.yml       # Site configuration
└── about.md         # Theme documentation
```

## Contributing

Bug reports and pull requests are welcome at [https://github.com/arthrfrts/minduim](https://github.com/arthrfrts/minduim).

Please note that this theme is primarily maintained for my own personal use, so not all feature requests may be implemented. Feel free to fork and customize for your needs!

## License

This theme is available under [MIT License](https://opensource.org/licenses/MIT).
