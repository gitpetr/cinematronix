<template>
  <div>
    <div class="row">
      <div class="col-6">
        <div class="movie-image"><img :src='movie.imagemedium' class="img-fluid clearfix center-block"/></div>
      </div>

      <div class="col-6">
        <h3>{{movie.title}}</h3>
        <p>{{movie.description}} </p>
      </div>
    </div>
  </div>
</template>

<script type="text/javascript">
import MovieService from '../../services/movies.service.js'
  export default {
    data() {
      return {
        movie: {}
      }
    },
    methods: {
      getMovie() {
        MovieService.getById(this)
      }
    }, created() { this.getMovie() }
  }
</script>

<style scoped>
.movie-image {
  paddin: 0;
}

.img-fluid {
  max-width: 100%;
  height: auto;
}

.clearfix:after {
  clear: both;
}
</style>
