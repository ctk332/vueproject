import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import service from './router/index'
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'

import * as Elicons from "@element-plus/icons-vue";
const app = createApp(App);
for (const name in Elicons) {
  app.component(name, Elicons[name]);
}
app.use(ElementPlus)
app.use(router)
app.use(service)
app.mount('#app')


