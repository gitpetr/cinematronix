<template>
  <div>
    <form>
      <input type="hidden" v-model="booking.movie_session_id = movie_session_id"/>
      <input type="hidden" v-model="booking.seat = comp_seat"/>

      <div class="form-group">
        <label for="name">ФИО</label><br/>
        <input type="text" v-model="booking.name" id="name"><br/>
      </div>
      <div class="form-group">
        <label for="email">Email</label><br/>
        <input type="email" v-model="booking.email" id="email"><br/>
      </div>
      <div class="form-group">
        <label for="phone">Телефон</label><br/>
        <input type="text" v-model="booking.phone" id="phone"><br/>
      </div>
      <div class="form-group">
        <label for="row">Ряд</label><br/>
        <input type="text" v-model="booking.row" id="row"/>
      </div>
      <div class="form-group">
        <label for="char">Место</label><br/>
        <input type="text" v-model="booking.char" id="char"/><br/>
      </div>
      <div class="form-group">
        <button v-on:click="postBooking()" class="btn btn-default">Сохранить</button>
      </div>
    </form>
    <div>
      <router-link :to="'/booking/'+ myBooking.id">
        <button>Посмотреть</button>
      </router-link>
    </div>
  </div>
</template>

<script>
  import MovieService from '../../services/movies.service.js'
  export default {
    props: ["movie_session_id"],
    data() {
      return {
        booking: {
          movie_session_id: '',
          name: '',
          email: '',
          phone: '',
          row: '',
          char: '',
          seat: ''
        },
        myBooking: Object
      }
    },
    computed: {
      comp_seat: function() {
        return (this.booking.char + ':' + this.booking.row)
      }
    },
    methods: {
      postBooking() {
        MovieService.postBooking(this)
        this.getBooking()
      },
      getBooking() {
        MovieService.getBooking(this)
      }
    }
  }
</script>


