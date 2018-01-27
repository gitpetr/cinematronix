import Vue from 'vue'
import VueResource from 'vue-resource'
import App from '../components/movies.vue'

Vue.use(VueResource)

document.addEventListener('DOMContentLoaded', () => {
  const el = document.body.appendChild(document.createElement('app'))
  new Vue({
    el: 'app',
    render: h => h(App)
  })
})
