<template>
  <div id="app">
    <div class='container'>
      <blog v-for="blog in blogs"  :blog="blog" :key="blog.id"></blog>
    </div>
  </div>
</template>

<script>
  import Blog from '../components/blog.vue'
  import BlogService from '../services/blog.service.js'

  export default {
    components: {Blog},
    data() {
      return {
        blogs: '',
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
