<template>
  <div class='container'>
    <h1>Билет</h1>
    <div>
      <p>Имя: {{booking.name}}</p>
      <p>{{booking.email}}</p>
      <p>{{booking.phone}}</p>
      <p> Билеты "ряд:место": 
        [ <span v-for="place in places">{{place}} </span>]
      </p>
 
    </div>
  </div>
</template>

<script>
  import MovieService from '../../services/movies.service.js'
  export default {
    data() {
      return {
        booking: Object,
        places: []
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
        return this.booking.seat.split(':')[0]
      },
      char() {
        return this.booking.seat.split(':')[1]
      }
    }
  }
</script>
