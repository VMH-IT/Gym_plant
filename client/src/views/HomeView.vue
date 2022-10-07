<template>
  <div class="">
    <div class="main">
      <div class="slide">
        <img src="@/assets/slide-02.png" alt="">
      </div>
      <div class="block-intro">
        <div class="background">
          <img src="@/assets/body-01.jpg" alt="">
          <div class="text">
            <h1>Overview of the gym</h1>
            <div class="flex fa">
              <ul class="">
                <li class="fa-check">Professional gym space</li>
                <li class="fa-check">There are more than 20 senior coaches</li>
                <li class="fa-check">60+ coaches active 18/24h</li>
                <li class="fa-check">Get one-on-one tutoring with highly experienced trainers</li>
                <li class="fa-check">You can download exercises for free</li>
                <li class="fa-check">Regular trainees receive training 1/1 with the coach</li>
                <li class="fa-check">100+ reached the goal</li>
                <li class="fa-check">great team of coaches</li>
                <li class="fa-check">Highly effective exercises</li>
                <li class="fa-check">More than 80 modern exercise equipment</li>
                <li class="fa-check">Clean training environment</li>
                <li class="fa-check">easy access to great exercises</li>
              </ul>
              <ul>
                <li class="fa-check">150+ great exercises</li>
                <li class="fa-check">300+ people are practicing</li>
                <li class="fa-check">100+ reached the goal</li>
                <li class="fa-check">great team of coaches</li>
                <li class="fa-check">Highly effective exercises</li>
                <li class="fa-check">More than 80 modern exercise equipment</li>
                <li class="fa-check">Clean training environment</li>
                <li class="fa-check">easy access to great exercises</li>
                <li class="fa-check">fast progress rate</li>
                <li class="fa-check">high satisfaction rating</li>
              </ul>
            </div>
          </div>
        </div>
        <div >
          <h1>FitnessGYM CHECK ALL OUR CLUB SERVICES</h1>
        </div>
        

      </div>
      <div>
      
      </div>
    </div>
    <!-- <div class="background-main"></div> -->

  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from '@/components/HelloWorld.vue'

export default {
  name: 'HomeView',
  components: {
    HelloWorld
  }
}
</script>

<style scoped>
.slide img {
  width: 100%;
  height: auto;
}

/* .background-main {
  top: 0;
  width: -webkit-fill-available;
  height: -webkit-fill-available;
  position: sticky;
  background-image: url(@/assets/background.jpg);
  z-index: 0;
} */

.main {
  z-index: 2;
  position: relative;
}

.block-intro{
  background-color: #eaeaea;
  padding: 0px 15% 40px 15%;

}

.block-intro  img{
  height: auto;
  width: 105%;
}

.text{
  position: absolute;
  padding: 30px;
  top: 0;
}

.background{
  position: relative;
}

.background ul:first-child{
  margin-left:  0px;
}

.background ul {
  margin-left: 40px;
}

.fa li{
  margin: 15px 0px;
  font-size: 15px;
  color: #444;
}





.fa-check:before {
    content: "\f00c";
}
</style>
