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
		<h1>Live Music at Printers Playhouse</h1>
    <p>Our fantastic downstairs Stage Bar venue hosts an excellent array of live music, gigs, open mic nights and community music  performances. We also hold all sorts of brilliant ticketed concerts upstairs in our theatre throughout the year.</p>
	</div>
  <div class="box">
    <p>Due to our COVID measures bookings can be made by contacting: info@printersplayhouse.co.uk  as all events and workshops are in pre-booked ‘bubbles’ for the safety of audience, participants and staff team alike.</p>
  </div>
</section>

<!-- About -->	
{% if site.categories.music %}
<div class="innersmall">
	<h2 style="text-transform: capitalize;">Upcoming Shows</h2>
</div>
{% endif %}
<section id="one" class="tiles">
  {% assign sortedRecords = site.data.events.records | where: "fields.category","music" | sort: 'fields.date' %}
  {% for record in sortedRecords %}
  {% if record.fields.publish == true and record.fields.feature == true %}
  <article>
    <span class="image">
      <img src="{{ record.fields.image[0].url }}" />
    </span>
    <header>
      <h3>{{ record.fields.title }}</h3>
      <p>{{ record.fields.date | date: "%R %A %-d %b %Y" }}</p>
    </header>
  </article>
  {% endif %}
  {% endfor %}
</section>

<div class="innersmall">
  <ul class="actions">
    <li><a href="{{ '/events' | absolute_url }}" class="button scrolly special">View all events</a></li>
  </ul>
</div>