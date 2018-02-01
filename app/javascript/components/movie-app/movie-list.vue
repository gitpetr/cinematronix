<template>
  <div class="col-8">
    <movie-item v-for="movie in movies"
                :movie="movie"
                :key="movie.id">
    </movie-item>
  </div>
</template>

<script>
  import MovieItem from './movie-item.vue'
  import MovieService from '../../services/movies.service.js'

  export default {
    components: {MovieItem},
    data() {
      return {
        movies: []
      }
    },
    methods: {
      getMovies() {
        MovieService.fetch(this)
      }
    }, created() { this.getMovies() }
  }
</script>
