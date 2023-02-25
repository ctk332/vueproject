

import { createRouter, createWebHistory } from 'vue-router'
import home from "../views/tree/1.vue"
import home1 from "../views/tree/HelloWorld.vue"
import gooddetail from "../views/home/gooddetail.vue"
import main from "../components/Main.vue"
import Center from "../components/Center.vue"
import searchright from "../views/home/searchright.vue"
const routes = [
  {path:'/', redirect: '/home/main'},
  {
    path: '/home',
    name: 'home',
    component: Center,
    children:[{path:'main',component:main},{path:'gooddetail',component:gooddetail},{path:'searchright',component:searchright}]
  },
 

  // {
  //   path: '/gooddetail',
  //   name: 'gooddetail',
  //   component: gooddetail
  // },
  //   {
  //     path: '/searchright',
  //     name: 'searchright',
  //     component: index
  //   },
  //   {
  //     path: '/home',
  //     name: 'home',
  //     component: home1
  //   }
]
const router=createRouter({
    history:createWebHistory(),
    routes
})





export default router
