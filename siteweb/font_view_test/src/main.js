import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import service from './router/index'
import ElementPlus from 'element-plus';
import 'element-plus/theme-chalk/index.css';
import locale from 'element-plus/lib/locale/lang/zh-cn'
import * as Elicons from "@element-plus/icons-vue";
import  '@/assets/css/swiper.min.css'
import {useRouter} from 'vue-router'
import '@/assets/css/refix.css';
const app = createApp(App);
for (const name in Elicons) {
  app.component(name, Elicons[name]);
}
app.use(ElementPlus)
app.use(router)
app.use(service)
app.use(ElementPlus, { locale })
app.mount('#app')


