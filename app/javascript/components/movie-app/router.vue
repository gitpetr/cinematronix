<template>
  <div id="app">
    <div class='container'>
      <router-link :to="{ path: '/movies' }">All movies</router-link>
       <router-view></router-view>
    </div>
  </div>
</template>

<script>

</script>
