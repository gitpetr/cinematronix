import Vue from 'vue'
import VueResource from 'vue-resource'
import App from '../components/movie-app/router.vue'
import router from '../router'

Vue.use(VueResource)

document.addEventListener('DOMContentLoaded', () => {
  const el = document.body.appendChild(document.createElement('app'))
  new Vue({
    el: 'app',
    router: router,
    render: h => h(App)
  })
})
