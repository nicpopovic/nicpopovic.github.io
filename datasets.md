---
layout: default
title: Datasets
---

<div class="demo-list">
    {% for publication in site.data.publications %}
    {% if publication.datasets %}
    {% for dataset in publication.datasets %}
    <section class="demo-item">
        <h2>{{ dataset.title }}</h2>
        <p>{{ dataset.description }}</p>
        <p class="demo-meta">
            Related paper:
            <a href="{{ dataset.paper_link }}">{{ publication.title }}</a>
        </p>
        <iframe
            class="frame demo-frame"
            src="{{ dataset.embed_url }}"
            frameborder="0"
            width="100%"
            height="{{ dataset.embed_height }}"
            data-height-desktop="{{ dataset.embed_height }}"
            data-height-mobile="{{ dataset.mobile_embed_height | default: dataset.embed_height }}"
            title="{{ dataset.title }}"
        ></iframe>
    </section>
    {% endfor %}
    {% endif %}
    {% endfor %}
</div>

<script>
    (function() {
        function adjustDatasetIframes() {
            var iframes = document.querySelectorAll('.demo-frame');
            var isMobile = window.innerWidth <= 452;

            iframes.forEach(function(iframe) {
                var desktopHeight = iframe.dataset.heightDesktop;
                var mobileHeight = iframe.dataset.heightMobile || desktopHeight;
                iframe.style.height = (isMobile ? mobileHeight : desktopHeight) + 'px';
            });
        }

        window.addEventListener('load', adjustDatasetIframes);
        window.addEventListener('resize', adjustDatasetIframes);
    })();
</script>
