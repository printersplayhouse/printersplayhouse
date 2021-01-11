---
layout: page
title: Workshops and Training
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
		<h1>Workshops and Training</h1>
    <p>We have a broad range of high quality workshops and training opportunities for actors and performers of all experience levels. Sign up to learn from our inspiring team of professional theatre directors, writers and actors, or join a group to read and discuss theatre and scene scripts. </p>
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
  <div class="box">
    <p>Due to our COVID measures bookings can be made by contacting: info@printersplayhouse.co.uk  as all events and workshops are in pre-booked ‘bubbles’ for the safety of audience, participants and staff team alike.</p>
  </div>
</section>

<!-- About -->	
{% if site.categories.workshops %}
<div class="innersmall">
	<h2 style="text-transform: capitalize;">Upcoming Shows</h2>
</div>
{% endif %}
<section id="two" class="tiles">
  {% for post in site.categories.workshops reversed %}
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
