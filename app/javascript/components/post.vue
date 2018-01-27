<template>
  <div class="container">
    <h1>{{post.title}} </h1>
    <p>{{post.body}} </p>
    <hr>
  </div>
</template>

<script>
export default { props: ["post"] }
</script>

<style scoped>
p {
  font-size: 1.1rem;
  color: gray;
}
</style>
