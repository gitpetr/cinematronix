<template>
  <div>
    <div class="recensios" v-for="recensio in recensios">
      <h4>{{recensio.critic_name}}({{recensio.critic_email}})</h4>
      <p>
        {{recensio.body}}
      </p>
      <hr>
    </div>
  </div>
</template>

<script>
  export default {
    props: ["recensios"]
  }
</script>

<style scoped>

</style>
