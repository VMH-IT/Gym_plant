<template>
  <div id="app">
    <!-- <app-header></app-header> -->
    <router-view/>
    <!-- <app-footer></app-footer> -->

  </div>
</template>
<script>
  import HeaderView from "@/components/HeaderView.vue";
  import FooterView from "@/components/FooterView.vue";

  export default {
    components: {
      // "app-header": HeaderView,
      // "app-footer": FooterView,
    },
  }

</script>

<style>
  *{
    margin: 0;
    padding: 0;
  }
  @import url("https://fonts.googleapis.com/css?family=Poppins");
  @import url("https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css");
.Poppins {
  font-family: "Poppins";
  font-style: normal;
}
.fa{
  font-family: "FontAwesome";
}

* {
  margin: 0px;
  padding: 0px;
}

.center {
  display: flex;
  justify-content: center;
}

.flex {
  display: flex;
}

a {
  text-decoration: none;
}

li {
  list-style-type: none;
}

.color{
  color: #fecc09;
}

</style>
