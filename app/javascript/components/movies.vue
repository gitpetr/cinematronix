<template>
  <div id="app">
    <div class='container'>
      <movie v-for="movie in movies"  :movie="movie" :key="movie.id"></movie>
    </div>
  </div>
</template>

<script>
  import Movie from '../components/movie.vue'
  import MovieService from '../services/movie.service.js'

  export default {
    components: {Movie},
    data() {
      return {
        movies: '',
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
