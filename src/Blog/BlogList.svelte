<script>
import { onMount } from 'svelte'
import Blog from './Blog.svelte'

export let blogMessage
let blogPosts = []

onMount (async () => {
  const response = await fetch('assets/blogs.json')
  blogPosts = await response.json()
})

</script>

<style>

  .container {
    display: flex;
    flex-direction: column;
    color: white;
    width: 60%;
    justify-content: center;
    align-items: center;
    margin: auto;
  }

  @media (max-width: 640px) {
    .container {
      width: 80%;
      font-size: 13px;
    }
  }
</style>

<h3>{blogMessage}</h3> 

<div class="container">
  {#each blogPosts as item}
    <Blog post={item} />
  {/each}
</div>



