---
layout: page
title: Ukelele Army
description: 'The Printers Ukulele Army meets every Tuesday night at 8 pm and tuition is given if needed, and even instruments are available!'
category: nights
seo_description: 'The Printers Ukulele Army meets every Tuesday night at 8 pm and tuition is given if needed, and even instruments are available!'
nav-menu: false
---

<!-- Main -->
<div id="main" class="alt">



<!-- Intro -->
<section id="intro" class="spotlights" style="margin-top:2em;">
	<div class="inner">
		<h1>{{ page.title }}</h1>
    <h4>{{ page.description }}</h4>
		<p>Bring your favourite music and learn together as a group (or ukulele army!). All abilities welcome.</p>
    <p>Whether you are a novice or virtuoso, come for a strum!  Meet new people and sing and play classic songs from all decades and genres.</p>
    <p>We are already building a great network of artists and musicians locally and nationally, but are always on the lookout for new talent to showcase; either downstairs or in joint promotions upstairs in the theatre. Let us know about you by emailing <a href="mailto:chris@printersplayhouse.co.uk">chris@printersplayhouse.co.uk</a> – and it could be the beginning of a glittering career, or at least a lovely gig at Printers Playhouse!</p>
	</div>
  <div class="row 100% uniform">
    <div class="4u 12u$(medium)">
      <img style="padding:0; width: 100%;" src="/assets/images/ukelele-army--hove-lawns-ladies.jpg" />
    </div>
    <div class="4u 12u$(medium)">
      <img style="padding:0; width: 100%;" src="/assets/images/ukelele-army--wide-shot-whole-group.jpg" />
    </div>
    <div class="4u 12u$(medium)">
      <img style="padding:0; width: 100%;" src="/assets/images/ukelele-army--halloween.jpg" />
    </div>
  </div>
</section>

<!-- About -->	
{% if site.categories.ukelele %}
<div class="innersmall">
	<h2 style="text-transform: capitalize;">Upcoming Events</h2>
</div>
{% endif %}
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
