import Vue from 'vue'
import VueResource from 'vue-resource'
import App from '../components/movies.vue'
import router from '../router/index'

Vue.use(VueResource)

document.addEventListener('DOMContentLoaded', () => {
  const el = document.body.appendChild(document.createElement('app'))
  new Vue({
    el: 'app',
    router: router,
    render: h => h(App)
  })
})
