<template>
    <div class="flex">
        <app-menu></app-menu>
        <div class="main">
            <app-head></app-head>
            
        </div>
    </div>

</template>

<script>
import menu from "./Menuview.vue"
import head from "./headview.vue"
export default {
    components: {
        "app-head": head,
        "app-menu": menu,
    },
}
</script>

<style scoped>
.main {
    width: -webkit-fill-available;
    background-color: antiquewhite;
}
</style>