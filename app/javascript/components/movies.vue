<template>
  <div id="app">
    <div class='container'>
      <movie v-for="movie in movies"  :movie="movie" :key="movie.id" @viewDetails="viewDetails"></movie>
    </div>
  </div>
</template>

<script>
  import Movie from '../components/movie.vue'
  import MovieService from '../services/movies.service.js'

  export default {
    components: {Movie},
    data() {
      return {
        movies: []
      }
    },
    methods: {
      getMovies() {
        MovieService.fetch(this)
      },
      viewDetails(id) {
        alert(id);
      }
    }, created() { this.getMovies() }
  }
</script>
