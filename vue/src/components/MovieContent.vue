<template>
 <div class="body">
    <div v-for="item in data1" :key="item.key" class="contain">
      <div class="left">
        <el-image
          style="width: 292px; height: 584px"
          :src="item.DefaultImage"
          >
        </el-image>
        <div class="Msg">
          <div style="font-size:24px;font-weight:700">{{item.MovieName}}</div>
          <div>上映日期：{{item.ReleaseTime == ''? '暂无资料':item.ReleaseTime}}</div>
          <div>点映日期：{{item.PointDate}}</div>
          <div>地区：{{item.Country}}</div>
          <div>作品类型：{{item.Genre}}</div>
          <div>平均票价：{{item.AvgBoxOffice == ''? '暂无资料':item.AvgBoxOffice+'元'}}</div>
          <div>场均人次：{{item.AvgAudienceCount == ''? '暂无资料':item.AvgAudienceCount}}</div>
          <div>上映天数：{{item.ReleaseDays == 'None'? '暂无资料':item.ReleaseDays.indexOf('-')?item.ReleaseDays:'暂未上映'}}</div>
          <div>点映天数：{{item.PointDays == 'None' ? '暂无资料':item.PointDays}}</div>
          <div>点映票房：{{item.BoxOfficePoint == 'None'? '暂无资料' : (item.BoxOfficePoint/Math.pow(10,4)).toFixed(2)+'万'}}</div>
          <div>累计票房：{{item.BoxOfficeToTal == 'None'? '暂无资料' : (item.BoxOfficeToTal/Math.pow(10,7)).toFixed(2)+'亿'}}</div>
          <div>累计场次：{{item.ShowCountALL == 'None'? '暂无资料' : (item.ShowCountALL/Math.pow(10,4)).toFixed(2)+'万'}}</div>
          <div>累计人次：{{item.AudienceCountALL == 'None'? '暂无资料' : (item.AudienceCountALL/Math.pow(10,8)).toFixed(2)+'亿'}}</div>
          <div>首映日票房：{{item.BoxOfficeFirstDay == 'None'? '暂无资料' : (item.BoxOfficeFirstDay/Math.pow(10,8)).toFixed(2)+'亿'}}</div>
          <div>首周票房：{{item.BoxOfficeFirstWeek == 'None'? '暂无资料' : (item.BoxOfficeFirstWeek/Math.pow(10,8)).toFixed(2)+'亿'}}</div>
          <div>首周末票房：{{item.BoxOfficeWeekEnd == 'None'? '暂无资料' : (item.BoxOfficeWeekEnd/Math.pow(10,8)).toFixed(2)+'亿'}}</div>
          <div>猫眼想看：{{item.MaoYanWantToSee == 'None' ? '暂无资料':item.MaoYanWantToSee+'人'}}</div>
          <div>猫眼评分：{{item.MaoYanScore == 'None' ? '暂无资料':item.MaoYanScore}}</div>
          <div>淘票票想看：{{item.TaoPiaoPiaoWantToSee == 'None' ? '暂无资料':item.TaoPiaoPiaoWantToSee+'人'}}</div>
          <div>淘票票评分：{{item.TaoPiaoPiaoScore == 'None' ? '暂无资料':item.TaoPiaoPiaoScore}}</div>
          <div>豆瓣想看：{{item.DouBanWantToSee == 'None' ? '暂无资料':item.DouBanWantToSee+'人'}}</div>
          <div>豆瓣评分：{{item.DouBanScore == 'None' ? '暂无资料':item.DouBanScore}}</div>
        </div>
      </div>
      <div class="right">
        <div class="top">
          <div class="bfrank1">票价波动</div>
          <div id="echarts1">
              <div>暂无数据</div>
          </div>
        </div>
        <div class="bottom">
          <div class="bfrank2">票房趋势</div>
          <div id="echarts2">
              <div>暂无数据</div>
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
   data1:[],
   str:'' ,
   time:'',
   ticket_price:'',
   path:'',
   title:''
  }
 },
 created() {
   this.str = window.sessionStorage.getItem('QjMovieName')
   this.path = window.sessionStorage.getItem('path')
   this.getData()
 },
  methods:{
    async getData() {
      await this.$http.post(`/${this.path}?MovieName=${this.str}`) 
      .then(({data:res})=>{
       this.data1 = res.data
       this.time = this.data1[0].ReleaseDate
       this.time = this.time.replace(/-/g,',')
      //  this.ticket_price = Number.parseInt(Math.floor(this.data1[0].AvgBoxOffice/10)*10)
       this.ticket_price = Number.parseInt(this.data1[0].AvgBoxOffice)
       if(!this.data1[0].AvgAudienceCount) {
        this.data1[0].AvgAudienceCount = ''
       }
       if(!this.data1[0].ReleaseTime) {
        this.data1[0].ReleaseTime = ''
       }
       if(!this.data1[0].AvgBoxOffice) {
        this.data1[0].AvgBoxOffice = ''
        this.$nextTick(()=>{
          this.getEchartys1()
        })
       }else {
          this.$nextTick(()=>{
            this.getEchartys1(this.time,this.ticket_price)
        })
       }

      })
    },
    getEchartys1(time,price) {
      if(time == undefined || price == undefined) {
        return true
      }else {
      var myChart = this.$echarts.init(document.getElementById('echarts1'),null,{
        height:270
      });
      function randomData() {
        before = new Date(+before + oneDay);
        value = price + Math.random() * 17 - 10;
        nT = `${now.getFullYear() },${now.getMonth()+1},${now.getDate()}`
        bT = `${before.getFullYear()},${before.getMonth()+1},${before.getDate()}`
        if(nT == bT) {
          clearInterval(dt)
        }
        return {
          name: before.toString(),
          value: [
            [before.getFullYear(), before.getMonth() + 1, before.getDate()].join('/'),
            Math.abs(Math.round(value))
          ]
        };
      }
      let data = [];
      let before = new Date(time);
      let now = new Date()
      let nT=''
      let bT=''
      let echartsTitle = '';
      let oneDay = 24 * 3600 * 1000;
      let value = Math.random() *1000;
      for (var i = 0; i < 160; i++) {
        data.push(randomData());
      }
      myChart.setOption({
        title: {
          
        },
        tooltip: {
          trigger: 'axis',
          formatter: function (params) {
            params = params[0];
            var date = new Date(params.name);
            return (
              date.getDate() +
              '/' +
              (date.getMonth() + 1) +
              '/' +
              date.getFullYear() +
              ' : ' +
              params.value[1]
            );
          },
          axisPointer: {
            animation: false
          }
        },
        xAxis: {
          type: 'time',
          splitLine: {
            show: false
          }
        },
        yAxis: {
          type: 'value',
          boundaryGap: [0, '100%'],
          splitLine: {
            show: true
          }
        },
        series: [
          {
            name: 'Fake Data',
            type: 'line',
            showSymbol: false,
            label:{
              show:true,
              position:'top'
            },
            data: data
          }
        ]
      })
      let dt = setInterval(function () {
        for (var i = 0; i < 5; i++) {
          data.shift();
          data.push(randomData());
        }
        myChart.setOption({
          series: [
            {
              data: data
            }
          ]
        });
      }, 1000);}
    },
    getEchartys2() {
      // var myChart = this.$echarts.init(document.getElementById('echarts2'),null,{
      //   height:300
      // });
      // myChart.setOption({

      // })
    }
  }
}
</script>
<style lang="less" scoped>
  .body {
   width: 100%;
   background-color: white;
   overflow: hidden;
   margin-bottom: 30px;
   border-radius: 2px;
  }
  .contain {
   width: 98%;
   margin: 15px auto;
   display: flex;
   justify-content: space-between;
  }
  .left {
   width: 45%;
   display: flex;
   justify-content: left;
   .Msg {
    margin: -5px 2px 0px 10px;
    font-size: 18px;
    div {
     margin-top: 1.5px;
    }
   }
  }
  .right {
    flex: 1;
    border: 1px solid #ececec;
  }
  .bfrank1{
    border-left: 4px solid purple;
    padding: 0px 10px;
    margin: 10px;
  }
  .bfrank2{
    border-left: 4px solid purple;
    padding: 0px 10px;
    margin: -20px 10px 10px 10px;
  }
  .top,.bottom {
    height: 50%;
    width: 100%;
  }
  #echarts1, #echarts2{
    width: 100%;
    height: 90%;
    margin-top: -20px;
        text-align: center;
    font-size: 40px;
    display: flex;
    justify-content: center;
    align-content: center;
    position: relative;
    div{
      position: absolute;
      left: 50%;
      top: 50%;
      transform: translate(-50%,-50%);
      color: gray;
      user-select: none;
    }
  }
</style>