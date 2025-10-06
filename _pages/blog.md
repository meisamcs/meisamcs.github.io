---
layout: default
permalink: /blog/
title: "Readings"
---
<link rel="stylesheet" href="{{ '/assets/css/site-overrides.css?v=4' | relative_url }}">

<style>
/* Hide Cayman header on this page */
footer.site-footer { display: none !important; }
.page-header{display:none!important}
.page-header .project-name,.page-header .project-tagline,.page-header .btn{display:none!important}

/* Layout + typography */
.main-content{max-width:860px;margin:0 auto;padding:0 1rem!important;line-height:1.65}
.main-content,*{overflow-wrap:normal;word-break:normal;hyphens:auto}

/* Sticky nav (same as your other pages — edit labels/URLs as you like) */
.topnav{position:sticky;top:0;z-index:20;display:flex;gap:14px;align-items:center;padding:.6rem 1rem;background:#fff;border-bottom:1px solid #e5e5e5}
.topnav a{text-decoration:none;font-weight:600;color:#1f2328}
.topnav a:hover{text-decoration:underline}
.topnav .active{color:#0366d6}

/* Posts list */
.posts{margin-top:.6rem}
.post-item{margin:.6rem 0;padding:.3rem 0;border-bottom:1px solid #eee}
.post-item:last-child{border-bottom:0}
.post-title{font-weight:700}
.post-meta{font-size:.9rem;color:#666}
</style>

<nav class="topnav">
  <a href="/">Home</a>
  <a href="/research/">Research</a>
  <a href="/teaching/">Teaching</a>
  <a href="/group/">Group</a>
  <a class="active" href="/blog/">Readings</a>
</nav>

<div class="posts">
  {% if site.posts and site.posts != empty %}
    {% for post in site.posts %}
      <div class="post-item">
        <div class="post-title">
          <a href="{{ post.url | relative_url }}">{{ post.title | escape }}</a>
        </div>
        <div class="post-meta">
          {{ post.date | date: "%B %d, %Y" }}
          {% if post.author %} · {{ post.author }}{% endif %}
        </div>
        {% if post.excerpt %}
          <div class="post-excerpt">{{ post.excerpt | strip_html | truncate: 200 }}</div>
        {% endif %}
      </div>
    {% endfor %}
  {% else %}
    <p>No posts yet. Add Markdown files under <code>_posts/</code> in the format <code>YYYY-MM-DD-title.md</code>.</p>
  {% endif %}
</div>
