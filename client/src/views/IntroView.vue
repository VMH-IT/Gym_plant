<template>
  <div>
    <!-- <app-header></app-header> -->
    <div class="intro">
      <div class="box">
        <div class="group flex">
          <div class="item-intro"></div>
          <div class="item-intro"></div>
        </div>
        <div class="group flex">
          <div class="item-intro"></div>
          <div class="item-intro"></div>
        </div>
      </div>
    </div>
    <!-- <app-footer></app-footer> -->
  </div>
</template>

<script>
// import HeaderView from "@/components/HeaderView.vue";
// import FooterView from "@/components/FooterView.vue";

export default {
  components: {
    // "app-header": HeaderView,
    // "app-footer": FooterView,
  },
};
</script>


<style scoped>
.intro {
  width: 80%;
  margin-left: 10%;
}

.item-intro:first-child {
  margin: 6.5% 3.5% 6.5% 6.5%;
}
.item-intro {
  width: 90%;
  margin: 6.5% 6.5% 6.5% 3.5%;
  height: 600px;
  background-color: antiquewhite;
  border-radius: 16px;
}

.item-intro:focus {
  position: absolute;
  width: 100%;
  height: 100%;
  background-color: bisque;
}
</style>