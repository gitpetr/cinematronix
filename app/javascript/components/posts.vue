<template>
  <div id="app">
    <div class='container'>
      <post v-for="post in posts" :post="post" :key="post.id"></post>
    </div>
  </div>
</template>

<script>
  import Post from '../components/post.vue'
  import PostService from '../services/posts.service.js'

  export default {
    components: {Post},
    data() {
      return {
        posts: []
      }
    },
    methods: {
      getPosts() {
        PostService.fetch(this)
      }
    }, created() { this.getPosts() }
  }
</script>
