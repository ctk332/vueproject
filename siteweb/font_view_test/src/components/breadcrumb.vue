<template>
<div id="breadcrumb">
  <el-breadcrumb separator="/">
  <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
  <el-breadcrumb-item><a href="/">活动管理</a></el-breadcrumb-item>
  <el-breadcrumb-item>活动列表</el-breadcrumb-item>
  <el-breadcrumb-item>活动详情</el-breadcrumb-item>
</el-breadcrumb>

</div>
</template>

<script>
export default {

}
</script>

<style>
#breadcrumb{
  margin: 20px auto;
  text-align: center;
  width: 80%;
  border: 1px solid #f6f6f6;
  padding: 10px;
}
</style>