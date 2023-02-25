

import { createRouter, createWebHistory } from 'vue-router'
import index from "../views/home/index.vue"
import home from "../views/tree/1.vue"
import home1 from "../views/tree/HelloWorld.vue"
const routes = [
  {
    path: '/',
    name: 'index',
    component: index
  },
    {
      path: '/my',
      name: 'my',
      component: home
    },
    {
      path: '/home',
      name: 'home',
      component: home1
    }
]
const router=createRouter({
    history:createWebHistory(),
    routes
})





export default router
