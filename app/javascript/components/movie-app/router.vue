<template>
  <div id="app">
    <div class='container'>
      <router-link :to="{ path: '/movies' }">All movies</router-link>
      <div class="row">
        <router-view></router-view>
      </div>
    </div>
  </div>
</template>

<script>

</script>
