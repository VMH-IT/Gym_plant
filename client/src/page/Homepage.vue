<template>
  <div>
    <app-header class="head"></app-header>
    <router-view></router-view>
    <app-footer class="footers"></app-footer>
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

<style scoped>
  .head{
    z-index: 3;
    position: sticky;
    top: 0;

  }

  .footers{
    z-index: 1;
    position: relative;
  }
</style>


  