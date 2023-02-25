<template>
  <el-container>
    <el-row class="header">
  <el-col :span="6"><div class="grid-content bg-purple">
    <a href="https://www.cafe-gardella.com/shop.php?mdkcmmenu-2-30-0.html"><i class="fa fa-cube"></i><span class="logotext">www.cafe-gardella.com</span></a>
  </div>
</el-col>
  <el-col :span="8">
    <div class="mt-4">
    <el-input
      v-model="input3"
      placeholder="Please input"
      class="input-with-select"
    >
    <template #append>
      <el-icon style="vertical-align: middle" @click="initGridList()">
      <Search />
    </el-icon>
    </template>
    </el-input>
  </div>
  </el-col>
  <el-col :span="8">
      <ul>
        <li><a >ログイン</a></li>
        <li><a>アカウント作成</a></li>
        <li><a>カートを見る</a></li>
        <li><a>レジへ進む</a></li>
      </ul>
  </el-col>
</el-row>
</el-container>

<el-row class="header">
  <el-row class="tac">
    <el-col :span="4">
      <h5 class="mb-2">Default colors</h5>
      <el-menu
        default-active="2"
        class="el-menu-vertical-demo"
        @open="handleOpen"
        @close="handleClose"
      >
        <el-sub-menu index="1">
          <template #title>
            <el-icon><location /></el-icon>
            <span>Navigator One</span>
          </template>
          <el-menu-item-group title="Group One">
            <el-menu-item index="1-1">item one</el-menu-item>
            <el-menu-item index="1-2">item two</el-menu-item>
          </el-menu-item-group>
          <el-menu-item-group title="Group Two">
            <el-menu-item index="1-3">item three</el-menu-item>
          </el-menu-item-group>
          <el-sub-menu index="1-4">
            <template #title>item four</template>
            <el-menu-item index="1-4-1">item one</el-menu-item>
          </el-sub-menu>
        </el-sub-menu>
        <el-menu-item index="2">
          <el-icon><icon-menu /></el-icon>
          <span>Navigator Two</span>
        </el-menu-item>
   
        <el-menu-item index="4">
          <el-icon><setting /></el-icon>
          <span>Navigator Four</span>
        </el-menu-item>
      </el-menu>
    </el-col>

  </el-row>
</el-row>


</template>

<script>
import { post } from "@/api/api.js";
import { Search } from '@element-plus/icons-vue'
export default {
  data() {
      const item = {
        date: '2016-05-02',
        name: '王小虎',
        address: '上海市普陀区金沙江路 1518 弄'
      };
      return {
        tableData: Array(20).fill(item)
      }
    },
  name: 'HelloWorld',
  props: {
    msg: String
  },
  methods: {
    initGridList(){
      post("product/selectList", {}).then((res) => {
          this.pathData = res.data;
      });
      },
  }
  
}
</script>
<style scoped>
.header{
  width: 100%;
}
.tac{
  width: 1200px;
  margin: auto;
}
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
