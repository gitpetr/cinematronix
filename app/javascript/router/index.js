import Vue from 'vue'
import VueRouter from 'vue-router'
import Movies from '../components/movie-app/movie-list.vue'
import MovieDetails from '../components/movie-app/movie-details.vue'
import BookingNew from '../components/booking-app/booking-new.vue'

Vue.use(VueRouter)

const routes = [
  { path: '/movies', component: Movies },
  { path: '/movie/:id', component: MovieDetails },
  { path: '/:movie_session_id/booking/new', component: BookingNew }
 ]
export default new VueRouter({
  routes
})
