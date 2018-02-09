<template>
  <div>
    <div class="row">
      <div class="col-6">
        <div class="movie-image"><img :src='movie.imagemedium' class="img-fluid clearfix center-block"/></div>
      </div>

      <div class="col-6">
        <h3>{{movie.title}}</h3>
        <p>{{movie.description}} </p>
        <h3>Сеансы</h3>
        <p v-for="session in movie.movie_sessions">
          <router-link :to="'/' + session.id + '/booking/new'">
            {{session.time}}
          </router-link>
        </p>
      </div>
    </div>

    <p>
      <br><button v-on:click.once="showForm = true">Оставить рецензию</button>
    </p>
    <div class="container" v-if="showForm">

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
        showForm: false
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
