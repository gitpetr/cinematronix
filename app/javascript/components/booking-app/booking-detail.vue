<template>
  <div class='container'>
    <h1>Билет</h1>
    <div></div>
    <p>Имя: {{booking.name}}</p>
    <p>{{booking.email}}</p>
    <p>{{booking.phone}}</p>
    <p>Ряд: {{row}}</p>
    <p>Место: {{char}}</p>
  </div>
</template>

<script>
  import MovieService from '../../services/movies.service.js'
  export default {
    data() {
      return {
        booking: Object,
      }
    },
    methods: {
      getBooking() {
        this.booking = MovieService.getBookingByID(this)
      }
    }, created() {
      this.getBooking()
    },
    computed: {
      row() {
        return this.booking.seat.split(':')[1]
      },
      char() {
        return this.booking.seat.split(':')[0]
      }
    }
  }
</script>
