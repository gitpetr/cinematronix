<template>
  <div class='container'>
    <h3>Забронировать билет</h3>
    <p>{{movie_session_id}}</p>
    <booking-form :movie_session_id="movie_session_id"></booking-form>
  </div>
</template>

<script>
  import BookingForm from '../../components/booking-app/booking-form'
  import MovieService from '../../services/movies.service.js'

  export default {
    components: {BookingForm},
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
