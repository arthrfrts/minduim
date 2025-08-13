---
layout: page
title: About this theme
---

_Minduim_ is a charming blog theme for Jekyll. Based on the classic Posterous default theme, _Minduim_ offers a two-column layout and support for pagination, archives and SEO tags.

The theme is named after the translation for the _Peanuts_ comic strip in Brazil, which is also how it was translated the nickname Peppermint Patty calls Charlie Brown. You'll notice some subtle homages to the comic strip in the theme. I hope you appreciate!

## Features

- Make it yours with custom colors, typography and backgrounds.
- Custom sidebar widgets with includes.
- Support for [pagination](https://github.com/jekyll/jekyll-paginate), [sitemap](https://github.com/jekyll/jekyll-sitemap), [SEO tags](https://github.com/jekyll/jekyll-seo-tag) and [archives](https://github.com/jekyll/jekyll-archives) out of the box.
- Translatable using [theme options](#configuration).

## Installation

### As a remote theme

You can use this theme with the [`jekyll-remote-theme`](https://github.com/benbalter/jekyll-remote-theme) plugin.

On your site repo, run:

```bash
$ bundle add jekyll-remote-theme
```

And add the following to your `_config.yml`:

```yaml
remote_theme: arthrfrts/minduim@latest

plugins:
  - jekyll-remote-theme
```

### As a gem-theme

You can also use this theme as a gem-based dependency to your Jekyll site.

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "minduim"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: minduim
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minduim

## Usage

Your theme can be configured using your `_config.yml`. You can also customize the theme, sidebar widgets and site-wide scripts by adding them to your Jekyll setup.

### Configuration

This is an example of a `_config.yml` with all the options available to Bean.

```yaml
title: Your awesome title
description: >-
  Your blog description. It will be shown at the bottom of your website.
tagline: A short-and-sweet tagline.

lang: en
logo: /path/to/your/logo.svg

# Build settings
permalink: "/:year/:month/:day/:title.html"
slug_mode: latin

# Theme Settings
minduim:
  date_formats:
    day: "%v"
    month: "%B, %Y"
    year: "%Y"
  translations:
    jump_to_navigation: "Go to navigation"
    jump_to_content: "Go to content"
    archive_date_title: "Posts from %s" # don't forget `%s`, it will be replaced by the date
    archive_tag_title: "Posts with the tag “%s”" # don't forget `%s`, it will be replaced by the tag name.
    archive_category_title: "Posts filed under “%s”" # don't forget `%s`, it will be replaced by the category name.
    post_tagged_with: "Tagged with:"
    blog_pagination_title: "Blog Pagination"
    blog_pagination_next_page: "Older posts"
    blog_pagination_prev_page: "Newer posts"
  
favicon:
  url: /assets/images/favicon.png
  type: image/png # Optional
# Menus
main_menu:
  title: Navigate
  items:
    - label: About
      url: /about/
    - label: Bugs?
      url: https://github.com/arthrfrts/minduim/issues
      external: true

footer_menu:
  title: Social
  items:
    - label: Feed
      url: /feed.xml
    - label: JSON Feed
      url: /feed.json
    - label: GitHub
      url: https://github.com/arthrfrts/minduim
      external: true
```

#### Plugins

Minduim adds support for pagination, archives, feeds and SEO tags, so you can configure the settings following these plugins docs:

* [jekyll-paginate](https://jekyllrb.com/docs/pagination/)
* [jekyll-archives](https://github.com/jekyll/jekyll-archives/blob/master/docs/configuration.md)
* [jekyll-feed](https://github.com/jekyll/jekyll-feed?tab=readme-ov-file#usage)
* [jekyll-seo-tag](https://github.com/jekyll/jekyll-seo-tag/blob/master/docs/usage.md)
* [jekyll-sitemap](https://github.com/jekyll/jekyll-sitemap)

Please refer to the full [`_config.yml`](https://github.com/arthrfrts/minduim/blob/main/_config.yml) for plugin configurations.

#### Style Options

You can add a `theme.css` in your `/assets/css` directory to customize the style options of your site.

Just copy our [`theme.css`](https://github.com/arthrfrts/minduim/blob/main/assets/css/theme.css) and uncomment the lines of the variables you want to change, and you're good to go.

`theme.css` is also a good place to add custom style rules as well, since it's the last stylesheet called by your theme. It will overwrite any rules set by default.

### Menus

Minduim has two menus available. One at the header and other at the bottom of your site. Both are set up in your `_config.yml`:

```yaml
main_menu:
  title: Navigate
  items:
    - label: About
      url: /about/
    - label: Bugs?
      url: https://github.com/arthrfrts/minduim/issues
      external: true

footer_menu:
  title: Social
  items:
    - label: Feed
      url: /feed.xml
    - label: JSON Feed
      url: /feed.json
    - label: GitHub
      url: https://github.com/arthrfrts/minduim
      external: true
```

A menu title is used by screen reader software. It's strongly recommended that you add one to your menus.

### Sidebar

Your blog sidebar can be customized by adding widgets to your `_includes/sidebar.html`. The theme provides a default layout for widgets.

You can do something like this:

{% raw %}
```liquid
<!-- Your `sidebar.html` -->

{% assign widget_title = "My beautiful widget" %}

{% capture widget_content %}
  <p>This will be shown in my website sidebar! It's useful for a blogroll, useful links, etc.</p>
{% endcapture %}

{% include widget.html title=widget_title content=widget_content %}
```
{% endraw %}

You can as many widgets as you want, just repeat the process above.

The sidebar can be hidden in a page with the `page` layout. Just add it to your front-matter:

```yaml
---
layout: page
title: About
hide_sidebar: true
---
```

### Post authors

Minduim tries to bring up post author information from the following sources:

1. An `author` object in the front-matter of your post:
  ```yaml
  author:
    name: Charlie Brown
    url: https://charliebrown.blog
  ```
2. Your `_data/authors.yml`.
  It may look like this:
  
  ```yaml
  arthur:
    name: Charlie Brown
    url: https://charliebrown.blog
  ```
3. A `site.authors` or `site.author` object in your `_config.yml`.
  Something like this will do:
  
  ```yaml
  authors:
    charlie:
      name: Charlie Brown 
      url: https://charliebrown.blog
    lucy:
      name: Lucy Van Pelt
      url: https://thedoctoris.online

  # or

  author:
    name: Snoopy
    url: "https://snoopy.as"
  ```

If none of these sources are available, Minduim will just show the value of your `post.author` as it is.

### Favicons

You can customize your website favicon by adding a favicon image and adding the following to your `_config.yml`:


```yml
favicon: /path/to/image.format

# OR

favicon:
  url: /path/to/image.format
  type: format/mime_type
```

The `site.favicon.type` parameter is optional.

## Contributing

Bug reports and pull requests are welcome on GitHub at <https://github.com/arthrfrts/minduim/>.

Be aware that, as this theme is intended to be used by my own web site, not every suggestion may be applied. You are free to fork it and change it to fit your needs!

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
