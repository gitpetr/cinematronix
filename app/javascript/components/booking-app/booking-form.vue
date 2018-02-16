<template>
  <div class="container">
    <div class="row">
      <div class="col-3">
        <div v-if="showForm">
          <form>
            <input type="hidden" v-model="booking.movie_session_id = movie_session_id"/>

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
              <p> Билеты "ряд:место": 
              [ <span v-for="seat in booking.seats">{{seat}} </span>]
            </p>
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
             <p> Билеты "ряд:место": 
              [ <span v-for="seat in booking.seats">{{seat}} </span>]
            </p>
          </div>
          <router-link :to="'/booking/'+ id">
            <button>распечатать</button>
          </router-link>
        </div>
      </div>

      <div class="col-9">
        <div class="hall">
          <hall @setPlace="setPlace"></hall>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  import MovieService from '../../services/movies.service.js'
  import Hall from './booking-hall'
  export default {
    components: {Hall},
    props: ["movie_session_id"],
    data() {
      return {
        booking: {
          movie_session_id: '',
          name: '',
          email: '',
          phone: '',
          seats: []
        },
        id: Number,
        showForm: true
      }
    },
    methods: {
      postBooking() {
        MovieService.postBooking(this)
        this.showForm = false
      },
      setPlace(place) {
        if (place[1] == true) {
          this.booking.seats.push(place[0])
        }
        else {
          let indexStat = this.booking.seats.indexOf(place[0])
          this.booking.seats.splice(indexStat, 1)
        }
      }
    } 
  }
</script>

<style lang="sass">
.hall tr 
  background-color: #F7FFDB
</style>
