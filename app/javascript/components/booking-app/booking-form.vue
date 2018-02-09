<template>
  <div>
    <form>
      <input type="hidden" v-model="movie_session_id"/>
      <input type="hidden" v-model="seat=comp_seat"/>

      <div class="form-group">
        <label for="name">ФИО</label><br/>
        <input type="text" v-model="name" id="name"><br/>
      </div>
      <div class="form-group">
        <label for="email">Email</label><br/>
        <input type="email" v-model="email" id="email"><br/>
      </div>
      <div class="form-group">
        <label for="phone">Телефон</label><br/>
        <input type="text" v-model="phone" id="phone"><br/>
      </div>
      <div class="form-group">
        <label for="char">Место</label><br/>
        <input type="text" v-model="char" id="char"/><br/>
      </div>
      <div class="form-group">
        <label for="row">Ряд</label><br/>
        <input type="text" v-model="row" id="row"/>
      </div>
        <div class="form-group">
        <input type="submit" value='ok'/>
      </div>
    </form>
      <p>{{seat}}</p>
  </div>

</template>

<script>
  export default {
    props: ["movie_session_id"],
    data() {
      return {
        movie_session_id: '',
        name: '',
        email: '',
        phone: '',
        row: '',
        char: '',
        seat: ''
      }
    },
    computed: {
      comp_seat: function() {
        return (this.char + ':' + this.row)
      }
    }
  }
</script>


