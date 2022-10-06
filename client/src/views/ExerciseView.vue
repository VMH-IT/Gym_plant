<template>
    <div>
        <div id="show-blogs">
            <h1>all</h1>
            <div v-for="blog in blogs" class="single-blos">
                <h2>{{blog.title}}</h2>
                <article>{{blog.body}}</article>
            </div>
        </div>
    </div>
</template>
<script>
    export default {
        data(){
            return{
                blogs:[]
            }
        },
        created(){
            this.$http.get('https://jsonplaceholder.typicode.com/posts').then(function(data){
                this.blogs = data.body
                console.log(data);
            })
        },
        
    }
</script>