<template>
  <div>
    <div class="zall">
      <h3>Схема зала</h3>
      <table class="zall" v-html="hallmap"></table>
      <h4>Забронированные места</h4>
      <span v-for="seat in bookingseats">{{seat}} </span>
    </div>

    <div v-if="showForm">
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
    </div>

    <div v-else>
      <div>
        <p>Имя: {{booking.name}}</p>
        <p>{{booking.email}}</p>
        <p>{{booking.phone}}</p>
        <p>Ряд: {{booking.row}}</p>
        <p>Место: {{booking.char}}</p>
      </div>
      <router-link :to="'/booking/'+ id">
        <button>распечатать</button>
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
        id: Number,
        showForm: true,
        hallmap: '',
        bookingseats: []
      }
    },
    computed: {
      comp_seat: function() {
        return (this.booking.row + ':' + this.booking.char)
      }
    },
    methods: {
      bookingSeats() {
        MovieService.bookingSeats(this)
      },
      postBooking() {
        MovieService.postBooking(this)
        this.showForm = false
      },
      createHall() {
        MovieService.createHall(this)
      }
    }, created() {
      this.bookingSeats()
      this.createHall()
    }
  }
</script>

<style>
.zall tr {
  background-color: #F7FFDB;
}
td.seat {
  background-size: 25px 40px;
  background-repeat: no-repeat;
  background-position: center;
  color: #fff;
  text-align: center;
  height: 35px;
  width: 25px;
  margin-right: 5px;
  margin-bottom: 5px;
  font: 12px bold;
}
</style>
