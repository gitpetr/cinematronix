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
    <div class="container">
      <h3>Оставить рецензию</h3>
      <recensio-form :movie_id="movie.id" @recensio="pushRecensio"></recensio-form>
    </div>
    <hr>
    <div class="recensios" v-for="r in recensios">
      <h4>{{r.critic_name}}({{r.critic_email}})</h4>
      <p>
        {{r.body}}
      </p>
      <hr>
    </div>

    <div class="recensios" v-for="r in movie.recensios">
      <h4>{{r.critic_name}}({{r.critic_email}})</h4>
      <p>
        {{r.body}}
      </p>
      <hr>
    </div>
  </div>
</template>

<script type="text/javascript">
import RecensioForm from './recensio-form'
import MovieService from '../../services/movies.service.js'
  export default {
    components: {RecensioForm},
    data() {
      return {
        movie: {},
        recensios: [],
      }
    },
    methods: {
      getMovie() {
        MovieService.getById(this)
      },
        pushRecensio(recensio) {
          this.recensios.push(recensio)
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
