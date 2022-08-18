<template>
 <div class="body">
  <el-tabs type="border-card">

    <el-tab-pane label="内地票房">
      <div>
        <div class="handertop">
          <div style="width:5%">排名</div>
          <div style="width:20%">影片名称</div>
          <div style="width:45%">上映日期</div>
          <div style="width:15%">累计票房(万)</div>
          <div style="width:15%">豆瓣评分</div>
        </div>
        <div class="infinite-list"  style="overflow:auto" >
        <div v-for="item in list0" v-bind:key="item.index" class="infinite-list-item" @click="searchMovie(item.MovieName,'')">
          <div style="width:5%">{{item.Irank}}</div>
          <div style="width:20%;color:purple;cursor:default">{{item.MovieName}}</div>
          <div style="width:45%">{{item.ReleaseTime}}</div>
          <div style="width:15%">{{(item.BoxOfficeToTal/10000).toFixed(2)}}</div>
          <div style="width:15%">{{item.DouBanScore}}</div>
        </div>
        </div>
      </div>
    </el-tab-pane>

    <el-tab-pane label="最快过亿影片">
      <div>
        <div class="handertop">
          <div style="width:5%">排名</div>
          <div style="width:20%">影片名称</div>
          <div style="width:25%">上映日期</div>
          <div style="width:15%">所用天数</div>
          <div style="width:20%">累计票房(万)</div>
          <div style="width:15%">达标日期</div>
        </div>
        <div class="infinite-list"  style="overflow:auto" >
        <div v-for="item in list5" v-bind:key="item.index" class="infinite-list-item" @click="searchMovie(item.MovieName,5)">
          <div style="width:5%">{{item.Irank}}</div>
          <div style="width:20%;color:purple;cursor:default">{{item.MovieName}}</div>
          <div style="width:25%">{{item.InsertDate}}</div>
          <div style="width:15%" v-text="item.MovieDays<=0?'点映':item.MovieDays"></div>
          <div style="width:20%">{{(item.SumBoxOffice/10000).toFixed(2)}}</div>
          <div style="width:15%">{{item.ReleaseTime}}</div>
        </div>
        </div>
      </div>
    </el-tab-pane>

    <el-tab-pane label="影片单日票房">
      <div>
        <div class="handertop">
          <div style="width:5%">排名</div>
          <div style="width:20%">影片名称</div>
          <div style="width:55%">上映日期</div>
          <div style="width:20%">单日票房(万))</div>
        </div>
        <div class="infinite-list"  style="overflow:auto" >
        <div v-for="item in list1" v-bind:key="item.index" class="infinite-list-item" @click="searchMovie(item.MovieName,1)">
          <div style="width:5%">{{item.Irank}}</div>
          <div style="width:20%;color:purple;cursor:default">{{item.MovieName}}</div>
          <div style="width:55%">{{item.InsertDate}}</div>
          <div style="width:20%">{{(item.BoxOfficeToTal/10000).toFixed(2)}}</div>
        </div>
        </div>
      </div>
    </el-tab-pane>

    <el-tab-pane label="影票单月票房">
      <div>
        <div class="handertop">
          <div style="width:5%">排名</div>
          <div style="width:20%">影片名称</div>
          <div style="width:30%">上映日期</div>
          <div style="width:15%">单月票房(万)</div>
          <div style="width:15%">月份</div>
          <div style="width:15%">月度占比</div>
        </div>
        <div class="infinite-list"  style="overflow:auto" >
        <div v-for="item in list2" v-bind:key="item.index" class="infinite-list-item" @click="searchMovie(item.MovieName,2)">
          <div style="width:5%">{{item.Irank}}</div>
          <div style="width:20%;color:purple;cursor:default">{{item.MovieName}}</div>
          <div style="width:30%">{{item.ReleaseTime}}</div>
          <div style="width:15%">{{(item.BoxOffice/10000).toFixed(2)}}</div>
          <div style="width:15%">{{item.ReleaseTime.slice(0,7)}}</div>
          <div style="width:15%">{{item.BoxPercent}}</div>
        </div>
        </div>
      </div>
    </el-tab-pane>

    <el-tab-pane label="影片排片占比">
      <div>
        <div class="handertop">
          <div style="width:5%">排名</div>
          <div style="width:20%">影片名称</div>
          <div style="width:30%">上映日期</div>
          <div style="width:15%">排片场次</div>
          <div style="width:15%">拍片占比</div>
          <div style="width:15%">票房比/拍片比</div>
        </div>
        <div class="infinite-list"  style="overflow:auto" >
        <div v-for="item in list3" v-bind:key="item.index" class="infinite-list-item" @click="searchMovie(item.MovieName,3)">
          <div style="width:5%">{{item.Irank}}</div>
          <div style="width:20%;color:purple;cursor:default">{{item.MovieName}}</div>
          <div style="width:30%">{{item.ReleaseTime}}</div>
          <div style="width:15%">{{item.ShowCount}}</div>
          <div style="width:15%">{{item.ShowCountPercent}}</div>
          <div style="width:15%">{{item.ShowCount_Eff}}</div>
        </div>
        </div>
      </div>
    </el-tab-pane>

    <el-tab-pane label="影片排片场次">
      <div>
        <div class="handertop">
          <div style="width:5%">排名</div>
          <div style="width:20%">影片名称</div>
          <div style="width:30%">上映日期</div>
          <div style="width:15%">排片占比</div>
          <div style="width:15%">拍片场次</div>
          <div style="width:15%">票房比/拍片比</div>
        </div>
        <div class="infinite-list"  style="overflow:auto" >
        <div v-for="item in list4" v-bind:key="item.index" class="infinite-list-item" @click="searchMovie(item.MovieName,4)">
          <div style="width:5%">{{item.Irank}}</div>
          <div style="width:20%;color:purple;cursor:default">{{item.MovieName}}</div>
          <div style="width:30%">{{item.InsertDate}}</div>
          <div style="width:15%">{{item.ShowCountPercent}}</div>
          <div style="width:15%">{{item.ShowCount}}</div>
          <div style="width:15%">{{item.ShowCount_Eff}}</div>
        </div>
        </div>
      </div>
    </el-tab-pane>
  </el-tabs>
 </div>
