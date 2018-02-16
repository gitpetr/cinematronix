<template>
    <td
        @click="toBay(nRow+':'+nSeat)"
        v-bind:class="{block: isBooking(nRow+':'+nSeat), clicked: isclick, seat: isempty}"
    >
        {{nSeat}}
    </td>
</template>

<script>
  export default {
    props: ["nSeat", "nRow", "bookseats"],
    data() {
      return {
        isclick: false,
        isempty: true
      }
    },
    methods: {
      isBooking(place) {
        if (this.bookseats.includes(place)) {
          return true
        }
        return false
      },
      toBay(place) {
        this.isclick = !this.isclick
        this.isempty = !this.isempty
        place = [place, this.isclick]
        this.$emit("setPlace", place)
      }
    }
  }
</script>

<style lang="sass" scoped>
  .clicked
    color: red
  td
    cursor: pointer
  td.block, td.nrow
    cursor: text
</style>
