<template>
  <div>
    <div class="allgoods_menu">
        商品总览
    </div>
    <div>
        <ul class="side_column">
            <li @click="gosearch()">包包</li>
            <li>鞋子{{abc}}</li>
            <li>衣服</li>
            <li>首饰</li>
            <li>裤子</li>
        </ul>
    </div>
  </div>
</template>

<script>
import {ref} from 'vue';
import {useRouter} from 'vue-router';
export default {
setup(){
    const router=useRouter()
    const abc=ref("ddd")
    function gosearch(){
        router.push('/home/searchright')
        console.log(router)
    }
    return {
        gosearch,
        abc
    }
   
}
}
</script>

<style scoped>
.side_column li{
    list-style: none;
    width: 100%;
    height: 50px;
    border: 2px solid #2884ec;
    list-style: none;
    margin: 10px 0;
    text-align: center;
    line-height: 50px;
    position: relative;

    }
    .side_column li:hover{
        background:#f6f6f6;
        cursor: pointer;
    }
    .allgoods_menu{
        margin-bottom: 10px;
    font-size: 16px;
    background: rgb(238, 247, 252);
    color: rgb(40, 132, 236);
    text-align: center;
    border: 3px solid rgb(40, 132, 236);
    height: 50px;
    line-height: 50px;
    }
</style>