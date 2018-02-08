import Vue from 'vue'
import VueResource from 'vue-resource'
Vue.use(VueResource)

export default new Vue({
    data(){
      return {
        movies: [],
        endpoint: 'http://localhost:3000/api/v1/movies'
      }
    },
    methods: {
      fullmovies() {
        this.$http.get(this.endpoint).then(response => {
          this.movies = response.body
        })
      }
    }, created() {
      this.fullmovies()
  }
})
