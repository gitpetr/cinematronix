export default {
  fetch(self) {
    const endpoint = 'http://localhost:3000/api/v1/movies'
    self.$http.get(endpoint).then(response => {
      self.movies = response.body
    }, response => {
      console.log('ошибка')
    })
  }
}
