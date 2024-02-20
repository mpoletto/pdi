// vueform.config.(js|ts)

import en from '@vueform/vueform/locales/pt_BR'
import { defineConfig } from '@vueform/vueform'
import vueform from '@vueform/vueform/dist/vueform'

export default defineConfig({
  theme: vueform,
  locales: { en },
  locale: 'pt_BR',
  classHelpers: true,
})