<script>
  export let welcome
</script>

<style>
  	.header-container { 
		position: fixed;
    width: 100%;
    top: 0;
    left: 0;
    height: 5vh;
    display: flex;
    justify-content: center;
    align-items: center;
    color: red;
	}

  .title {
    text-shadow: 1px 1px 2px black, 0 0 25px red, 0 0 5px darkred;
  }


	@media (min-width: 640px) {
	
	}

  @media (max-width: 640px) {
    h1 {
      font-size: 14px;
    }
  }
</style>

<div class="header-container">
  <h1 class="title">{welcome}</h1>
</div>
