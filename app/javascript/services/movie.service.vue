<script>
  export default {
    methods: {
      fetch: function() {
        let endpoint = 'http://localhost:3000/api/v1/movies';

        this.$http.get(endpoint).then(response => {
          return response.body
        }, response => {
          console.log('ошибка')
        })  
      }
    }
  }
</script>
