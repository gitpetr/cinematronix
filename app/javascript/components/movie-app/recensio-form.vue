<template>
  <div class='container'>
    <div class="row">
      <div class="col-6">
        <form>
          <div class="form-group">
            <label>Ваше имя</label>
            <input type="text" v-model="recensio.critic_name" placeholder="Представьтесь, пожалуйста!" class="form-control" /><br>
          </div>
          <div class="form-group">
            <input type="hidden" v-model="recensio.movie_id = movie_id" />
            <label>Email</label>
            <input type="email" v-model="recensio.critic_email" placeholder="Ваша электронная почта" class="form-control" /><br>
          </div>
          <div class="form-group">
            <label>Текст</label>
            <textarea v-model="recensio.body" placeholder="Ваша рецензия" class="form-control"></textarea><br>
          </div>

          <div class="form-group">
            <button v-on:click="postRecensio()" class="btn btn-default">Сохранить</button>
          </div>

        </form>
      </div>

      <div class="col-6">
        <p>Имя: {{recensio.critic_name}}</p>
        <p>Email: {{recensio.critic_email}}</p>
        <p>id: {{recensio.movie_id}}</p>
        <p>
          Рецензия:
          {{recensio.body}}
        </p>
      </div>
    </div>
  </div>
</template>

<script>
  import MovieService from '../../services/movies.service.js'

  export default {
    props: ['movie_id'],
    data() {
      return {
        recensio: {
          critic_name: '',
          critic_email: '',
          body: '',
          movie_id: ''
        }
      }
    },
    computed: {
        getMovieId() {
          this.recensio.movie_id = this.movie_id
      }
    },
    methods: {
      postRecensio(){
        MovieService.postRecensio(this)
        this.$emit("recensio", this.recensio)
      }
    }
  }
</script>
