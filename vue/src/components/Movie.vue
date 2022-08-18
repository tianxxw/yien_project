<template>
 <div id="card">
  <div class="MovieBody"  v-infinite-scroll="loadMore" infinite-scroll-disabled="busy" infinite-scroll-distance="10">
    <div class="header">
      <div></div>
      <el-autocomplete
        v-model="state"
        :fetch-suggestions="querySearchAsync"
        placeholder="搜索电影"
        @select="handleSelect"
        @focus="getFocus"
        @keyup.enter.native="gotoMovie()"
        ref="input">
        <el-button slot="append" icon="el-icon-search" @click="gotoMovie()"></el-button>
      </el-autocomplete>
    </div>
    <div class="infinite-list" style="overflow:auto">
      <div v-for="item in data1" class="infinite-list-item" :key="item.index" @click="searchMovie(item.MovieName)">
       <div class="box">
          <el-image
            style="width: 200px; height: 300px"
            :src="item.DefaultImage">
          </el-image>
          <div class="movie_zhuti">
             <div class="movie_name">影名：{{item.MovieName}}</div>
             <div class="release_time">上映日期：{{item.ReleaseTime}}</div>
             <div class="ReleaseDays">上映天数：{{item.ReleaseDays}}</div>
             <div class="Country">地区：{{item.Country}}</div>
             <div class="Genre">作品类型：{{item.Genre}}</div>
             <div class="BoxOffice">累计票房：{{((item.BoxOffice)/Math.pow(10,7)).toFixed(2)}}亿</div>
             <div class="ShowCountALL">累计场次：{{(item.ShowCountALL/10000).toFixed(2)}}万</div>
             <div class="AudienceCountALL">累计人次：{{((item.AudienceCountALL)/Math.pow(10,8)).toFixed(2)}}亿</div>
             <div class="MaoYAN">猫眼评分：{{item.MaoYanScore == 'None' ? '暂无资料':item.MaoYanScore}}</div>
             <div class="MYTS">猫眼想看人数：{{item.MaoYanWantToSee == 'None' ? '暂无资料':(item.MaoYanWantToSee/10000).toFixed(2)+'万'}}</div>
             <div class="TPP">淘票票评分：{{item.TaoPiaoPiaoScore == 'None' ? '暂无资料':item.TaoPiaoPiaoScore}}</div>
             <div class="TPPTS">淘票票想看人数：{{item.TaoPiaoPiaoWantToSee == 'None' ? '暂无资料':(item.TaoPiaoPiaoWantToSee/10000).toFixed(2)+'万'}}</div>
             <div class="DB">豆瓣评分：{{item.DouBanScore == 'None' ? '暂无资料':item.DouBanScore}}</div>
             <div class="DBTS">豆瓣想看人数：{{item.DouBanWantToSee == 'None' ? '暂无资料':(item.DouBanWantToSee/10000).toFixed(2)+'万'}}</div>
          </div>
       </div>
      </div>
      <div class="None" ref="None">
          没有更多了
      </div>
    </div>
  </div>
 </div>
</template>
<script>
export default {
 data() {
  return {
    restaurants:[],
    state:'',
    timeout:null,
    data1:[],
    data2:[],
//----------------------------------------
    count:0,
    data:[],
    busy:false,
    page:-1
  }
 },
 created() {
  this.getYiEnData()
 },
 updated() {
 },
 activated() {
 },
 methods:{
  searchMovie(dataName) {
    this.$router.push('/moviecontain')
    this.$store.commit('getDataName',dataName)
    window.sessionStorage.setItem('QjMovieName',dataName)
    window.sessionStorage.setItem('path','list/info')
  },
  async gotoMovie(){
     await this.$http.post(`/info?MovieName=${this.state}&page=${this.page}`)
     .then(({data:res})=>{
         this.data1 = res.data
         this.restaurants = this.data1
     })
  },
  async getYiEnData(){
    await this.$http.get('/list').then(({data:res})=>{
      var i =0
      for(var k of res.data) {
        this.data2[i] = {value:''}
        this.data2[i].value = k.MovieName
        i++
      }
    })
  },
  querySearchAsync(queryString,cb) {
    var restaurants = this.data2;
    var results = queryString ? restaurants.filter(this.createStateFilter(queryString)): restaurants;
    clearTimeout(this.timeout);
    this.timeout = setTimeout(()=> {
      cb(results);
    },3000*Math.random());
  },
  createStateFilter(queryString) {
    return (state)=> {
      return (state.value.toLowerCase().indexOf(queryString.toLowerCase()) === 0);
    }
  },
  handleSelect() {
    // this.page = 1
    this.gotoMovie()
  },
  getFocus() {
    
  },
  loadMore: function() {
      this.busy = true
      if(this.page>=6) {
        this.$refs.None.style.display = 'block'
      }else
      {
        this.gotoMovie()
        this.page = this.page+1
        this.busy = false
      }
    }
 }
}
</script>
<style lang="less" scoped>
  #card {
    width: 100%;
  }
  .MovieBody {
    width: 100%;
    background-color: white;
      margin-bottom: 40px;
  }
  .el-col {
    border-radius: 4px;
  }
  .bg-purple-dark {
    background: #99a9bf;
  }
  .bg-purple {
    background: #d3dce6;
  }
  .bg-purple-light {
    background: #e5e9f2;
  }
  .grid-content {
    border-radius: 4px;
    min-height: 36px;
  }
  .box {
    width: 100%;
    height: 300px;
    margin-bottom:20px;
    display: flex;
    justify-content: left;
  }
  .header {
    display: flex;
    justify-content: center;
  }
  .el-autocomplete {
    width: 50%;
    margin: 20px 0px 40px 0px;
 }
 .infinite-list {
  width: 92%;
  margin: 0 auto;
  display: flex;
  justify-content:space-between;
  flex-wrap: wrap;
  padding-bottom: 40px;
 }
 .infinite-list-item {
   width: 48%;
 } 
 .movie_zhuti {
   height: 300px;
   margin-left: 10px;
   flex: 1;
 }
 .movie_name {
  font-size: 22px;
  font-weight: 700;
 }
 .None {
  height: 600px;
  line-height: 600px;
  width: 100%;
  cursor: default;
  color: gray;
  font-size: 30px;
  text-align: center;
  display: none;
  user-select: none;
 }
</style>