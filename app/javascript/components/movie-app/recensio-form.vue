<template>
  <div class='container'>
    <div class="row">
      <div class="col-6">
        <form :id="getMovieId">
          <div class="form-group">
            <label>Ваше имя</label>
            <input type="text" v-model="recensio.critic_name" placeholder="Представьтесь, пожалуйста!" class="form-control" /><br>
          </div>
          <div class="form-group">
            <label>Email</label>
            <input type="email" v-model="recensio.critic_email" placeholder="Ваша электронная почта" class="form-control" /><br>
          </div>
          <div class="form-group">
            <label>Текст</label>
            <textarea v-model="recensio.body" placeholder="Ваша рецензия" class="form-control"></textarea><br>
          </div>

          <div class="form-group">
            <router-link :to="'/movie/'+ recensio.movie_id">
              <button v-on:click="postRecensio()" class="btn btn-primary">Отправить</button>
            </router-link>

            <router-link :to="'/movie/'+ recensio.movie_id">
                <button class="btn btn-default">Вернуться</button>
            </router-link>
          </div>

        </form>
      </div>

      <div class="col-6">
        <p>Имя: {{recensio.critic_name}}</p>
        <p>Email: {{recensio.critic_email}}</p>
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
          this.recensio.movie_id = this.$route.params.id
      }
    },
    methods: {
      postRecensio(){
        MovieService.postRecensio(this)
      }
    }
  }
</script>
