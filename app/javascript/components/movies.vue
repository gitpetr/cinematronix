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
    data: function () {
      return {
        movies: MovieService.fetch()
      }
    }
  }
  console.log(Movie)
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
  height: 312px;
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
