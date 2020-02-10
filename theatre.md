---
layout: page
title: Theatre
description: 'Theatre at Printers Playhouse'
category: theatre
seo_description: 'One of the top cover bands in Sussex playing an eclectic, electric playlist from five decades of rock, pop, funk and blues. Find out more about the band.'
nav-menu: true
---

<!-- Main -->
<div id="main" class="alt">



<!-- Intro -->
<section id="intro" class="spotlights" style="margin-top:2em;">
	<div class="inner">
		<h2>Theatre</h2>
		<p>We're energetic 4-piece function band playing an eclectic, electric playlist from more than five decades of party music. Our foot-stomping live act is full of infectious, sing-along melodies and highly dance-able tunes that are guaranteed to get you on the dancefloor.</p>
	</div>
</section>

<!-- About -->	
<div class="innersmall">
	<h3 style="text-transform: capitalize;">Upcoming Shows</h3>
</div>
<section id="two" class="tiles">
  {% for post in site.categories.theatre limit:2 %}
  {% if site.tiles-source == 'posts' and post.archived != true %}
  <article>
    <span class="image">
      <img src="{{ post.image }}" alt="{{ post.image-alt }}" />
    </span>
    <header>
      <h3><a href="{{ post.url  | relative_url }}" class="link">{{ post.title }}</a></h3>
      <h4>{{ post.live-date }}</h4>
    </header>
  </article>
  {% endif %}
  {% endfor %}
</section>
