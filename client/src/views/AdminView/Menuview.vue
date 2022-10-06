<template>
    <div class=" Poppins">
        <div class="menu">
            <img src="@/assets/Logo (1).png" alt="">
            <div class="Dashboard">Dashboard</div>
            <div class="title-menu  end" v-on:click="list = !list ,arrow = !arrow"  >list <div v-bind:class="{arrow: arrow}" class="size">></div></div>
            <ul v-show="list">
                <li class="item-menu"><router-link to="/admin/listpt">PT</router-link></li>
                <li class="item-menu"><router-link to="/admin/listgymmer">Gymmer</router-link></li>
                <li class="item-menu"><router-link to="/admin/listExercise">Exercise</router-link></li>
            </ul>
            <div class="title-menu">tool</div>
            <ul>
                <li class="item-menu">PT</li>
                <li class="item-menu">Gymmer</li>
                <li class="item-menu">Exercise</li>
                <li class="item-menu"><router-link to="/">Out</router-link></li>
            </ul>
        </div>
    </div>
</template>
<script>
    export default {
        data(){
            return{
                list: false,
                arrow: false
            }
        },
    }

</script>
<style scoped>
.menu {
    height: 100%;
    background-color: #1E1E2D;
}

.menu img {
    width: 85px;
    height: auto;
    padding: 10px 70px;
    background-color: #1B1B28;
}

.menu .item-menu {
    padding: 10px 50px;
    color: white;
}

.Dashboard{
    color: white;
    padding: 30px 20px;
}

.title-menu{
    color:#ffd500 ;
    padding: 10px 20px 10px ;
    background-color: #1B1B28;
}

.menu .item-menu a {
    color: white;
}

.menu .item-menu a:hover{
    color:#ffd500;
}

.size{
    size: 30px;
}

.arrow{
    transform: rotate(90deg);
}

.end{
    display: flex;
    justify-content: space-between;
}


</style>