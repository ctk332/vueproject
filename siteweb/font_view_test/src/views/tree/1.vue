<template>
  <div class="hello">
    <el-button type="success" @click="initGridList()" >成功按钮</el-button>
  </div>
</template>

<script>
import { post } from "@/api/api.js";
export default {
  name: 'HelloWorld',
  props: {
    msg: String
  },
  methods: {
    initGridList(){
        post("product/selectList", {}).then((res) => {
        this.pathData = res.data;
        alert(this.pathData)
      });
      },
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
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
