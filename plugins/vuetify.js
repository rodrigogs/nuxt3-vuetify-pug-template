import { defineNuxtPlugin } from '#app'
import { createVuetify } from 'vuetify'
import * as components from 'vuetify/components'
import vuetifyConfig from '~/vuetify.config'

export default defineNuxtPlugin((nuxtApp) => {
  const vuetify = createVuetify({
    ...vuetifyConfig,
    components,
  })
  nuxtApp.vueApp.use(vuetify)
})
