export default {
  fetch(self) {
    self.$http.get(self.endpoint).then(response => {
      self.posts = response.body
    }, response => {
      console.log('ошибка')
    })  
  }
}
