<template>
  <div id="app">
    <div class='container'>
      <movie v-for="movie in movies"  :movie="movie" :movie_id="movie_id" :key="movie.id" @viewDetails="viewDetails"></movie>
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
        movies: [],
        movie_id: ""
      }
    },
    methods: {
      getMovies() {
        MovieService.fetch(this)
      },
      viewDetails(movie) {
        this.movie_id = movie.id
        alert(movie.description);
      }
    }, created() { this.getMovies() }
  }
</script>
