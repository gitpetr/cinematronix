<template>
  <div id="app">
      <div class='container'>
        <div v-for="(movie) in movies" :key="movie.id" class="onemovie">
            <img :src='movie.image' class="img-fluid clearfix center-block" />
            <p>Movie {{movie.title}} </p>
        </div>
      </div>
  </div>
</template>

<script>
import Movie from '../components/movie.vue'
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
  font-size: 1.1rem;
  text-align: center;
}
li {
  list-style-type: none;
  color: #292C33;
}
.onemovie {
  width: 200px;
  height: 300px;
  float: left;
}
.img-fluid {
  max-width: 100%;
  min-height: 90%;
  height: auto;
}
 
.clearfix:after {
  clear: both;
}
</style>
