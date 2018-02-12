export default {
  fetch(self) {
    const endpoint = 'http://localhost:3000/api/v1/movies'
    self.$http.get(endpoint).then(response => {
      self.movies = response.body
    }, response => {
      console.log('ошибка')
    })
     },
  getById(self) {
    const endpoint = 'http://localhost:3000/api/v1/movies'
    self.$http.get(endpoint).then(response => {
      self.movie = response.body.filter(movie => movie.id == self.$route.params.id)[0]
      self.recensios = self.movie.recensios.reverse().slice()
    }, response => {
      console.log('ошибка')
    })
  },
  getSessionById(self) {
    self.movie_session_id = self.$route.params.movie_session_id
  },
  postRecensio(self) {
    self.$http.post(`http://localhost:3000/api/v1/movies/${self.movie_id}/recensios`, {"recensio": self.recensio}).then((response) => {
      console.log(response.message)
    })
  },
  bookingSeats(self) {
    const movie_session_id = self.$route.params.movie_session_id
    const endpoint = `http://localhost:3000/api/v1/moviesession/${movie_session_id}`
    self.$http.get(endpoint).then(response => {
      let seats = response.body.bookings.map(function(booking) {
        return booking.seat;
      });
      self.bookingseats = seats
      console.log(seats)
    }, response => {
      console.log('ошибка')
    })
  },
  postBooking(self) {
    const booking = {
      name: self.booking.name,
      email: self.booking.email,
      phone: self.booking.phone,
      seat: self.booking.seat,
      movie_session_id: self.booking.movie_session_id
    }

    self.$http.post('http://localhost:3000/api/v1/bookings', {"booking": booking}).then((response) => {
      self.id = response.body.id
    })
  },
  getBookingByID(self) {
    const endpoint = 'http://localhost:3000/api/v1/bookings'
    self.$http.get(endpoint).then(response => {
      self.booking = response.body.filter(booking => booking.id == self.$route.params.id)[0]
    }, response => {
      console.log('ошибка')
    })
  },
  createHall(self) {
    var Hall = {
          rows: [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35]
        },
        HallMap = '<tr/>';
    $.each(Hall.rows, function(row, numberOfSeats) {
      var HallRow = '';
      for (var i = 1; i <= numberOfSeats; i++) {
        HallRow += '<td class="' + (row + 1) + ':' + i +  ' seat">' +
            i + '</td>';
      }
      HallMap += HallRow + '<td class="num-row">'+ (row + 1) + 'ряд' +'</td>' + '</tr>';
    });
    self.hallmap = HallMap
  }
}
