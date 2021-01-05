---
layout: page
title: Youth Theatre
description: 'If you are aged 6 to 18 and looking for an opportunity to get involved in theatre and performance, to learn new skills or develop existing ones then Printers Pintsized and the Printers Youth Theatre may be the perfect solution.'
category: get-involved
seo_description: 'If you are aged 6 to 18 and looking for an opportunity to get involved in theatre and performance, to learn new skills or develop existing ones then Printers Pintsized and the Printers Youth Theatre may be the perfect solution.'
nav-menu: false
---

<!-- Main -->
<div id="main" class="alt">



<!-- Intro -->
<section id="intro" style="margin-top:2em;">
	<div class="inner">
		<h1>{{ page.title }}</h1>
    <h4>{{ page.description }}</h4>
		<p>Within weekly workshops on Wednesdays in term time, our youth groups work on new scripts, existing work, and even devise their own pieces – not to be missed!</p>
	</div>
  <div class="row 100% uniform">
    <div class="4u 12u$(medium)">
      <img style="padding:0; width: 100%;" src="/assets/images/youth-theatre--fighting-animals.jpg" />
    </div>
    <div class="4u 12u$(medium)">
      <img style="padding:0; width: 100%;" src="/assets/images/youth-theatre--get-involved.jpg" />
    </div>
    <div class="4u 12u$(medium)">
      <img style="padding:0; width: 100%;" src="/assets/images/youth-theatre--young-boy-pointing.jpg" />
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
