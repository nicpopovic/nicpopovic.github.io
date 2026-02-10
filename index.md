---
layout: default
title: Welcome
---

<div class="welcome-container">
    <div class="round-image-container">
        <img src="/images/me_web.png" alt="Portrait" class="round-image">
        <a class="thought-bubble" id="thoughtBubble" href="#">
            <span class="thought-venue" id="thoughtVenue"></span>
            <span class="thought-year" id="thoughtYear"></span>
            <span id="thoughtText"></span>
        </a>
    </div>

    <div class="welcome-text">
        <p>Hi, my name is <strong>Nicholas Popovič</strong>.</p>
        <p>
            I am a final-year PhD student in <a href="https://sites.google.com/view/michaelfaerber/" target="_blank" rel="noopener noreferrer">Michael Färber</a>'s group at <a href="https://tu-dresden.de" target="_blank" rel="noopener noreferrer">TU Dresden</a> & <a href="https://scads.ai" target="_blank" rel="noopener noreferrer">ScaDs.AI</a>.
            Prior to that I was a member of the <a href="https://aifb.kit.edu/web/Web_Science" target="_blank" rel="noopener noreferrer">Web Science group</a> at <a href="https://www.kit.edu/" target="_blank" rel="noopener noreferrer">Karlsruhe Institute of Technology</a>.
        </p>
        <p>
            My research focuses on natural language processing and machine learning, particularly on 
            representation learning for information extraction.
        </p>
        <p>
            You can contact me via 
            <a href="mailto:nicholas.popovic@tu-dresden.de">email</a>, 
            <a href="https://www.linkedin.com/in/nicholas-popovič-a585a5243/" target="_blank" rel="noopener noreferrer">LinkedIn</a>, 
            <a href="https://twitter.com/nicpopovic" target="_blank" rel="noopener noreferrer">Twitter</a>, 
            <a href="https://bsky.app/profile/nicpopovic.com" target="_blank" rel="noopener noreferrer">Bluesky</a>,
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
                <th scope="row" style="width: 20%;font-family: monospace;">{{ news_item.date }}</th>
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

<h2 id="publicationsHeader">spotlight</h2>

<div id="publicationsContainer">
    <ul class="list-group-flush p-0">
        {% for publication in site.data.publications %}
        {% if publication.spotlight == true %}
        <li class="list-group-item publication spotlight align-items-stretch">
            <a href="{% if publication.link %}{{ publication.link }}{% else %}{{ publication.pdf_link }}{% endif %}" target="_blank" rel="noopener noreferrer">
                <img src="{{ publication.image }}" alt="Publication Image" class="spotlight-img">
            </a>
            <div>
                <span class="paper-title">
                    <a href="{% if publication.link %}{{ publication.link }}{% else %}{{ publication.pdf_link }}{% endif %}">{{ publication.title }}</a>
                </span>
                {{ publication.authors }}
                <span class="paper-venue">{{ publication.venue }}, {{ publication.year }},
                    <a href="{{ publication.pdf_link }}" target="_blank" rel="noopener noreferrer">[PDF]</a>{% if publication.code_link %}, <a href="{{ publication.code_link }}" target="_blank" rel="noopener noreferrer">[CODE]</a>{% endif %}{% if publication.demo_link %}, <a href="{{ publication.demo_link }}" target="_blank" rel="noopener noreferrer">[DEMO]</a>{% endif %}{% if publication.post_link %}, <a href="{{ publication.post_link }}">[BLOG]</a>{% endif %}{% if publication.link %}, <a href="{{ publication.link }}">[WEBSITE]</a>{% endif %}
                </span>
            </div>
        </li>
        {% endif %}
        {% endfor %}
    </ul>
</div>

<h2 id="publicationsHeader">publications</h2>

<div id="publicationsContainer">
    <div class="ai-slop-warning">
        <img src="/images/me_web.png" alt="Nicholas" class="ai-slop-avatar">
        <div class="ai-slop-bubble">
            The short summaries you see below were generated using Claude Opus 4.6. They might not be 100% accurate. Please take with a huge grain of salt :)
        </div>
    </div>
    <ul class="list-group-flush p-0">
        {% for publication in site.data.publications %}
        <li class="list-group-item publication">
            <div class="publication-row">
                <div class="publication-content">
                    <span class="paper-title">
                        <a href="{% if publication.link %}{{ publication.link }}{% else %}{{ publication.pdf_link }}{% endif %}">{% if publication.spotlight == true %}⭐️ {% endif %}{{ publication.title }}</a>
                    </span>
                    {{ publication.authors }}
                    <span class="paper-venue">{{ publication.venue }}, {{ publication.year }},
                        <a href="{{ publication.pdf_link }}" target="_blank" rel="noopener noreferrer">[PDF]</a>{% if publication.code_link %}, <a href="{{ publication.code_link }}" target="_blank" rel="noopener noreferrer">[CODE]</a>{% endif %}{% if publication.demo_link %}, <a href="{{ publication.demo_link }}" target="_blank" rel="noopener noreferrer">[DEMO]</a>{% endif %}{% if publication.post_link %}, <a href="{{ publication.post_link }}">[BLOG]</a>{% endif %}{% if publication.link %}, <a href="{{ publication.link }}">[WEBSITE]</a>{% endif %}
                    </span>
                </div>
                {% if publication.ai_summary %}
                <div class="ai-summary"><span class="ai-summary-label">AI-generated summary</span>{{ publication.ai_summary | replace: "💡", "<br>💡" }}</div>
                {% endif %}
            </div>
        </li>
        {% endfor %}
    </ul>
</div>

<script>
(function() {
    const items = [
        {% for publication in site.data.publications %}
        {% if publication.research_question %}
        { question: "{{ publication.research_question }}", year: "{{ publication.year }}", venue: "{% if publication.short_venue %}{{ publication.short_venue }}{% else %}{{ publication.venue }}{% endif %}", link: "{% if publication.link %}{{ publication.link }}{% else %}{{ publication.pdf_link }}{% endif %}" },
        {% endif %}
        {% endfor %}
    ];

    // Fisher-Yates shuffle
    for (let i = items.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [items[i], items[j]] = [items[j], items[i]];
    }

    const thoughtBubble = document.getElementById('thoughtBubble');
    const thoughtText = document.getElementById('thoughtText');
    const thoughtYear = document.getElementById('thoughtYear');
    const thoughtVenue = document.getElementById('thoughtVenue');
    let currentIndex = 0;

    function updateDisplay(item) {
        thoughtText.textContent = item.question;
        thoughtYear.textContent = item.year;
        thoughtVenue.textContent = item.venue;
        thoughtBubble.href = item.link;
    }

    function showNextQuestion() {
        thoughtText.style.opacity = 0;
        thoughtYear.style.opacity = 0;
        thoughtVenue.style.opacity = 0;
        setTimeout(() => {
            currentIndex = (currentIndex + 1) % items.length;
            updateDisplay(items[currentIndex]);
            thoughtText.style.opacity = 1;
            thoughtYear.style.opacity = 1;
            thoughtVenue.style.opacity = 1;
        }, 300);
    }

    setTimeout(() => {
        // Set initial content before showing
        updateDisplay(items[currentIndex]);
        thoughtText.style.opacity = 1;
        thoughtYear.style.opacity = 1;
        thoughtVenue.style.opacity = 1;

        // Then animate in
        thoughtBubble.classList.add('visible');
        setInterval(showNextQuestion, 10000);
    }, 5000);
})();
</script>
