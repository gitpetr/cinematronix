<template>
  <div>
    <h3>Схема зала</h3>
    <table class="hall">
      <tr v-for="nRow in hallrows">
        <td class="nrow">{{nRow}} Ряд</td>
        <char v-bind:nRow="nRow"
              v-bind:hallseats="hallseats"
              v-bind:bookseats="bookseats"
              @setPlace="setPlace">
        </char>
      </tr>
    </table>
  </div>
</template>

<script>
  import MovieService from '../../services/movies.service.js'
  import Char from './booking-char'

  export default {
    components: {Char},
    data() {
      return {
        hallrows: Number,
        hallseats: Number,
        bookseats: [],
        block: true
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
      },
      setPlace(place) {
        this.$emit("setPlace", place)
      }
    },  created() {
          this.hall()
      }
  }
</script>

<style lang="sass">
  .clicked
    color: red
  td
    cursor: pointer
  td.block, td.nrow
    cursor: text
</style>
