---
layout: post
date: "2024-10-15 15:16:42 -0300"
title: HTML Elements
author: arthur
tags:
  - tests
  - markup
---

Below is just about anything we can do with Markdown (and some other basic HTML markup tags).

***

# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6

***

Lorem ipsum dolor sit amet, [test link](https://esporo.net) adipiscing elit. **This is strong.** Nullam dignissim convallis est. Quisque aliquam. _This is emphasized._ Donec faucibus. Nunc iaculis suscipit dui. 5<sup>3</sup> = 125. Water is H<sub>2</sub>O. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. <q>The New York Times</q> (That’s an inline quote). <u>Underline</u>. Maecenas ornare tortor. Donec sed tellus eget sapien fringilla nonummy. Mauris a ante. Suspendisse quam sem, consequat at, commodo vitae, feugiat in, nunc. Morbi imperdiet augue quis tellus.

<abbr title="HyperText Markup Language">HTML</abbr> and <abbr title="Cascading Stylesheet">CSS</abbr> are our tools. Mauris a ante. Suspendisse quam sem, consequat at, commodo vitae, feugiat in, nunc. Morbi imperdiet augue quis tellus. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. To copy a file type <code>COPY filename</code>. ~~Dinner’s at 5:00~~. <ins>Let’s make that 7</ins>. <strike>This text has been struck</strike>.

***

## List Types

### Definition List

<dl>
  <dt>Definition List Title</dt>
  <dd>This is a definition list description.</dd>
  <dt>Definition</dt>
  <dd>An exact statement or description of the nature, scope, or meaning of something: <em>our definition of what constitutes poetry</em>.</dd>
</dl>

### Ordered list

1. List Item 1
2. List Item 2
    1. Nested list item A
    2. Nested list item B
3. List Item 3

### unordered list

* List Item 1
* List Item 2
    * Nested List Item A
    * Nested List Item B
* List Item 3

***

## Table

| Table Header 1 | Table Header 2 | Table Header 3 |
| -------------- | -------------- | -------------- |
| Division 1     | Division 2     | Division 3     |
| Division 1     | Division 2     | Division 3     |
| Division 1     | Division 2     | Division 3     |

***

## Pre-formatted text

Typographically, preformatted text is not the same thing as code. Sometimes, a faithful execution of the text requires preformatted text that may not have anything to do with code.

```
“Beware the Jabberwock, my son!
    The jaws that bite, the claws that catch!
Beware the Jubjub bird, and shun
    The frumious Bandersnatch!”
```

### Code

Code can be presented inline, like `<?php bloginfo('stylesheet_url'); ?>`, or within a `<pre>` block.

```css
#container {
  float: left;
  margin: 0 -240px 0 0;
  width: 100%;
}
```

You can also highlight with the custom `highlight` Liquid tag:

{% highlight ruby linenos %}
def foo
  puts 'foo'
end
{% endhighlight %}

## Blockquotes

Let’s keep it simple.

> Good afternoon, gentlemen. I am a HAL 9000 computer. I became operational at the H.A.L. plant in Urbana, Illinois on the 12th of January 1992. My instructor was Mr. Langley, and he taught me to sing a song. If you’d like to hear it I can sing it for you.
>
> <cite>— HAL 9000</cite>

And here’s a bit of trailing text.
