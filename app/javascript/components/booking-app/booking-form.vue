<template>
  <div>
    <form>
      <input type="text" v-model="movie_session_id"/>
      <label for="name"/>
      <input type="text" v-model="name" id="name"><br/>
      <label for="email"/>
      <input type="email" v-model="email" id="email"><br/>
      <label for="phone"/>
      <input type="text" v-model="phone" id="phone"><br/>
      <label for="row"/>
      <input type="text" v-model="row" id="row"/>
      <label for="char"/>
      <input type="text" v-model="char" id="char"/><br/>
      <input type="submit" value='ok'/>
    </form>
  </div>
</template>

<script>
  export default {
    props: ["movie_session_id"],
    data() {
      return {
        movie_session_id: movie_session_id,
        name: '',
        email: '',
        phone: '',
        row: '',
        char: '',
        seat: ''
      }
    },
    watch: {
      seat() {
        this.seat = (this.char + ':' + this.char)
      }
    }
  }
</script>


