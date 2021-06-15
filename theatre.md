---
layout: page
title: Theatre
description: 'Theatre at Printers Playhouse'
category: nights
seo_description: 'We aim to bring you new and exciting drama from our inhouse Printers Playhouse theatre company, visiting theatre companies, and our Community and Youth Theatre groups.'
nav-menu: true
---

<!-- Main -->
<div id="main" class="alt">



<!-- Intro -->
<section id="intro" style="margin-top:2em;">
	<div class="inner">
		<h1>{{ page.title }}</h1>
    <h4>{{ page.description }}</h4>
		<p>We aim to bring you new and exciting drama from our inhouse Printers Playhouse theatre company, visiting theatre companies, and our Community and Youth Theatre groups. If you are seeking the best in new theatre in Eastbourne, The Playhouse is the place to go!</p>
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
  <div class="inner">
    <h2>Direct Address</h2>
    <p>A chance for performers to work on and perform monologues and songs to industry standard. 8 actors with 3 two minute pieces working with PPH professional directors to culminate in a showcase performance.</p>
    <p>8 actors. 3, 2 min monologues combining for an hour long performance in the Playhouse.</p>
    <p>Every third Friday of every other month!</p>
    <p>We are already building a great network of artists and musicians locally and nationally, but are always on the lookout for new talent to showcase; either downstairs or in joint promotions upstairs in the theatre. Let us know about you by emailing chris@printersplayhouse.co.uk – and it could be the beginning of a glittering career, or at least a lovely gig at Printers Playhouse!</p>
  </div>
  <div class="box">
    <p>Due to our COVID measures bookings can be made by contacting: info@printersplayhouse.co.uk  as all events and workshops are in pre-booked ‘bubbles’ for the safety of audience, participants and staff team alike.</p>
  </div>
</section>

<!-- About -->	
{% if site.categories.theatre %}
<div class="innersmall">
	<h2 style="text-transform: capitalize;">What's on in the Playhouse?</h2>
</div>
{% endif %}
<section id="one" class="tiles">
  {% for record in site.data.events.records %}
  {% if record.fields.publish == true and record.fields.feature == true and record.fields.category == 'theatre' | sort: record.fields.date %}
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
