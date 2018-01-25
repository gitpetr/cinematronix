<template>
  <div>
    <img :src='movie.image' class="img-fluid clearfix center-block"/>
    <p>{{movie.title}} </p>
  </div>
</template>

// <script>
// export default { props: ["movie"] }
// </script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
  list-style-type: none;
}
</style>
