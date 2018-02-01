import Vue from 'vue'

export default new Vue({
    data(){
      return {
        movies: []
      }
    },
    methods: {
    fetch() {
      const endpoint = 'http://localhost:3000/api/v1/movies'
      this.$http.get(endpoint).then(response => {
        this.movies = response.body
      }, response => {
        console.log('ошибка')
      })
    }
  }
})
 

 
