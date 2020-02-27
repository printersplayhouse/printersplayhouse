---
layout: page
title: PPH Community Choir
description: 'Runs every Monday (7pm – 8.30pm) & Friday (10.30am – 12pm). £6 per session.'
category: nights
seo_description: 'Come along and sing with our friendly community choir! Everyone welcome – no audition required. Led by experienced singing teacher Viv Berry.'
nav-menu: true
---

<!-- Main -->
<div id="main" class="alt">

<!-- Intro -->
<section id="intro" class="spotlights" style="margin-top:2em;">
	<div class="inner">
		<h1>{{ page.title }}</h1>
    <h4>{{ page.description }}</h4>
    <p>Everyone is welcome – no audition or prior experience is required. The choir is led by experienced singing teacher Viv Berry. Come along and sing with our friendly community choir.</p>
	</div>
  <div class="row 100% uniform" stlye="">
    <div class="4u 12u$(medium)">
      <img style="padding:0; width: 100%;" src="/assets/images/pph-community-choir--man-wearing-tshirt-with-logo.jpg" />
    </div>
    <div class="4u 12u$(medium)">
      <img style="padding:0; width: 100%;" src="/assets/images/pph-community-choir--group-of-choir-on-stage.jpg" />
    </div>
    <div class="4u 12u$(medium)">
      <img style="padding:0; width: 100%;" src="/assets/images/default--pph-choir.jpg" />
    </div>
  </div>
</section>

<!-- About -->	
{% if site.categories.choir %}
<div class="innersmall">
	<h2 style="text-transform: capitalize;">Upcoming Choir Events</h2>
</div>
{% endif %}
<section id="two" class="tiles">
  {% for post in site.categories.choir reversed %}
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
