---
layout: default
title: Welcome
---

<div class="welcome-container">
    <div class="round-image-container">
        <img src="/images/me_web.png" alt="Portrait" class="round-image">
    </div>

    <div class="welcome-text">
        <p>Hi, my name is <strong>Nicholas Popovič</strong>.</p>
        <p>
            I am a fourth-year PhD student in the 
            <a href="https://aifb.kit.edu/web/Web_Science" target="_blank" rel="noopener noreferrer">Web Science group</a> 
            at the <a href="https://www.kit.edu/" target="_blank" rel="noopener noreferrer">Karlsruhe Institute of Technology</a>, 
            Germany, advised by 
            <a href="https://sites.google.com/view/michaelfaerber/" target="_blank" rel="noopener noreferrer">Michael Färber</a>.
        </p>
        <p>
            My research focuses on natural language processing and machine learning, particularly on 
            representation learning for information extraction.
        </p>
        <p>
            You can contact me via 
            <a href="mailto:popovic@kit.edu">email</a>, 
            <a href="https://www.linkedin.com/in/nicholas-popovic-a585a5243" target="_blank" rel="noopener noreferrer">LinkedIn</a>, 
            <a href="https://twitter.com/nicpopovic" target="_blank" rel="noopener noreferrer">Twitter</a>, 
            <a href="https://bsky.app/profile/nicpopovic.bsky.social" target="_blank" rel="noopener noreferrer">Bluesky</a>,
            <a href="https://scholar.google.de/citations?user=b0Q3-DoAAAAJ" target="_blank" rel="noopener noreferrer">Google Scholar</a>, or 
            <a href="https://github.com/nicpopovic" target="_blank" rel="noopener noreferrer">GitHub</a>.
        </p>
    </div>
</div>

<br>

## News

<div class="news">
    <div class="table-responsive p-0">
        <table class="table table-sm table-borderless">
            {% for news_item in site.data.news %}
            <tr>
                <th scope="row" style="width: 20%">{{ news_item.date }}</th>
                <td>
                    {% if news_item.link %}
                    <a href="{{ news_item.link }}">{{ news_item.title }}</a>
                    {{ news_item.text }}
                    {% else %}
                    {{ news_item.text }}
                    {% endif %}
                </td>
            </tr>
            {% endfor %}
        </table>
    </div>
</div>

<br>

<h2 id="publicationsHeader">Selected Publications</h2>

<span id="headerToggle" style="cursor: pointer; color: rgba(var(--bs-link-color-rgb),var(--bs-link-opacity,1));">(show all)</span>

<div id="publicationsContainer">
    <ul class="list-group-flush p-0">
        {% for publication in site.data.publications %}
        <li class="list-group-item publication 
            {% if publication.spotlight == false %}hidden{% endif %} 
            {% if publication.spotlight == true %}spotlight align-items-stretch{% endif %}">
            {% if publication.spotlight %}
            <a href="{% if publication.link %}{{ publication.link }}{% else %}{{ publication.pdf_link }}{% endif %}" target="_blank" rel="noopener noreferrer">
                <img src="{{ publication.image }}" alt="Publication Image" class="spotlight-img">
            </a>
            {% endif %}
            <div>
                <span class="paper-title">
                    <a href="{% if publication.link %}{{ publication.link }}{% else %}{{ publication.pdf_link }}{% endif %}">{{ publication.title }}</a>
                </span>
                {{ publication.authors }}
                <span class="paper-venue">{{ publication.venue }}, {{ publication.year }},
                    <a href="{{ publication.pdf_link }}" target="_blank" rel="noopener noreferrer">[PDF]</a>{% if publication.video_link %}, <a href="{{ publication.video_link }}" target="_blank" rel="noopener noreferrer">[VIDEO]</a>{% endif %}{% if publication.code_link %}, <a href="{{ publication.code_link }}" target="_blank" rel="noopener noreferrer">[CODE]</a>{% endif %}{% if publication.demo_link %}, <a href="{{ publication.demo_link }}" target="_blank" rel="noopener noreferrer">[DEMO]</a>{% endif %}{% if publication.post_link %}, <a href="{{ publication.post_link }}">[BLOG]</a>{% endif %}{% if publication.link %}, <a href="{{ publication.link }}">[WEBSITE]</a>{% endif %}
                </span>
            </div>
        </li>
        {% endfor %}
    </ul>
</div>

<script>
    document.getElementById("headerToggle").onclick = function() {
        const nonSpotlightPublications = document.querySelectorAll(".publication.hidden");
        const header = document.getElementById("publicationsHeader");

        if (nonSpotlightPublications.length > 0) {
            nonSpotlightPublications.forEach(pub => pub.classList.remove("hidden"));
            header.textContent = "Publications";
            this.textContent = "(show only selection)";
            document.querySelectorAll('.spotlight-img').forEach(img => img.style.display = 'none');
        } else {
            document.querySelectorAll(".publication").forEach(pub => {
                if (!pub.classList.contains("spotlight")) {
                    pub.classList.add("hidden");
                }
            });
            header.textContent = "Selected Publications";
            this.textContent = "(show all)";
            document.querySelectorAll('.spotlight-img').forEach(img => img.style.display = 'inline-block');
        }
    };
</script>
