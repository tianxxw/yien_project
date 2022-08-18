<template>
  <div class="container">
    <div class="container_header">
      <div>
        <img src="../assets/image/2.jpeg" alt="">
        <div>赵冬兰</div>
        <div>后端开发</div>
      </div>
      <div><img src="../assets/image/1.jpeg" alt="">
      <div>张任涛</div>
      <div>前端开发</div>
      </div>
      <div><img src="../assets/image/3.jpeg" alt=""><div>陈洁</div>
      <div>python爬取</div></div>
      <div><img src="../assets/image/4.jpeg" alt=""><div>郭雪</div>
      <div>mysql管理</div>
      </div>
    </div>
    <svg class="text">
         <defs>
          <linearGradient id="geekColor" gradientTransform="rotate(90)">
           <stop offset="0%" stop-color="#91bd3a">
            <animate 
              attributeName="stop-color" 
              values="#91bd3a;#12cad6;#91bd3a"
              dur="2s"
              begin="3s"
              repeatCount="indefinite"
            ></animate>
           </stop>
           <stop offset="100%" stop-color="#12cad6">
            <animate
              attributeName="stop-color"
              values="#12cad6;#91bd3a;#12cad6"
              dur="19s"
              begin="3s"
              repeatCount="indefinite"
            ></animate>
           </stop>
          </linearGradient>
         </defs>
         <text class="logo_text" x="50%" y="50%"  text-anchor="middle" dominant-baseline="middle">
          连滚带爬
         </text>
    </svg>
  </div>
</template>
<script>
export default {
 
}
</script>
<style lang="less" scoped>
.container_header {
  width: 100%;
  height: 50%;
  display: flex;
  justify-content: space-around;
  div {
    img {
      margin-top: 100px;
      width: 100%;
      height: 150px;
    }
    div {
            text-align: center;
      color: white;
    }
  }
}
.container {
     background: #2f3542;
    height: 100vh;
    width: 100%;
    margin: 0 auto;
}
.logo_text {
    font-family: "PingFang SC";
    font-size: 120px;
    fill: none;
    text-align: center;
    stroke: url("#geekColor");
    stroke-width: 1;
    stroke-dasharray: 10 800;
    stroke-dashoffset: 10;
    animation: 3s linear 0s drawing forwards;
    user-select: none;
}
.text {
    width: 100%;
    margin: 0 auto;
}
@keyframes drawing {
    to {
        stroke-dasharray: 800;
        stroke-dashoffset: 0;
    }
}
</style>