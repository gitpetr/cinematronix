<template>
  <div>
  <p>
    {{checktext}}
  </p>
  <p>{{moviedetail.title}} </p>
</div>
</template>

<script type="text/javascript">
import router from '../router/index'
  export default {
    props: ["moviedetail", "checktext"]
  }
</script>
