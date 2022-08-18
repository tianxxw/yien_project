import Vue from "vue";
import VueRouter from "vue-router";
import Ranking from '@/components/Ranking.vue'
import Home from '@/components/home.vue'
import Market from '@/components/Market.vue'
import MovieArrangement from '@/components/MovieArrangement.vue'
import CinemaFilm from '@/components/CinemaFilm.vue'
import FilmArrangement from '@/components/FilmArrangement.vue'
import BfRank from '@/components/bfRank.vue'
import About from '@/components/About.vue'
import Movie from '@/components/Movie.vue'
import Film from '@/components/film.vue'
import MovieContain from '@/components/MovieContent.vue'


Vue.use(VueRouter)
const router = new VueRouter({
 routes:[
  {path:'/',redirect:'/Home'},
  {path:'/home',component:Home,children:[
   {path:'/industrymarket',component:Ranking},
   {path:'/boxofficemarket',component:Market},
   {path:'/cinemafilmrank',component:CinemaFilm},
   {path:'/boxofficerank',component:BfRank},
   {path:'/filearrangement',component:FilmArrangement},
   {path:'/moviearrangement',component:MovieArrangement},
   {path:'/movie',component:Movie},
   {path:'/film',component:Film},
   {path:'/moviecontain',component:MovieContain}
  ],
   redirect:'/industrymarket'
  },
  {path:'/about',component:About}
 ]
})
export default router