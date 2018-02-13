<template>
  <div class='container'>
    <h3>Схема зала</h3>

    <table class="hall">
      <tr v-for="nRow in hallrows">
        <td class="seat" v-bind:class="{block: isBooking}" v-for="nSeat in hallseats">{{nSeat}}</td>
        <td>{{nRow}} Ряд</td>
      </tr>
    </table>

  </div>
</template>

<script>
  import MovieService from '../../services/movies.service.js'

  export default {
    data() {
      return {
        hallrows: Number,
        hallseats: Number,
        bookseats: [],
        block: true
      }
    },
    computed: {
        isBooking() {
            // return true if bookseats.includes(`${nRow}:${nSeat}`)
            return false
        }
    },
    methods: {
      hall() {
        let bookseats = []
        const movie_session_id = this.$route.params.movie_session_id
        const endpoint = `http://localhost:3000/api/v1/moviesession/${movie_session_id}`
        this.$http.get(endpoint).then(response => {
          const{hall, bookings} = response.body
          const{rows, seats} = hall
          this.hallrows = rows
          this.hallseats = seats
        bookings.map(function(booking) {
          bookseats.push(booking.seat)
        })
        this.bookseats = bookseats.slice()
        }, response => {
          console.log('ошибка')
        });
      }
    },  created() {
          this.hall() 
      }
  }
</script>

<style lang="sass">
 
</style>
