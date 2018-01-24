<template>
  <div id="app">
    <ul>
        <li v-for="(movie, index) in movies" :key="movie.id">
            <p>Movie {{index + 1}}: {{movie.title}}</p>
        </li>
    </ul>
  </div>
</template>

<script>
let movies = [{"id":2,"title":"Бриллиантовая рука"},{"id":13,"title":"Три мушкетера"}]

export default {
  data: function () {
    return {
      movies: movies
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
