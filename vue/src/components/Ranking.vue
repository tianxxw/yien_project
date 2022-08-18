<template>
<div class="body">
  <div class="header">
    <div class="header_index">
      <div style="font-weight: 700;font-size:16px;">今日实时数据</div>
      <div>更新于：</div>
    </div>
    <div class="header_index">
      <div>总票房</div>
      <div>{{this.TotalBF}}亿</div>
    </div>
    <div class="header_index">
      <div>总场次</div>
      <div>{{this.TotalCC}}万</div>
    </div>
    <div class="header_index">
      <div>总人次</div>
      <div>{{this.TotalRC}}万</div>
    </div>
  </div>
  <div class="center">
    <div class="cleft">
      <div class="bfrank">单日票房排名TOP10</div>
      <div id="mycharts1" ref="mycharts1">
         <div     
            v-loading="loading1"
            element-loading-text="拼命加载中"
            element-loading-spinner="el-icon-loading"
            element-loading-background="rgba(0, 0, 0, 0.2)">
         </div>
      </div>
    </div>
    <div class="right">
      <div class="bfrank">TOP50电影类型占比</div>
      <div id="mycharts2" ref="mycharts2">
          <div     
            v-loading="loading2"
            element-loading-text="拼命加载中"
            element-loading-spinner="el-icon-loading"
            element-loading-background="rgba(0, 0, 0, 0.2)">
         </div>
      </div>
    </div>
    <div class="bottom">
      <div class="bfrank">最快过亿影片TOP10</div>
      <div id="mycharts3">
        <div class="handertop">
          <div style="width:5%">排名</div>
          <div style="width:20%">影片名称</div>
          <div style="width:30%">上映日期</div>
          <div style="width:15%">所用天数</div>
          <div style="width:15%">累计票房(万)</div>
          <div style="width:15%">达标日期</div>
        </div>
        <div class="infinite-list"  style="overflow:auto" >
        <div v-for="item in MovieTOP10" v-bind:key="item.index" class="infinite-list-item" @click="searchMovie(item.MovieName)">
          <div style="width:5%">{{item.Irank}}</div>
          <div style="width:20%;color:purple;cursor:default">{{item.MovieName}}</div>
          <div style="width:30%">{{item.InsertDate}}</div>
          <div style="width:15%" v-text="item.MovieDays<=0?'点映':item.MovieDays"></div>
          <div style="width:15%">{{(item.SumBoxOffice/10000).toFixed(2)}}</div>
          <div style="width:15%">{{item.ReleaseTime}}</div>
        </div>
      </div>
      </div>
    </div>
  </div>
  
</div>

