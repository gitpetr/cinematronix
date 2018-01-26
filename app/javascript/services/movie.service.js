export default {
  fetch(self) {
    self.$http.get(self.endpoint).then(response => {
      self.movies = response.body
    }, response => {
      console.log('ошибка')
    })  
  }
}
