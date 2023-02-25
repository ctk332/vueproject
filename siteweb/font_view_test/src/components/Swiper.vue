<template>
   <div class="swiper-container" >
<div class="swiper-wrapper">
<div class="swiper-slide" >
  <img src="../assets/header_image/1605781667.jpeg" style="width:100%;height:500px;">
</div>
<div class="swiper-slide" >
  <img src="../assets/header_image/1605949706.jpeg" style="width:100%;height:500px;">
</div>
<div class="swiper-slide" >
  <img src="../assets/header_image/1605950461.jpeg" style="width:100%;height:500px;">
</div>
<div class="swiper-slide" >
  <img src="../assets/header_image/1607130967.jpeg" style="width:100%;height:500px;">
</div>
<div class="swiper-slide" >
  <img src="../assets/header_image/1607133885.jpeg" style="width:100%;height:500px;">
</div>
</div>
<div class="swiper-pagination"></div>
<div class="swiper-button-prev"></div>
<div class="swiper-button-next"></div>      
</div>
</template>

<script>
import Swiper from '../assets/js/swiper.min.js'

export default {

mounted(){
    this.$nextTick(()=>{
                var mySwiper = new Swiper('.swiper-container', {

            autoplay:true,
            // 如果需要分页器
            pagination: {
              el: '.swiper-pagination',
              clickable: true
            },

            // 如果需要前进后退按钮
            navigation: {
              nextEl: '.swiper-button-next',
              prevEl: '.swiper-button-prev'
            },
              breakpoints: { 
    //当宽度小于等于320
    640: {
      slidesPerView: 1,
      spaceBetween: 10
    },
   //当宽度小于等于480
    900: { 
      slidesPerView: 2,
      spaceBetween: 20
    },
    //当宽度小于等于640
    1250: {
      slidesPerView: 3,
      spaceBetween: 30
    }
  }
          })
              })
}
}

</script>

<style scoped>
.swiper-container{
    margin-bottom:20px;
}
</style>