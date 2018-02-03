import Vue from 'vue'
import VueRouter from 'vue-router'
import Movies from '../components/movie-app/movie-list.vue'
import MovieDetails from '../components/movie-app/movie-details.vue'
import RForm from '../components/movie-app/recensio-form.vue'

Vue.use(VueRouter)

const routes = [
  { path: '/movies', component: Movies },
  { path: '/movie/:id', component: MovieDetails },
  { path: '/movie/:id/recensio', component: RForm}
 ]
export default new VueRouter({
  routes
})
