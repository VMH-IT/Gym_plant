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
      }
    ],
  },
  {
    path: '/login',
    component: import('../views/AboutView.vue'),
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
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
  },
  {
    path: '/intro',
    name: 'intro',
    component: () => import('../views/IntroView.vue')
  },
  {
    path: '/exercise',
    name: 'exercise',
    component: () => import('../views/ExerciseView.vue')
  },

  // {
  //   path: '/header',
  //   name: 'header',
  //   component: () => import('../components/HeaderView.vue')
  // },
  {
    path: '/admin',
    name: 'admin',
    component: () => import('../views/AdminView.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
