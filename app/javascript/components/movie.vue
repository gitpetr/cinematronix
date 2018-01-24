<template>
  <div id="app1">
    <h1>Movie {{movie.title}}</h1>
    <p>{{movie.description}}</p>

  </div>
</template>

<script>
import MovieService from '../services/movie.service.js'

export default {
  data: function () {
    return {
      movies: MovieService.fetch()
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
  list-style-type: none;
}
</style>
