<script>
  export default {
    props: ["resource"],
    methods: {
      fetch() {
        this.$http.get(this.endpoint).then(response => {
          this.movies = response.body
        }, response => {
          console.log('ошибка')
        })
      }
    }
  }
</script>
