import './assets/style.css'
import { createApp } from 'vue'
import App from './App.vue'
import Vueform from '@vueform/vueform'
import vueformConfig from './../vueform.config.js'

const app = createApp(App)
app.use(Vueform, vueformConfig)
app.mount('#app')
