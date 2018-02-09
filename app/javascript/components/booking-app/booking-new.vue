<template>
  <div class='container'>
    <h3>Забронировать билет</h3>
  <p>{{movie_session_id}}</p>
  </div>
</template>

<script>
  import MovieService from '../../services/movies.service.js'

  export default {
    data() {
      return {
        booking: Object,
        movie_session_id: Number
      }
    },
    methods: {
      getSession() {
        MovieService.getSessionById(this)
      }
    }, created() {
      this.getSession()
    }
  }
</script>
