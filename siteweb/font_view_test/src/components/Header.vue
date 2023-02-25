<template>
  <div id="head_contain">
    <div class="icon"><img src="../assets/header_image/logo.png" alt="" style="width:200px;" @click="gohome()"></div>
    <div style="display:flex;width: 30%;height:70px;padding-top: 25px;">
    <el-input
    placeholder="请输入内容"
    v-model="input4"
    >
  </el-input>
  <el-button type="primary" class="search">搜索</el-button>
</div>
    <div class="message">
        <ul class="message_ul" >
            <li>ログイン</li>
            <li>アカウント作成</li>
            <li>カートを見る</li>
            <li>レジへ進む</li>
            <li></li>
        </ul>
    </div>
  </div>
</template>

<script>
import { ref } from 'vue'
import { useRouter } from 'vue-router'
export default {
    name:"header",
setup(){
const router=useRouter()
let input4=ref("")
function gohome(){
router.push('/')
}
    return {
        input4,
        gohome
    }
},
watch:{
    input4(){
        console.log(this.input4)
    }
}
}
</script>

<style scoped>
#head_contain{
    display: flex;
    justify-content: space-around;
    border-bottom: 2px solid gray;
    margin-bottom: 20px;
}
.message_ul{
    display: flex;
}
.message_ul li{
list-style: none;
margin-left: 20px;
}
.search{
    height:100%;
    margin-left: 20px;
    padding:10px;
    width: 100px;
}
.message_ul{
    padding-top:25px;
}
.icon:hover{
    cursor: pointer;
    opacity: 0.8;
}
</style>