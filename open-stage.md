---
layout: page
title: Open Stage Night
description: 'The best open mic in Eastbourne. Every Wednesday. Free entry and first act from 8pm. Doors open 5pm.'
category: nights
seo_description: 'The best open mic in Eastbourne. Every Wednesday. Free entry and first act from 8pm. Doors open 5pm.'
nav-menu: true
---

<!-- Main -->
<div id="main" class="alt">



<!-- Intro -->
<section id="intro" class="spotlights" style="margin-top:2em;">
	<div class="inner">
		<h1>{{ page.title }}</h1>
    <h4>{{ page.description }}</h4>
    <p>All musicians welcome! All poets welcome! All storytellers welcome! All comedians welcome!</p>
    <p>Have we missed anyone? Basically anyone who needs a mic to express their art – come along! The evening is hosted by Steve Carville of the band No Such Thing. Steve is supported by a wonderful group of musiciains who regularly take to the stage to support anyone that needs percussion, bass or guitar accompaniment.</p>
    <p>Each and every act is recorded live on video by the talented John Sovcom - you'll find uploads from each week on his <a href="https://www.youtube.com/channel/UCm4h53G3SOpeEGazYPE4Keg">YouTube channel</a>.</p>
    <h3>Highlights From The Nights</h3>
    <div class="row 100% uniform" stlye="">
      <div class="6u">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/OVBWsDXn3uI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
      <div class="6u">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/U0Q_6xPfvUg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
    </div>
    <div class="row 100% uniform" stlye="">
      <div class="6u">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/sXO6sZMwl28" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
      <div class="6u">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/CmWAAmHfVrM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
    </div>
	</div>
</section>

<!-- About -->	
{% if site.categories.open-stage %}
<div class="innersmall">
	<h2 style="text-transform: capitalize;">Upcoming Nights</h2>
</div>
{% endif %} 
<section id="two" class="tiles">
  {% for post in site.categories.open-stage reversed %}
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
