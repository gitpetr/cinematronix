<template>
  <div class='container'>
    <movie-item v-for="movie in movies" 
                :movie="movie" 
                :key="movie.id">
    </movie-item>
  </div>
</template>

<script>
  import MovieItem from './movie-item.vue'
  import MovieService from '../../services/movie_service.js'

  export default {
    components: {MovieItem},
    data() {
      return {
        movies: []
      }
    },
    methods: {
      getMovies() {
        this.movies = MovieService.movies
      }
    }, created() {
      this.getMovies()
    }
  }
</script>
