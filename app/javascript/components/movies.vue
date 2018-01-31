<template>
  <div id="app">
    <div class='container'>
      <movie v-for="movie in movies" :movie="movie" :key="movie.id" @viewDetails="viewDetails"></movie>
    </div>
 
    <detail :moviedetail="moviedetail" :checktext="checktext"></detail>
  </div>
</template>

<script>
  import Movie from '../components/movie.vue'
  import MovieService from '../services/movies.service.js'
  import Detail from '../components/movie_details.vue'

  export default {
    components: {Movie, Detail},
    data() {
      return {
        movies: [],
        moviedetail: "",
        checktext: "Проверочный текст"
      }
    },
    methods: {
      getMovies() {
        MovieService.fetch(this)
      },
      viewDetails(movie) {
        this.moviedetail = movie 
        alert (this.moviedetail.description)
      }
    }, created() { this.getMovies() }
  }
</script>
