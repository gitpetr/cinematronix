<template>
  <div>
    <div class="movie-image"><img :src='moviedetail.imagemedium' class="img-fluid clearfix center-block"/></div>
    <h3>{{moviedetail.title}}</h3>
    <p>{{moviedetail.description}} </p>
</div>
</template>

<script type="text/javascript">
import router from '../router/index'
  export default {
    props: ["moviedetail"]
  }
</script>

<style scoped>
.movie-image {
  paddin: 0;
}
</style>
