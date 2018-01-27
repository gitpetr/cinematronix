export default {
  fetch(self) {
    self.$http.get(self.endpoint).then(response => {
      self.resource = response.body
    }, response => {
      console.log('ошибка')
    })  
  }
}
