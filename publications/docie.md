---
layout: publication
title: "DocIE@XLLM25: In-Context Learning for Information Extraction using Fully Synthetic Demonstrations"
---

<h2>Dataset explorer</h2>

<div class="image-caption">

  <iframe class="frame" src="https://nicpopovic-vital-articles-synth-explorer.hf.space" frameborder="0" width="100%" height="850" style="width: 100%; height: 850px;"></iframe>

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
        iframe.style.height = '850px'; // Default height for larger screens
      }
    }

    // Adjust iframe height on load and when the window is resized
    window.onload = adjustIframeHeight;
    window.onresize = adjustIframeHeight;
  </script>
    <span class="caption">Interactive data viewer.</span>
</div>

<h2>Poster</h2>

<div class="image-caption">
  <img class="frame" src="/images/docie/posterdocie.jpg" alt="DocIE Poster" style="max-width: 100%; height: auto;">
  <span class="caption">DocIE Poster presented at XLLM25.</span>
</div>