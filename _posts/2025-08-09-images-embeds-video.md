---
layout: post
date: "2025-08-09 09:15:00 -0300"
title: Media and embeds
author: lucy
tags:
  - media
  - design
  - interactive
  - photography
---

Let's test how media works in this theme.

Here's a stunning landscape image that should test how the theme handles wide images:

![An image generated randomly](https://picsum.photos/1920/1080)
_This image is randomly-generated._

Different aspect ratios should be handled gracefully:

![Portrait style image](https://picsum.photos/800/1200)

![Square format image](https://picsum.photos/800/800)

![Randomly generated image](https://picsum.photos/1200/800)
_Testing caption style._

## Embeds

This is a YouTube embed:

<iframe width="1920" height="1080" src="https://www.youtube-nocookie.com/embed/a3ICNMQW7Ok" frameborder="0" allow="fullscreen; picture-in-picture" allowfullscreen></iframe>

We should support Vimeo too.

<iframe src="https://player.vimeo.com/video/347119375?title=0&byline=0&portrait=0" frameborder="0" allow="fullscreen; picture-in-picture" allowfullscreen></iframe>

# Audio, video

A sample audio file:

<audio controls>
  <source src="/uploads/audio.mp3" />
  Your browser does not support the audio element.
</audio>

And a sample video file:

<video controls>
  <source src="/uploads/video.mp4" />
  <img src="//picsum.photos/1920/1080" alt="Randomly generated image" />
</video>

## Figure with caption

<figure>
  <img src="https://picsum.photos/1000/600" alt="Randomly generated image" />
  <figcaption>
    <strong>Figure 1:</strong> A randomly-generated image
  </figcaption>
</figure>

Good grief!
