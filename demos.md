---
layout: default
title: Demos
---

<div class="demo-list">
    {% for publication in site.data.publications %}
    {% if publication.demos %}
    {% for demo in publication.demos %}
    <section class="demo-item">
        <h2>{{ demo.title }}</h2>
        <p>{{ demo.description }}</p>
        <p class="demo-meta">
            Related paper:
            <a href="{{ demo.paper_link }}">{{ publication.title }}</a>
        </p>
        <iframe
            class="frame demo-frame"
            src="{{ demo.embed_url }}"
            frameborder="0"
            width="100%"
            height="{{ demo.embed_height }}"
            data-height-desktop="{{ demo.embed_height }}"
            data-height-mobile="{{ demo.mobile_embed_height | default: demo.embed_height }}"
            title="{{ demo.title }}"
        ></iframe>
    </section>
    {% endfor %}
    {% endif %}
    {% endfor %}
</div>

<script>
    (function() {
        function adjustDemoIframes() {
            var iframes = document.querySelectorAll('.demo-frame');
            var isMobile = window.innerWidth <= 452;

            iframes.forEach(function(iframe) {
                var desktopHeight = iframe.dataset.heightDesktop;
                var mobileHeight = iframe.dataset.heightMobile || desktopHeight;
                iframe.style.height = (isMobile ? mobileHeight : desktopHeight) + 'px';
            });
        }

        window.addEventListener('load', adjustDemoIframes);
        window.addEventListener('resize', adjustDemoIframes);
    })();
</script>