</template>
<script>
export default {
   data() {
    return {
      echarts1:[],
      bfrank:[],
      yAxis:[],
      //单日票房排名TOP10
      MovieType:[],
      //TOP50电影类型占比
      Moviename:[],
      TotalBF:0,
      TotalCC:0,
      TotalRC:0,
// ----------------------------------------
      // 最快过亿影片TOP10
      MovieTOP10:[],
//-----------------------------------------
      loading1:true,
      loading2:true
    };
  },
  created(){
   this.getEchartsData1()
   this.getEchartsData2()
   this.getEchartsData3()
  },
  mounted() {

  },
  updated() {

  },
  
  methods: {
    async getEchartsData1(){
    await this.$http.get('/Bfrank10').then(({data:res})=>{
      this.loading1 = false
      this.echarts1 = res.data
    })
    this.echarts1 = this.echarts1.splice(0,10).reverse()
    for(var i of this.echarts1) {
      this.bfrank.push((((i.BoxOffice)/10000).toFixed(2)))
      this.yAxis.push(i.MovieName)
    }
    this.getECharts1()
    },
    async getEchartsData2() {
      await this.$http.get('/list').then(({data:res})=>{
        this.loading2 = false
      for(let k of res.data) {
        this.Moviename = [...this.Moviename,...k.Genre.split('/')]
        this.TotalBF = this.TotalBF + Number.parseFloat(k.BoxOffice)
        this.TotalCC = this.TotalCC + Number.parseFloat(k.ShowCountALL)
        this.TotalRC = this.TotalRC + Number.parseFloat(k.AudienceCountALL)
      }
      this.TotalBF = (this.TotalBF/10000/1000).toFixed(2)
      this.TotalCC = (this.TotalCC/10000).toFixed(2)
      this.TotalRC = (this.TotalRC/10000).toFixed(2)
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
      this.getECharts2()
    })  
    },
    async getEchartsData3() {
      await this.$http.get('/list5/irank10').then(({data:res})=>{
         this.MovieTOP10 = res.data
      })
    }, 
    searchMovie(dataName){
      this.$router.push('/moviecontain')
      this.$store.commit('getDataName',dataName)
      window.sessionStorage.setItem('QjMovieName',dataName)
      window.sessionStorage.setItem('path','list5/info')
    },
    getECharts1() {
      // 基于准备好的dom，初始化echarts实例
      var myChart1 = this.$echarts.init(this.$refs.mycharts1, null, {
        // width:400,
        height: 400,
      });    
      myChart1.setOption({
      title: {
        
      },
      tooltip: {
        trigger: 'axis',
        axisPointer: {
          type: 'shadow'
        }
      },
      legend: {},
      grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
      },
      xAxis: {
        type: 'value',
        boundaryGap: [0, 0.01]
      },
      yAxis: {
        type: 'category',
        data: this.yAxis
      },
      series: [
        {
          name: '单日票房 /万',
          label:{
            show:true,
            position:'right'
          },
          itemStyle:{
            color:'rgb(168,121,203)'
          },
          type: 'bar',
          data: this.bfrank
        }
      ]
    });
    },
  getECharts2() {
  // 基于准备好的dom，初始化echarts实例
  var myChart2 = this.$echarts.init(this.$refs.mycharts2, null, {
    // width:400,
    height: 400,
  });
  // 绘制图表
  myChart2.setOption({
        title: {
  },
  tooltip: {
    trigger: 'item'
  },
  legend: {
    orient: 'vertical',
    right:20
  },
  series: [
    {
      name: 'Access From',
      type: 'pie',
      radius: '60%',
      data: this.MovieType,
      emphasis: {
        itemStyle: {
          shadowBlur: 10,
          shadowOffsetX: 0,
          shadowColor: 'rgba(0, 0, 0, 0.5)'
        }
      },
      itemStyle:{
        normal:{
          label:{
            show:true,
            formatter:'{b}: {d}% '
          }
        }
      },
      center:["40%","50%"]
    }
  ]
       })},
  },
}

</script>
<style lang="less" scoped>
  .body {
    width: 100%;
    overflow: hidden;
  }
  .header {
    height: 80px;
    width: 100%;
    background-color: white;
    margin-bottom: 20px;
    border-radius: 5px;
    font-size: 14px;
    display: flex;
    justify-content: space-between;
  }
  .center {
    width: 100% !important;
    background-color: white;
    border-radius: 5px;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    margin-bottom: 40px;
    align-content: flex-start;
    #mycharts{
      height: 100%;
    }
    .cleft {
      width: 48%;
    }
    .right {
      width: 48%;
    }
    .bottom {
      width: 100%;
    }
  }
  .header_index {
    margin: 10px;
    width: 25%;
  }
     .bfrank{
      border-left: 4px solid purple;
      padding: 0px 10px;
      margin: 10px;
     }
  .header_index div:first-child{
     font-size: 16px;
     margin-bottom: 10px;
     margin-left: 0px;
  }
  #mycharts1,#mycharts2 {
    border: 1px solid rgb(236, 236 , 236);
    margin: 10px;
    border-radius: 2px;
    display: flex;
    justify-content: center;
    align-content: center;
    div{
      height: 400px;
      width: 100%;
      color: gray;
      user-select: none;
    }
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
  margin-top: 10px;
  div {
    text-align: center;
  }
 }
 #mycharts3 {
    border: 1px solid rgb(236, 236 , 236);
    margin: 10px;
    border-radius: 2px;
 }
</style>