</template>
<script>
import router from '@/router';

export default {
   data() {
    return {
      list0:[],
      list1:[],
      list2:[],
      list3:[],
      list4:[],
      list5:[]
    };
  },
  created(){
    this.getYiEnData('/list','list0');
    this.getYiEnData('/list5','list5')
    this.getYiEnData('/list1','list1')
    this.getYiEnData('/list2','list2');
    this.getYiEnData('/list3','list3')
    this.getYiEnData('/list4','list4')
  },
  updated() {
    
  },
  methods: {
    async getYiEnData(list,info) {
      await this.$http.get(list).then(({data:res})=>{
        this[info] = res.data
      })
    },
    searchMovie(dataName,item) {
      this.$router.push('/moviecontain')
      this.$store.commit('getDataName',dataName)
      window.sessionStorage.setItem('QjMovieName',dataName)
      window.sessionStorage.setItem('path',`list${item}/info`)
    }
  },
  mounted() {
   
  }
}
</script>
<style lang="less" scoped>
 .body {
  width: 100%;
  position: relative;
  margin-bottom: 40px;
 }
 .el-tabs {
  height: 95%;
  overflow: hidden;
 }
 .infinite-list-item {
  width: 100%;
  height: 46px;
  font-size: 14px;
  line-height: 46px;
  text-align: center;
  display: flex;
  border-top: 1px solid whitesmoke;
  border-collapse: collapse;
  justify-content: space-between;
  transition: all 0.1s;
 }
  .infinite-list-item:hover {
  background-color: rgb(236,245,255);
 }
 .handertop {
  display: flex;
  justify-content: space-between;
  margin-bottom: 10px;
  div {
    text-align: center;
  }
 }
</style>