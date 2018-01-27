export default {
  fetch(self) {
    self.$http.get(self.endpoint).then(response => {
      self.blogs = response.body
    }, response => {
      console.log('ошибка')
    })  
  }
}
