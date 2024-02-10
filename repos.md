---
layout: page
title: Project Repositories
description: Repository of projects, scripts, templates by asNoCode.
identifer: repopage
permalink: repos/
redirect_from:
  - repositories/
  - projects/
page-level: mainpage
---

<ul class="actions" style="margin-bottom: 5px; padding-bottom: 5px;">
    <li style="height: 18; vertical-align: top;"><a href="https://github.com/asnocode/ansible" style="font-size: small;" class="tag_marker"> <span>github:asnocode/ansible</span></a></li>
    <li><iframe src="https://ghbtns.com/github-btn.html?user=asnocode&repo=ansible&type=star&count=true" frameborder="0" scrolling="0" width="78" height="20" title="GitHub"></iframe><iframe src="https://ghbtns.com/github-btn.html?user=asnocode&repo=ansible&type=watch&count=true&v=2" frameborder="0" scrolling="0" width="88" height="20" title="GitHub"></iframe><iframe src="https://ghbtns.com/github-btn.html?user=asnocode&repo=ansible&type=fork&count=true" frameborder="0" scrolling="0" width="78" height="20" title="GitHub"></iframe></li>
</ul>
<ul class="actions" style="margin-bottom: 5px; padding-bottom: 5px;">
    <li style="height: 18; vertical-align: top;"><a href="https://github.com/asnocode/terraform" style="font-size: small;" class="tag_marker"> <span>github:asnocode/terraform</span></a></li>
    <li><iframe src="https://ghbtns.com/github-btn.html?user=asnocode&repo=terraform&type=star&count=true" frameborder="0" scrolling="0" width="78" height="20" title="GitHub"></iframe><iframe src="https://ghbtns.com/github-btn.html?user=asnocode&repo=terraform&type=watch&count=true&v=2" frameborder="0" scrolling="0" width="88" height="20" title="GitHub"></iframe><iframe src="https://ghbtns.com/github-btn.html?user=asnocode&repo=terraform&type=fork&count=true" frameborder="0" scrolling="0" width="78" height="20" title="GitHub"></iframe></li>
</ul>
<ul class="actions" style="margin-bottom: 5px; padding-bottom: 5px;">
    <li style="height: 18; vertical-align: top;"><a href="https://github.com/asnocode/azure" style="font-size: small;" class="tag_marker"> <span>github:asnocode/azure</span></a></li>
    <li><iframe src="https://ghbtns.com/github-btn.html?user=asnocode&repo=azure&type=star&count=true" frameborder="0" scrolling="0" width="78" height="20" title="GitHub"></iframe><iframe src="https://ghbtns.com/github-btn.html?user=asnocode&repo=azure&type=watch&count=true&v=2" frameborder="0" scrolling="0" width="88" height="20" title="GitHub"></iframe><iframe src="https://ghbtns.com/github-btn.html?user=asnocode&repo=azure&type=fork&count=true" frameborder="0" scrolling="0" width="78" height="20" title="GitHub"></iframe></li>
</ul>
<ul class="actions" style="margin-bottom: 5px; padding-bottom: 5px;">
    <li style="height: 18; vertical-align: top;"><a href="https://github.com/asnocode/automation" style="font-size: small;" class="tag_marker"> <span>github:asnocode/automation</span></a></li>
    <li><iframe src="https://ghbtns.com/github-btn.html?user=asnocode&repo=automation&type=star&count=true" frameborder="0" scrolling="0" width="78" height="20" title="GitHub"></iframe><iframe src="https://ghbtns.com/github-btn.html?user=asnocode&repo=automation&type=watch&count=true&v=2" frameborder="0" scrolling="0" width="88" height="20" title="GitHub"></iframe><iframe src="https://ghbtns.com/github-btn.html?user=asnocode&repo=automation&type=fork&count=true" frameborder="0" scrolling="0" width="78" height="20" title="GitHub"></iframe></li>
</ul>
<ul class="actions" style="margin-top: 0; padding-top: 0;">
    <li style="height: 18; vertical-align: top;"><a style="cursor: text; color: #111;" > <span>Azure DevOps Project (Updated more frequently): </span></a></li>
    <li style="margin-right: 0px; padding-right: 0px;"><a style="margin-right: 0px; padding-right: 0px;" href="https://dev.azure.com/asnocode/AsNoCode" class="tag_btn"><span>dev.azure.com/asnocode/AsNoCode</span></a></li>
</ul>


## Contact/Contribute

Report issues [here](https://github.com/asnocode/asnocode.github.io/issues), or send me an [email](mailto:cloud@asnocode.com?subject=[GitHub]%20asnocode.github.io) to contribute.

<ul class="actions">
<li>Find me on Github: </li>
<li><iframe src="https://ghbtns.com/github-btn.html?user=kristinevog&type=follow&count=true" frameborder="0" scrolling="0" width="170" height="20" title="GitHub"></iframe></li>
</ul>

#### External Repositories

<div  class="posts">
{% for post in site.projects %}
 <article>
    <p><br><a style="color: #999; font-weight: 400;" href="{{ post.url  | absolute_url }}">{{ post.title }}</a></p>
            <a href="{{ post.url  | absolute_url }}" class="image">
                <picture>
                <source data-srcset="{{ post.image-webp | absolute_url }}" type="image/webp" >
                <source data-srcset="{{ post.image | absolute_url }}" type="image/jpeg" > 
                <img src="{{ post.image-thumb | absolute_url }}" alt="{{ post.image-alt }}" data-src="{{ post.image | absolute_url }}"  class="lazyload" />
                </picture> 
                <p style="margin-top: 10px; color: #444444;">{{ post.description }}</p>
            </a>
        </article>
  {% endfor %}
</div>
