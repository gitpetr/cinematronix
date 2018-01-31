<template>
  <div id="app">

    <div class='container'>
      <div class="row">
        <div class="col-8">
          <movie v-for="movie in movies" :movie="movie" :key="movie.id" @viewDetails="viewDetails"></movie>
        </div>
        <div class="col-4">
          <detail :moviedetail="moviedetail"></detail>
        </div>
      </div>
    </div>
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
        moviedetail: ""
      }
    },
    methods: {
      getMovies() {
        MovieService.fetch(this)
      },
      viewDetails(movie) {
        this.moviedetail = movie 
      }
    }, created() { this.getMovies() }
  }
</script>
