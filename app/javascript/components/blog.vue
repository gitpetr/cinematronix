<template>
  <div>
    <h1>{{blog.title}} </h1>
    <p>{{blog.body}} </p>
    <hr>
  </div>
</template>

<script>
export default { props: ["blog"] }
</script>

<style>
p {
  font-size: 1.1rem;
  color: gray;
}
</style>
