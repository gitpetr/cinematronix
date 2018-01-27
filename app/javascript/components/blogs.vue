<template>
  <div id="app">
    <div class='container'>
      <post v-for="post in posts"  :post="post" :key="post.id"></post>
    </div>
  </div>
</template>

<script>
  import Post from '../components/post.vue'
  import BlogService from '../services/blog.service.js'

  export default {
    components: {Post},
    data() {
      return {
        posts: '',
        endpoint: 'http://localhost:3000/api/v1/blogs'
      }
    },
    methods: {
      getMovies() {
        BlogService.fetch(this)
      }
    }, created() { this.getMovies() }
  }
</script>
