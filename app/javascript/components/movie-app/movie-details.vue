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

    <div class="container" v-if="showForm">
      <h3>Оставить рецензию</h3>
      <recensio-form :movie_id="movie.id" @recensio="unshiftRecensio"></recensio-form>
    </div>
    <hr>

    <movie-recensios :recensios="recensios"></movie-recensios>
  </div>
</template>

<script type="text/javascript">
import RecensioForm from './recensio-form'
import MovieRecensios from './movie-recensios'
import MovieService from '../../services/movies.service.js'
  export default {
    components: {RecensioForm, MovieRecensios},
    data() {
      return {
        movie: {},
        recensios: [],
        showForm: true
      }
    },
    methods: {
      getMovie() {
        MovieService.getById(this)
      },
        unshiftRecensio(recensio) {
          this.recensios.unshift(recensio)
          this.showForm = false
        },
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
