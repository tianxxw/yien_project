import Vue from 'vue'
import App from './App.vue'
import router from './router'
import 'element-ui/lib/theme-chalk/index.css'
import '@/assets/css/global.css'
import './plugins/element'
import ElementUI from 'element-ui'
import axios from 'axios'
import * as echarts from 'echarts'
import store from './store'
import infiniteScroll from 'vue-infinite-scroll'
Vue.use(infiniteScroll)

axios.defaults.baseURL = 'http://119.29.141.196:8889/yien'
axios.interceptors.request.use(config => {
  config.headers.Authorization = window.sessionStorage.getItem('token')
  return config
})
Vue.prototype.$echarts = echarts
Vue.prototype.$http = axios
Vue.config.productionTip = false
Vue.use(ElementUI)

new Vue({
  render: h => h(App),
  router:router,
  store:store
}).$mount('#app')
