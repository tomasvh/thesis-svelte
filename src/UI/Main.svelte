<script>
  import { Route } from 'svelte-navigator'
  import About from '../About/About.svelte'
	import BlogList from '../Blog/BlogList.svelte'

  export let mainMessage
  export let aboutMessage
</script>

<style>

  .content {
    position: fixed;
    display: flex;
    flex-direction: column;
    width: 100%;
    top: 10vh;
    left: 0;
    height: 80vh;
    text-align: center;
    color: white;
    overflow-y: scroll;
    scrollbar-width: thin;
    scrollbar-color: var(--thumbBG) var(--scrollbarBG)
  }

  .content::-webkit-scrollbar {
    width: 0.7vw;
  }

  .content::-webkit-scrollbar-track {
    background: var(--scrollbarBG);
}

  .content::-webkit-scrollbar-thumb {
    background-color: var(--thumbBG) ;
    border-radius: 6px;
    border: 3px solid var(--scrollbarBG);
    opacity: 0.2;
  }
  
	@media (min-width: 640px) {
		main {
			max-width: 100%;
		}
	}

  @media (max-width: 640px) {
    .content::-webkit-scrollbar {
    display: none;
    }
	}
</style>

<main class="content">
  <Route path="/">
    <BlogList blogMessage="{mainMessage}" />
  </Route>
  <Route path="/about">
    <About message="{aboutMessage}" />
  </Route>

</main>
