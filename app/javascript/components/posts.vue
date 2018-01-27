<template>
  <div id="app">
    <div class='container'>
      <post v-for="post in resource"  :post="post" :key="post.id"></post>
    </div>
  </div>
</template>

<script>
  import Post from '../components/post.vue'
  import PostService from '../services/resource.service.js'

  export default {
    components: {Post},
    data() {
      return {
        resource: [],
        endpoint: 'http://localhost:3000/api/v1/posts'
      }
    },
    methods: {
      getPosts() {
        PostService.fetch(this)
      }
    }, created() { this.getPosts() }
  }
</script>
