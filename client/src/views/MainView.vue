<template>
   <form action="" @sumbmit.prevent="sumbmit">
    <label for="">name</label>
    <input type="text">
    <label for="">email</label>
    <input type="text">
    <label for="">pass</label>
    <input type="text">
    <label for="">enter pass</label>
    <input type="text">
    <input type="submit" value="enter">

   
   </form>
</template>
<script>
   export default{
    methods:{
        sumbmit(e){
            e.preventdefault()
            console.log('sumbmit')
        }
    }
   }

</script>
<style scoped>
    
</style>