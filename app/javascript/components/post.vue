<template>
  <div>
    <h1>{{post.title}} </h1>
    <p>{{post.body}} </p>
    <hr>
  </div>
</template>

<script>
export default { props: ["post"] }
</script>

<style>
p {
  font-size: 1.1rem;
  color: gray;
}
</style>
