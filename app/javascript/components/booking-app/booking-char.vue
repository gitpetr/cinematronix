<template>
  <div>
    <td class="seat" v-for="nSeat in hallseats"
        @click="toBay(nRow+':'+nSeat, $event)"
        v-bind:class="{block: isBooking(nRow+':'+nSeat)}">
        {{nSeat}}
    </td>
  </div>
</template>

<script>
  export default {
    props: ["hallseats", "bookseats", "nRow"],
    data() {
      return {
      }
    },
    methods: {
      isBooking(place) {
        if (this.bookseats.includes(place)) {
          return true
        }
        return false
      },
      toBay(place, event) {
        this.$emit("setPlace", place)
        event.target.setAttribute('class', 'clicked')
      }
    }
  }
</script>

<style lang="sass">
  .clicked
    color: red
    td
      cursor: pointer
    td.block, td.nrow
      cursor: text
</style>
