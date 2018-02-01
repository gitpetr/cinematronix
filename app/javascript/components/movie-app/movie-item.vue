<template>
  <div>
    <router-link :to="'/movie/'+ movie.id">
      <div class="onemovie">
        <img :src='movie.image' class="img-fluid clearfix center-block"/>
        <p>{{movie.title}} </p>
      </div>
    </router-link>
  </div>
</template>

<script>
export default { 
  props: ["movie"]
 }
</script>

<style scoped>
p {
  font-size: 1.1rem;
  text-align: center;
}
li {
  list-style-type: none;
  color: #292C33;
}
.onemovie {
  width: 220px;
  height: 332px;
  float: left;
}
.img-fluid {
  max-width: 100%;
  min-height: 90%;
  height: auto;
}
 
.clearfix:after {
  clear: both;
}
</style>
