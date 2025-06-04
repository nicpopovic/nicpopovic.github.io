---
layout: publication
title: "Embedded Named Entity Recognition using Probing Classifiers"
---

<h2>Demo</h2>

<div class="image-caption">

  <iframe class="frame" src="https://ember.nicpopovic.com/demo/?__fullscreen=true" frameborder="0" width="100%" height="620" style="width: 100%; height: 620px;"></iframe>

  <script>
    function adjustIframeHeight() {
      const iframe = document.querySelector('.frame');
      if (!iframe) {
        setTimeout(adjustIframeHeight, 100);
        return;
      }
      if (window.innerWidth <= 452) {
        iframe.style.height = '730px'; // Set height to 750px for mobile
      } else {
        iframe.style.height = '620px'; // Default height for larger screens
      }
    }

    // Adjust iframe height on load and when the window is resized
    window.onload = adjustIframeHeight;
    window.onresize = adjustIframeHeight;
  </script>
    <span class="caption">Interactive demo of EMBER applied in a chatbot setting. The demo is running the model meta-llama/Llama-3.2-1B.</span>
</div>
