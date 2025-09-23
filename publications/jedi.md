---
layout: publication
title: "Extractive Fact Decomposition for Interpretable Natural Language Inference in one Forward Pass"
---

<h2>Demo</h2>

<div class="image-caption">

  <iframe class="frame" src="https://jedi.nicpopovic.com/demo/?__fullscreen=true" frameborder="0" width="100%" height="650" style="width: 100%; height: 650px;"></iframe>

  <script>
    function adjustIframeHeight() {
      const iframe = document.querySelector('.frame');
      if (!iframe) {
        setTimeout(adjustIframeHeight, 100);
        return;
      }
      if (window.innerWidth <= 452) {
        iframe.style.height = '850px'; // Set height to 750px for mobile
      } else {
        iframe.style.height = '650px'; // Default height for larger screens
      }
    }

    // Adjust iframe height on load and when the window is resized
    window.onload = adjustIframeHeight;
    window.onresize = adjustIframeHeight;
  </script>
    <span class="caption">Interactive demo of JEDI based on deberta-large.</span>
</div>
