import Vue from 'vue'
import VueRouter from 'vue-router'
// import HomeView from '../views/HomeView.vue'
import Homepage from '@/page/Homepage.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '',
    component: Homepage,
    children: [
      {
        path: '/',
        component: ()=> import('@/views/HomeView.vue'),
      },
      {
        path: '/intro',
        component: () => import('@/views/IntroView.vue'),
      },
      {
        path: '/exercise',
        component: () => import('../views/ExerciseView.vue'),
      },
    ],
  },
  

  // {
  //   path: '/',
  //   name: 'home',
  //   component: HomeView
  // },
  {
    path: '/create',
    name: 'create',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/CreateAccount.vue')
  },
  {
    path: '/intro',
    name: 'intro',
    component: () => import('../views/IntroView.vue')
  },
  {
    path: '/main',
    name: 'main',
    component: () => import('../views/MainView.vue')
  },
  

  // {
  //   path: '/header',
  //   name: 'header',
  //   component: () => import('../components/HeaderView.vue')
  // },
  
  {
    path: '/admin/listGymmer',
    name: 'listGymmer',
    component: () => import('../views/AdminView/ListGymmerView.vue')
  },
  {
    path: '/admin/listpt',
    name: 'listpt',
    component: () => import('../views/AdminView/ListPtView.vue')
  },
  {
    path: '/admin/listExercise',
    name: 'listExercise',
    component: () => import('../views/AdminView/ListExerciseView.vue')
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
