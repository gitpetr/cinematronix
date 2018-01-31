import Vue from 'vue'
import Router from 'vue-router'
import movies from '../components/movies.vue'
import moviedetails from '../components/movie_details.vue'

Vue.use(Router)

export default new Router({

routes: [

  {

    path: '/',

    name: 'movies',

    component: movies

  },
  {
    path: '/movies/show/',

    name: 'moviedetails',

    component: moviedetails
  }

]

})
