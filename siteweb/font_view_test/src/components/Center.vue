<template>
   <div style="display: flex;width:70%;margin: 0 auto;justify-content: space-between;">
    <div style="width:15%"><Side></Side></div>
    <div style="width:80%"><router-view></router-view></div>
    <!-- <div style="width:80%"><Main></Main></div> -->
  </div>
</template>

<script>
import Side from './Side.vue'
import Main from './Main.vue'
export default {
components:{
    Side,Main
}
}
</script>

<style>

</style>