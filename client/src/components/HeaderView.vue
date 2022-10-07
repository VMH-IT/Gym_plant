<template>
  <div class="Poppins">
    <header class="flex">
      <router-link to="/"><img src="@/assets/Logo (1).png" alt="" class="logo" /></router-link>
      <div>
        <ul class="flex color">
          <li>
            <router-link to="/" class="color">Home</router-link>
          </li>
          <li>
            <router-link to="/intro" class="color">intro</router-link>
          </li>
          <li>
            <router-link to="/exercise" class="color">exercise</router-link>
          </li>
          <li>
            <router-link to="/exercise" class="color">contact</router-link>
          </li>
          <li>
            <router-link to="/main" class="color">main</router-link>
          </li>
          <li class="color" v-on:click="success = !success" v-if="currentUser.token === ''">login</li>
          <li class="color" v-if="currentUser.token !== ''">post</li>
          <li class="color" v-if="currentUser.token !== ''">follow</li>
          <li class="color" v-if="currentUser.token !== ''">
            <router-link to="/admin/listgymmer" class="color">admin</router-link>
          </li>
          <li class="color" v-if="currentUser.token !== ''" v-on:click="out = !out">out</li>
          <li></li>
        </ul>
        <input type="text" class="input" />
      </div>
    </header>

    <div v-show="out" class="background center block-out">
      <div class="out">
        <div >
          <p class="color">Do you want to sign out?</p>
          <button v-on:click="out = !out">no</button>
          <button v-on:click="signOut">yes</button>
        </div>
      </div>
    </div>

    <div v-show="success" class="background center">
      <div class="form-login">
        <div class="main">
          <div class="center">
            <div class="avata">
            </div>
          </div>
          <center>
            <h2>login</h2>
          </center>
          <div class="box">
            <div class="form-field">
              <input type="text" v-model="currentUser.email" name="" class="form-input" placeholder=" " />
              <label class="from-label">Email</label>
            </div>
          </div>
          <div class="box">
            <div class="form-field">
              <input type="password" v-model="currentUser.password" name="pass" id="pass1" class="form-input" placeholder=" " />
              <label class="from-label">Password</label>
            </div>
          </div>
          <div>
            <div class="boder pw">
              <input id="checkBox" @click="pwd" type="checkbox" name="sport" />show pass
            </div>
            <div v-on:click="success = !success">
              <router-link to="/create">create account</router-link>
            </div>
          </div>
          <button class="bt" v-on:click="signInClone">login</button>
        </div>
      </div>
    </div>
    
  </div>
</template>

<script>
import { mapActions, mapState, } from 'vuex';
// import { mapMutations, mapState } from 'vuex'

import axios from 'axios';
export default {
  name: "HeaderView",
  data() {
    return {
      email: '',
      password: '',
      success: false,
      out: false,
    };
  },
  computed: mapState(["currentUser"]),
  methods: {
    ...mapActions(["signIn"]),
    // mapMutations(['signOut']),
    signInClone(){
      this.success = !this.success
      this.signIn()
    },
    signOut(state) {
      this.$store.commit("signOut");
    },


    pwd() {
      if (document.getElementById("checkBox").checked) {
        document.getElementById("pass1").type = "text";
      } else {
        document.getElementById("pass1").type = "Password";
      }
    },
    // login(){
    //   console.log("123 login");
    //   this.$store.dispatch("AUTH/login",{email: this.email,password: this.password});
    // },
    home() {
      this.$router.push("/");
    },


  },

};
</script>

<style scoped>
header {
  background: #5a5a5acc;
  padding: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

.logo {
  margin-left: 80px;
  height: 60px;
  width: auto;
}

ul li {
  list-style-type: none;
  padding: 10px 30px;
}

ul li .color {
  color: #fecc09;
}

ul li .color:hover {
  color: #999;
}

li input {
  width: 300px;
}

.flex {
  display: flex;
}

.input {
  margin-left: 10%;
  width: 60%;
  height: 30px;
  border: none;
  border-radius: 6px;
}

.background {
  position: fixed;
  width: -webkit-fill-available;
  height: -webkit-fill-available;

  background-color:#0e0b01a1;
  z-index: 100;
  top: 0;
}

.form-login {
  height: 650px;
  border-radius: 5px;
  margin: 6% auto;
  box-shadow: 0 9px 50px hsl(20deg 67% 75% / 31%);
  padding: 0 5%;
  background-image: linear-gradient(-140deg,
      #fecc09 -42%,
      rgba(33, 33, 33, 0.696) 101%);
  transition: 2s;
}

.avata {
  width: 100px;
  height: 100px;
  border-radius: 50%;
  margin: 65px 90px 30px 90px;
  background-color: white;
  border: solid 4px black;
}

.avata img {
  width: 100%;
  height: 100%;
  border-radius: 50%;
}

.boder {
  margin-top: 30px;
}

select {
  width: 188px;
  margin: 10px 50px;
}

.box {
  margin: 20px 0px;
}

.bt {
  padding: 10px 110px;
  border-radius: 6px;
  border: none;
}

.form-input {
  border: 1px solid #eee;
  border-radius: 4px;
  width: 87%;
  height: 40px;
  padding: 0 20px;
  transition: 0.25s ease;
  outline: none;
}

.form-input:focus {
  border-color: #ffd500;
}

.form-field {
  position: relative;
}

.from-label {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  left: 20px;
  user-select: none;
  color: #999;
  pointer-events: none;
  transition: 0.25s ease;
  border-radius: 4px;
}

.form-input:not(:placeholder-shown)+.from-label,
.form-input:focus+.from-label {
  top: 0;
  left: 11px;
  padding: 0 10px;
  display: inline-block;
  background-color: white;
  color: 6a5af9;
  border: 1px solid rgb(255, 225, 0);
}

.block-out{
  align-items: center;
  display: flex;
}

.out{
  width: 400px;
  height: 200px;
  border-radius: 12px;
  background-color: rgb(71, 70, 70);
 
}

.out div{
  padding: 30px;
}

.out button{
  margin:50px 35px ;
  height: 40px;
  width: 100px;
  border: 1px solid #fecc09; 
  border-radius: 4px ;
  color: #fecc09;
  background-color: rgba(238, 238, 238, 0);
}



</style>