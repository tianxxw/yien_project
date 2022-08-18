<template>
  <div class="center">
    <div class="top">
      <div class="bfrank">影片排片占比TOP10</div>
      <div id="bfranktop">
        <div class="handertop">
          <div style="width:5%">排名</div>
          <div style="width:20%">影片名称</div>
          <div style="width:30%">上映日期</div>
          <div style="width:15%">排片占比</div>
          <div style="width:15%">排片场次</div>
          <div style="width:15%">票房比/拍片比</div>
        </div>
        <div class="infinite-list"  style="overflow:auto" >
        <div v-for="item in headData" v-bind:key="item.index" class="infinite-list-item" @click="searchMovie(item.MovieName)">
          <div style="width:5%">{{item.Irank}}</div>
          <div style="width:20%;color:purple;cursor:default">{{item.MovieName}}</div>
          <div style="width:30%">{{item.InsertDate}}</div>
          <div style="width:15%">{{item.ShowCountPercent}}</div>
          <div style="width:15%">{{item.ShowCount}}</div>
          <div style="width:15%">{{item.ShowCount_Eff}}</div>
        </div>
      </div>
      </div>
    </div>
    <div class="bottom">
      <div class="Bleft">
        <div class="bfrank">票房TOP50猫眼评分占比</div>
        <div id="mycharts1">
          <div     
            v-loading="loading1"
            element-loading-text="拼命加载中"
            element-loading-spinner="el-icon-loading"
            element-loading-background="rgba(0, 0, 0, 0.2)">
          </div>
        </div>
      </div>
      <div class="Bcenter">
        <div class="bfrank">票房TOP50淘票票评分占比</div>
        <div id="mycharts2">
          <div     
            v-loading="loading2"
            element-loading-text="拼命加载中"
            element-loading-spinner="el-icon-loading"
            element-loading-background="rgba(0, 0, 0, 0.2)">
          </div>
        </div>
      </div>
      <div class="Bright">
        <div class="bfrank">票房TOP50豆瓣评分占比</div>
        <div id="mycharts3">
          <div     
            v-loading="loading3"
            element-loading-text="拼命加载中"
            element-loading-spinner="el-icon-loading"
            element-loading-background="rgba(0, 0, 0, 0.2)">
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
      headData:[],
//------------------------------------------------------------
      Total:[],
//------------------------------------------------------------
      echarstMaoYan:[],
      echartsTPP:[],
      echartsDB:[],
//------------------------------------------------------------
      MYData:[
          {value:0,name:"0~6分"},
          {value:0,name:"6~7分"},
          {value:0,name:"7~8分"},
          {value:0,name:"8~9分"},
          {value:0,name:"9~10分"}
      ],
      TPPData:[
          {value:0,name:"0~6分"},
          {value:0,name:"6~7分"},
          {value:0,name:"7~8分"},
          {value:0,name:"8~9分"},
          {value:0,name:"9~10分"}
      ],
      DBData:[
          {value:0,name:"0~6分"},
          {value:0,name:"6~7分"},
          {value:0,name:"7~8分"},
          {value:0,name:"8~9分"},
          {value:0,name:"9~10分"}
      ],
      loading1:true,
      loading2:true,
      loading3:true
    };
  },
  created(){
    this.getHeadData()
    this.getEchartsData()
  },
  mounted() {
   
  },
  methods:{
    async getHeadData() {
      await this.$http.get('/list4/irank10').then(({data:res})=>{
        this.headData = res.data
      })
    },
    async getEchartsData() {
      await this.$http.get('/list').then(({data:res})=>{
        this.Total = res.data
        for(let k of this.Total) {
          this.echarstMaoYan.push(Number.parseFloat(k.MaoYanScore).toFixed(1))
          this.echartsTPP.push(Number.parseFloat(k.TaoPiaoPiaoScore).toFixed(1))
          this.echartsDB.push(Number.parseFloat(k.DouBanScore).toFixed(1))
        }
        this.getDB(this.echarstMaoYan,this.MYData)
        this.getDB(this.echartsTPP,this.TPPData)
        this.getDB(this.echartsDB,this.DBData)
        this.getEcharts('mycharts1',this.MYData)
        this.getEcharts('mycharts2',this.TPPData)
        this.getEcharts('mycharts3',this.DBData)
    }) 
    },
    searchMovie(dataName) {
      this.$router.push('/moviecontain')
      this.$store.commit('getDataName',dataName)
      window.sessionStorage.setItem('QjMovieName',dataName)
      window.sessionStorage.setItem('path','list4/info')
    },
    getDB(e,obj) {
      var key
      for(let k of e) {
        key = Number.parseFloat(k)
        if(key == 'None') {
        }else {
          if(key < 6) {
            obj[0].value++
          }else if( key>=6 && key<7) {
            obj[1].value++
          }else if(key>=7 && key <8) {
            obj[2].value++
          }else if(key>=8 && key <9) {
            obj[3].value++
          }else if(key>=9 && key <10) {
            obj[4].value++
          }
        }
      }
    },
    getEcharts(name,Data) {
      var myChart1 = this.$echarts.init(document.getElementById(name), null, {
        // width:400,
        height: 400,
      }); 
      myChart1.setOption({
        title: {
        },
        tooltip: {
          trigger: 'item'
        },
        legend: {
          orient: 'vertical',
          left: 'bottom'
        },
        series: [
          {
            // name: 'Access From',
            type: 'pie',
            radius: '50%',
            data:Data,
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
                  formatter:'{b} {c}部\n{d}%'
                }
              }
            }
          }
        ]
      })
    }
  }
}
</script>
<style lang="less" scoped>

.center {
    width: 100% !important;
    background-color: white;
    border-radius: 5px;
    flex-wrap: wrap;
    margin-bottom: 40px;
    align-content: flex-start;
    .top {
      width: 100%;
      height: 55%;
      overflow: hidden;
    }
    .bottom {
      width: 100%;
      height: 45%;
      display: flex;
      justify-content: space-between;
      div {
        width: 33%;
      }
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
  .bfrank{
   border-left: 4px solid purple;
   padding: 0px 10px;
   margin: 10px;
  }
  #bfranktop {
    border: 1px solid rgb(236, 236 , 236);
    margin: 10px;
    border-radius: 2px;
  }
  .header_index div:first-child{
    font-size: 16px;
    margin-bottom: 10px;
    margin-left: 0px;
  }
  #mycharts1,#mycharts2,#mycharts3 {
    border: 1px solid rgb(236, 236 , 236);
    margin: 10px;
    border-radius: 2px;
    width: 96%;
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
</style>