<script>
  export let post
  import BlogDescription from './BlogDescription.svelte'

</script>

<style>
.post-container {
  display: flex;
  flex-direction: column;
  width: 90%;
  padding: 2vw;
  border-radius: 5px;
  justify-content: center;
  align-items: center;
  margin-bottom: 10px;
  box-shadow: 0 0 3px 3px lightblue;
}

.blog-image {
  max-width: 80%;
  border-radius: 5px;
}
</style>

<div class="post-container">
  <p><strong>Id:</strong> {post.id}</p>
  <p><strong>Title:</strong> {post.title}</p>
  <p><strong>Date:</strong> {new Date(post.date)}</p>
  <img class="blog-image" src="{post.image}" alt="{post.title}">
  <BlogDescription descriptionLines="{post.content}" />
</div>
