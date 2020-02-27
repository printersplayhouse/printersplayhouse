---
layout: page
title: Drama Tuition
description: 'Be introduced to a world where anything is possible'
category: get-involved
seo_description: 'Be introduced to a world where anything is possible.'
nav-menu: false
---

<!-- Main -->
<div id="main" class="alt">



<!-- Intro -->
<section id="intro" style="margin-top:2em;">
	<div class="inner">
		<h1>{{ page.title }}</h1>
    <h4>{{ page.description }}</h4>
		<p>Through a programme of weekly workshops and drop-in sessions, the Printers Playhouse team will introduce you to a world where anything is possible. Including workshops across the arts from acting, to writing, improv, voice, physical theatre, music and crafts, and including individual tuition – we will be increasing our offerings over the coming months to ensure there really is something for everyone.</p>
	</div>
  <div class="row 100% uniform">
    <div class="4u 12u$(medium)">
      <img style="padding:0; width: 100%;" src="/assets/images/theatre--children-acting-period-drama.jpg" />
    </div>
    <div class="4u 12u$(medium)">
      <img style="padding:0; width: 100%;" src="/assets/images/theatre--group-of-players.jpg" />
    </div>
    <div class="4u 12u$(medium)">
      <img style="padding:0; width: 100%;" src="/assets/images/theatre--group-rehearsing.jpg" />
    </div>
  </div>
</section>

<!-- About -->	
{% if site.categories.theatre %}
<div class="innersmall">
	<h2 style="text-transform: capitalize;">Upcoming Shows</h2>
</div>
{% endif %}
<section id="two" class="tiles">
  {% for post in site.categories.theatre reversed %}
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
