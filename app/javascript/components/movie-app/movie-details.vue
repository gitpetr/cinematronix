<template>
  <div>
    <div class="movie-image">
      <img :src='movie.imagemedium' class="img-fluid clearfix center-block"/>
    </div>
    <h3>{{movie.title}}</h3>
    <p>{{movie.description}} </p>
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
</style>
