---
layout: page
title: Ukelele Army
description: 'The world-famous Ukelele Army'
category: home
seo_description: 'One of the top cover bands in Sussex playing an eclectic, electric playlist from five decades of rock, pop, funk and blues. Find out more about the band.'
nav-menu: true
---

<!-- Main -->
<div id="main" class="alt">



<!-- Intro -->
<section id="intro" class="spotlights" style="margin-top:2em;">
	<div class="inner">
		<h2>{{ page.title }}</h2>
    <h4>{{ page.description }}</h4>
		<p>A short description of the night</p>
	</div>
</section>

<!-- About -->	
<div class="innersmall">
	<h3 style="text-transform: capitalize;">Upcoming Shows</h3>
</div>
<section id="two" class="tiles">
  {% for post in site.categories.ukelele reversed %}
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
