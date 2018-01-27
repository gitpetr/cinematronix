<template>
  <div id="app">
    <div class='container'>
      <movie v-for="movie in resource"  :movie="movie" :key="movie.id"></movie>
    </div>
  </div>
</template>

<script>
  import Movie from '../components/movie.vue'
  import MovieService from '../services/resource.service.js'

  export default {
    components: {Movie},
    data() {
      return {
        resource: [],
        endpoint: 'http://localhost:3000/api/v1/movies'
      }
    },
    methods: {
      getMovies() {
        MovieService.fetch(this)
      }
    }, created() { this.getMovies() }
  }
</script>
