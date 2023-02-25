<template>
<div id="app">
  <Header></Header>
  <div style="width:70%;margin: 0 auto;">
    <Swiper></Swiper>
    <breadcrumb></breadcrumb>
  </div>
  <router-view></router-view>
  <Footer></Footer>
</div>
</template>

<script>

import Header from './components/Header.vue'
import Footer from './components/Footer.vue'
import Swiper from './components/Swiper.vue'
import breadcrumb from "./components/breadcrumb.vue"

export default{
  components: {
  Header,Footer,Swiper,breadcrumb
  },
  name: 'App'
}
</script>

<style>

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>
