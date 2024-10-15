---
layout: default
title: Blog
permalink: /blog/
---

<div class="welcome-container">
    <img src="/images/genquarterly.jpg" class="round-image" alt='flux.schnell prompt: a coffee cup next to a newspaper in a moody library. the newspaper is titled "generated quarterly"' style="margin: auto;">
    <blockquote class="blockquote text-center">
</blockquote>
</div>
<br>

## Posts

*Nothing to see here yet...*
<ul class="list-group list-group-flush">
  {% for post in site.posts %}
    <li class="list-group-item blog-list-item">
      <a href="{{ post.url }}"><img src="{{ post.image }}" alt="Publication Image" class="blog-list-img"></a>
      <div>
          <div class="justify-content-between blog-item-title">
        <a href="{{ post.url }}" class="title">{{ post.title }}</a>
        <div class="date">{{ post.date | date: "%B %d, %Y" }}</div></div>
        <p>{{ post.subtitle }}</p>
      </div>
    </li>
  {% endfor %}
</ul>
