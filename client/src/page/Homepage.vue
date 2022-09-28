<template>
  <div>
    <app-header></app-header>
    <router-view></router-view>
    <app-footer></app-footer>
  </div>
</template>
  
  <script>
// @ is an alias to /src
import HeaderView from "@/components/HeaderView.vue";
import FooterView from "@/components/FooterView.vue";

export default {
  name: "Homepage",
  components: {
    "app-footer": FooterView,
    "app-header": HeaderView,
  },
};
</script>
  