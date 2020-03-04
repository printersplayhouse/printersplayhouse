---
layout: page
title: Live Music
description: 'Live Music at Printers Playhouse'
category: nights
seo_description: 'Live Music at Printers Playhouse'
nav-menu: true
---

<!-- Main -->
<div id="main" class="alt">



<!-- Intro -->
<section id="intro" style="margin-top:2em;">
	<div class="inner">
		<h1>{{ page.title }}</h1>
    <h4>{{ page.description }}</h4>
	</div>

<!-- About -->	
{% if site.categories.music %}
<div class="innersmall">
	<h2 style="text-transform: capitalize;">Upcoming Shows</h2>
</div>
{% endif %}
<section id="two" class="tiles">
  {% for post in site.categories.music reversed %}
  {% if site.tiles-source == 'posts' and post.archived != true %}
  <article>
    <span class="image">
      <img src="{{ post.image }}" alt="{{ post.image-alt }}" />
    </span>
    <header>
      <h3><a href="{{ post.url  | relative_url }}" class="link">{{ post.title }}</a></h3>
      <h4>{{ post.date | date: "%a, %b %d, %y" }}</h4>
    </header>
  </article>
  {% endif %}
  {% endfor %}
</section>
