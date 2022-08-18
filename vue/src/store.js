import Vue from "vue"
import Vuex from 'vuex'
Vue.use(Vuex)

const store = new Vuex.Store({
 state:{
   bfrankdata:{},
   MovieTitle:'',
   QjMovieName:''
 },
 mutations:{
   getData_bfrd(state,str) {
     state.MovieTitle = str
   },
   getDataName(state,str) {
     state.QjMovieName = str
   }
 }
})
export default store