<script>
  export let footerMessage
</script>

<style>
  .footer-container {
    position: fixed;
    bottom: 0;
    right: 0;
    left: 0;
    width: 100%;
    display: flex;
    justify-content: center;
    align-content: center;
    height: 10vh;
    color: white;
    border-top: 3px outset lightblue;
  }

  .footer-text {
    text-shadow: 1px 1px 2px black, 0 0 25px red, 0 0 5px darkred;
  }
</style>
<div class="footer-container">
  <h2 class="footer-text">{footerMessage}</h2>
</div>
