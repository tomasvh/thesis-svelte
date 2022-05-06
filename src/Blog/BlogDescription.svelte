<script>
  export let descriptionLines = []

</script>
<p>
  {#each descriptionLines as line}
    {line} <br>
  {/each}
</p>
