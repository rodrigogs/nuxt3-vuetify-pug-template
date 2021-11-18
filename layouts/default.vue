<template lang="pug">
v-app#inspire
  v-system-bar(app='')
    v-spacer
    v-icon mdi-square
    v-icon mdi-circle
    v-icon mdi-triangle
  v-app-bar(app='' clipped-right='' flat='' height='72')
    v-spacer
    v-responsive(max-width='156')
      v-text-field(dense='' flat='' hide-details='' rounded='' solo-inverted='')
  v-navigation-drawer(v-model='drawer' app='' width='300')
    v-navigation-drawer(v-model='drawer' absolute='' color='grey lighten-3' mini-variant='')
      v-avatar.d-block.text-center.mx-auto.mt-4(color='grey darken-1' size='36')
      v-divider.mx-3.my-5
      v-avatar.d-block.text-center.mx-auto.mb-9(v-for='n in 6' :key='n' color='grey lighten-1' size='28')
    v-sheet(color='grey lighten-5' height='128' width='100%')
    v-list.pl-14(shaped='')
      v-list-item(v-for='n in 5' :key='n' link='')
        v-list-item-content
          v-list-item-title Item {{ n }}
  v-navigation-drawer(app='' clipped='' right='')
    v-list
      v-list-item(v-for='n in 5' :key='n' link='')
        v-list-item-content
          v-list-item-title Item {{ n }}
  v-main
    // Content
    slot
  v-footer(app='' color='transparent' height='72' inset='')
    v-text-field(background-color='grey lighten-1' dense='' flat='' hide-details='' rounded='' solo='')
</template>

<script>
import { defineComponent } from 'vue'

export default defineComponent({
  name: 'DefaultLayout',
  data () {
    return {
      drawer: null,
    }
  },
})
</script>

<style scoped>
</style>
