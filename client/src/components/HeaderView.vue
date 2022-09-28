<template>
  <div class="Poppins">
    <header class="flex">
      <router-link to="/"
        ><img src="@/assets/Logo (1).png" alt="" class="logo"
      /></router-link>
      <div>
        <ul class="flex">
          <li></li>
          <li><router-link to="/" class="color">Home</router-link></li>
          <li><router-link to="/intro" class="color">intro</router-link></li>
          <li>
            <router-link to="/exercise" class="color">exercise</router-link>
          </li>
          <li><router-link to="/intro" class="color">intro</router-link></li>
          <li>
            <router-link to="/exercise" class="color">exercise</router-link>
          </li>
          <li><router-link to="/header" class="color">intro</router-link></li>
          <li>
            <router-link to="/exercise" class="color">exercise</router-link>
          </li>
          <li v-on:click="success = !success">login</li>
          <li></li>
        </ul>
        <input type="text" class="input" />
      </div>
    </header>
    <div v-show="success">
      <div class="background center">
        <div class="form-login">
          <div class="main">
            <div class="center">
              <div class="avata">
                <!--<img src="@/components/img/avata-user.png">-->
              </div>
            </div>
            <center>
              <h2>login</h2>
            </center>

            <div class="box">
              <div class="form-field">
                <input type="text" name="" class="form-input" placeholder=" " />
                <label class="from-label">Email</label>
              </div>
            </div>
            <div class="box">
              <div class="form-field">
                <input
                  type="password"
                  name="pass"
                  id="pass1"
                  class="form-input"
                  placeholder=" "
                />
                <label class="from-label">Password</label>
              </div>
            </div>
            <div>
              <div class="boder pw">
                <input
                  id="checkBox"
                  @click="pwd"
                  type="checkbox"
                  name="sport"
                />show pass
              </div>
              <div v-on:click="success = !success">
                <router-link to="/create">create account</router-link>
              </div>
            </div>
            <button class="bt">
              <router-link to="/admin">create account</router-link>
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "HeaderView",
  data() {
    return {
      success: false,
    };
  },

  methods: {
    pwd() {
      if (document.getElementById("checkBox").checked) {
        document.getElementById("pass1").type = "text";
        // x = false;
      } else {
        document.getElementById("pass1").type = "Password";
        // x = true;
      }
    },
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
  background-color: rgba(255, 255, 255, 0.735);
  z-index: 100;
}

.form-login {
  height: auto;
  border-radius: 5px;
  margin: 2% auto;
  box-shadow: 0 9px 50px hsl(20deg 67% 75% / 31%);
  padding: 0 7%;
  background-image: linear-gradient(
    -140deg,
    #fecc09 -42%,
    rgba(33, 33, 33, 0.696) 101%
  );
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

.form-input:not(:placeholder-shown) + .from-label,
.form-input:focus + .from-label {
  top: 0;
  left: 11px;
  padding: 0 10px;
  display: inline-block;
  background-color: white;
  color: 6a5af9;
  border: 1px solid rgb(255, 225, 0);
}
</style>