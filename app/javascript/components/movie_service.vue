<script>
  export default {
    data() {
      endpoint: 'http://localhost:3000/api/v1/movies'
    },
    props: ["movies"],
    methods: {
      fetch() {
        this.$http.get(endpoint).then(response => {
          this.movies = response.body
        }, response => {
          console.log('ошибка')
        })
      }
    }
  }
</script>
