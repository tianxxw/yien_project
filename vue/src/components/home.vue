<template>
  <el-container class="zhuti">
    <el-header>
      <el-container class="header">
        <div class="el-image">艺恩票房数据分析可视化</div>
                <div class="t1">
          <div class="left">
          <p>首页</p>
          <p>产品</p>
          <p>解决方案</p>
          <p>市场洞察</p>
          <p class="about" @click="gotoroute('/about')">关于我们</p>
          </div>
          <div class="avatar">
          <div>
          </div>
          <!-- <div style="font-size:24px">{{!circleUrl.nickname ? '' :'欢迎你!'+ circleUrl.nickname}}</div> -->
          </div>
        </div>
      </el-container>
    </el-header>
    <el-container>
    <el-aside width="200px">
      <el-row class="tac">
        <el-col :span="12">
          <el-menu
            :default-active="activePath"
            class="el-menu-vertical-demo"
            unique-opened
            >
            <el-submenu index="1">
              <div slot="title">
                <span>数据大盘</span>
              </div>
              <el-menu-item-group>
                <el-menu-item index="1-1" @click="gotoroute('/industrymarket','1-1')">电影大盘</el-menu-item>
                <el-menu-item index="1-2" @click="gotoroute('/boxofficemarket','1-2')">评分大盘</el-menu-item>
              </el-menu-item-group>
            </el-submenu>
            <el-submenu index="2">
              <template slot="title">
                <span>数据分析</span>
              </template>
              <el-menu-item-group>
                <el-menu-item index="2-1" @click="gotoroute('/boxofficerank','2-1')">排行榜</el-menu-item>
              </el-menu-item-group>
            </el-submenu>
            <el-submenu index="3">
              <template slot="title">
                <span>艺恩影院</span>
              </template>
              <el-menu-item index="3-1" @click="gotoroute('/movie','4-1')">电影检索</el-menu-item>
            </el-submenu>
            <div id="jj">
            </div>
          </el-menu>
        </el-col>
      </el-row>
    </el-aside>
    <el-main>
     <router-view></router-view>
    </el-main>
    </el-container>
  </el-container>
</template>
<script>

export default {
 data() {
  return {
    restaurants:[],
    state:'',
    timeout:null,
    list1:{},
    Moviename:[],
    activePath:'',
    MovieType:[]
  }
 },
 created() {
    this.getYiEnData();
    this.activePath = window.sessionStorage.getItem('activePath')
 },
 updated() {
 },
 activated() {

 },
 methods:{
  async getYiEnData(){
    await this.$http.get('/list').then(({data:res})=>{
      for(let k of res.data) {
        this.Moviename = [...this.Moviename,...k.Genre.split('/')]
      }
      const obj = this.Moviename.reduce((obj,key)=>{
        if(key in obj) {
          obj[key]++
        }else {
          obj[key]=1
        }
        return obj
      },{})
      var i = 0
      for(var k in obj ) {
        this.MovieType[i] = {value:0,name:''}
        this.MovieType[i].value = obj[k]
        this.MovieType[i].name = k
        i++
      }
    })      
    },
  gotoroute(e,activePath){
    this.$router.push(e).catch(err => err)
    if(activePath) {
      window.sessionStorage.setItem('activePath',activePath)
    }
  },
  getFocus() {
    
  },
  getClose() {
    this.gotoroute('/movie','4')
  }
 }
}
</script>
<style lang="less" scoped>
.zhuti {
  width: 100%;
  height: 100%;
  overflow: hidden;
}
.el-container {
  width: 100%;
  .el-header {
    font-size: 30px;
    color: purple;
    line-height: 60px;
    border-bottom: 1px solid gray;
    box-shadow: 5px 5px 0 0;
      .el-aside {
    width: 201px !important;
    border-right: 1px solid gray;
    .el-col{
      text-align: center;
      width: 200px !important;
      .el-menu-item {
        padding-left: 0px !important;
        padding-right: 0px !important;
      }
    }
  }
    .el-image {
      width: 600px;
      text-align:left;
      margin-left: 30px;
    }
  }
  .el-aside {
    width: 201px !important;
    border-right: 1px solid gray;
    .el-col{
      text-align: center;
      width: 200px !important;
      .el-menu-item {
        padding-left: 0px !important;
        padding-right: 0px !important;
      }
    }
  }
  .el-main {
    background-color: rgb(227, 226, 228);
    height: calc(100vh - 30px);
  }
 }
 .header {
  display: flex;
  justify-content: space-between;
  .el-image {
    width: 10%;
  }
  .t1 {
    width: 90%;
    display: flex;
    justify-content: space-between;
  }
 }
 .header .left {
  display: flex;
  cursor: default;
  p{
   font-size: 18px;
   margin-left: 60px;
   color: black;
 }
 }
 
 
 .el-menu-item {
   color: black;
 }
 .t1 {
  display: flex;
 }
 #jj:hover {
  background-color: white !important;
 }
  .avatar {
  display: flex;
  justify-content: center;
  align-items: flex-start;
 }
 .about{
  cursor: pointer;
 }
</style>