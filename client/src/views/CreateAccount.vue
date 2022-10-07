<template>
  <div class="about Poppins">
    <div class="main flex ">
      <div class="img">
        <div class="background">
          <router-link to="/"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor"
              class="bi bi-box-arrow-in-left" viewBox="0 0 16 16">
              <path fill-rule="evenodd"
                d="M10 3.5a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-2a.5.5 0 0 1 1 0v2A1.5 1.5 0 0 1 9.5 14h-8A1.5 1.5 0 0 1 0 12.5v-9A1.5 1.5 0 0 1 1.5 2h8A1.5 1.5 0 0 1 11 3.5v2a.5.5 0 0 1-1 0v-2z" />
              <path fill-rule="evenodd"
                d="M4.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H14.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z" />
            </svg></router-link>
          <div class="text">
            <div class="center">
              <img src="@/assets/Logo (1).png" alt="">
            </div>
            <h3 class="center">REGISTER NOW</h3>
            <h4 class="center">to have the body as you want</h4>
          </div>
        </div>
      </div>
      <!-- ----------- -->
      <div class="rigth ">
        <div>
          <form class=" flex">
            <!-- block left -->
            <div class="block-input">
              <div>
                <div class="form-field">
                  <input type="text" name="" class="form-input" placeholder=" " v-model="user.first_name">
                  <label class="from-label">first name :</label>
                </div>
                <div class="form-field">
                  <input type="text" name="" class="form-input" placeholder=" " v-model="user.last_name">
                  <label class="from-label">last name :</label>
                </div>
                <div class="form-field">
                  <input type="text" name="" class="form-input" placeholder=" " v-model="user.email">
                  <label class="from-label">email :</label>
                </div>
                <div class="gender">
                  <label class="">gender</label>
                  <div class='content'>
                    <div class="dpx">
                      <div class='py'>
                        <label>
                          <input type="radio" value="man" class="option-input radio" name="example"
                            v-model="user.gender" />
                          man
                        </label>
                        <label>
                          <input type="radio" value="women" class="option-input radio" name="example"
                            v-model="user.gender" />
                          women
                        </label>
                        <label>
                          <input type="radio" value="other" class="option-input radio" name="example"
                            v-model="user.gender" />
                          other
                        </label>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- block right -->
            <div class="block-input">
              <div>
                <div class="form-field">
                  <input type="text" name="" class="form-input" placeholder=" ">
                  <label class="from-label">age :</label>
                </div>
                <div class="flex color title-level">
                  <h3></h3>
                  <div class="note">
                    <div>
                      <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                      class="bi bi-question-lg" viewBox="0 0 16 16">
                      <path fill-rule="evenodd"
                        d="M4.475 5.458c-.284 0-.514-.237-.47-.517C4.28 3.24 5.576 2 7.825 2c2.25 0 3.767 1.36 3.767 3.215 0 1.344-.665 2.288-1.79 2.973-1.1.659-1.414 1.118-1.414 2.01v.03a.5.5 0 0 1-.5.5h-.77a.5.5 0 0 1-.5-.495l-.003-.2c-.043-1.221.477-2.001 1.645-2.712 1.03-.632 1.397-1.135 1.397-2.028 0-.979-.758-1.698-1.926-1.698-1.009 0-1.71.529-1.938 1.402-.066.254-.278.461-.54.461h-.777ZM7.496 14c.622 0 1.095-.474 1.095-1.09 0-.618-.473-1.092-1.095-1.092-.606 0-1.087.474-1.087 1.091S6.89 14 7.496 14Z" />
                    </svg>
                    </div>
                    <div class="note-hover">
                      <div class="none">
                          <h2>note 1:</h2>
                        <div>lever 1: newbie <p>who have never practiced</p></div>
                        <div>lever 1: </div>
                        <div>lever 3: professional practitioner</div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="form-field">
                    <select name="" id="" class="form-input select-lever">
                      <option value=""></option>
                      <option value="1">lever 1</option>
                      <option value="2">lever 2</option>
                      <option value="3">lever 3</option>
                    </select>
                    <label for="" class="from-label">your level</label>
                  </div>
                <div class="flex bmi">
                  <div class="form-input-bmi">
                    <div class="form-field">
                      <input type="int" name="" class="form-input " placeholder=" " v-model="user.height">
                      <label class="from-label">height(cm) :</label>
                    </div>
                  </div>
                  <div class="form-input-bmi">
                    <div class="form-field">
                      <input type="int" name="" class="form-input " placeholder=" " v-model="user.weight">
                      <label class="from-label">weight(kg) :</label>
                    </div>
                  </div>
                </div>
                <div>
                  <h3 class="color">BMI index:</h3>
                </div>

              </div>
            </div>
          </form>
          <!-- ------- -->
          <div class="btn">
            <button class="btt color" @click="avataFunc">create</button>
          </div>
        </div>
      </div>
    </div>
    <div class="pass-pw" v-show="success">
      <div class="pass">
        <div>
          <div class="exit" @click="closePopUp">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-x"
              viewBox="0 0 16 16">
              <path
                d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
            </svg>
          </div>
          <div class="form-pass flex color">
            <div class="password">
              <div class="avata-wrapper">
                <b>{{avata}}</b>
              </div>
              <h3>name: {{user.first_name}} {{user.last_name}}</h3>
              <p>Email : {{user.email}}</p>
              <p>gender : {{user.gender}}</p>
              <P>height : {{user.height}} cm</P>
              <p>weight : {{user.weight}} kg</p>
            </div>
            <div class="password">
              <!-- <div class=" center">enter password</div> -->
            <div class="form-field">
              <input type="password" id="pass1" name="" class="form-input" placeholder=" " v-model="user.password">
              <label class="from-label">password :</label>
            </div>
            <div class="form-field">
              <input type="password" id="pass2" name="" class="form-input" placeholder=" " v-model="user.Confirm">
              <label class="from-label">Confirm password :</label>
            </div>
            <input id="checkBox" @click="pwd" type="checkbox" name="sport" />show pass
            <div class="btn">
              <button class="btt" v-on:click="signUp">Đăng Ký</button>
            </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>

export default ({
  data() {
    return {
      success: false,
      user: {
        height: '',
        weight: '',
        first_name: '',
        last_name: '',
        email: '',
        gender: '',
        age: '',
        password: '',
        Confirm: '',
        avata: '',
      },
      last_name: '',
      first_name: '',


      bmi: ''
    }
  },
  methods: {
    closePopUp() {
      this.success = !this.success
      console.log(this.success)
    },

    avataFunc() {
      console.log(this.success)
      this.success = !this.success
      console.log(this.success)
      // console.log(this.fuser.irst_name)
      // console.log(this.last_name)
      this.first_name = this.user.first_name.substring(0, 1).toUpperCase();
      this.last_name = this.user.last_name.substring(0, 1).toUpperCase();
      this.avata = this.first_name + this.last_name
    },
    BMI() {
      this.bmi = this.height + this.methods
    },
    pwd() {
      if (document.getElementById("checkBox").checked) {
        document.getElementById("pass1").type = "text";
      } else {
        document.getElementById("pass1").type = "Password";
      }
      if (document.getElementById("checkBox").checked) {
        document.getElementById("pass2").type = "text";
      } else {
        document.getElementById("pass2").type = "Password";
      }
    },
    async signUp() {
      const respone = await axios.post('/api/v1/user1/user', {
        first: this.user.first_name,
        last: this.user.last_name,
        email: this.user.email,
        gender: this.user.gender,
        age: this.user.age,
        height: this.user.height,
        weight: this.user.weight,
        password: this.user.password,
        password_confirmation: this.user.Confirm
      });
      console.log(respone)
      alert("Đăng ký thành công! Quay lại trang đăng nhập");
      this.$router.push('/login')
    }
  }
})
</script>


<style scoped>
@import url('https://fonts.googleapis.com/css?family=Poppins');

.Poppins {
  font-family: 'Poppins';
  font-style: normal;
}

.color {
  color: #fecc09;
}

form {
  margin: 0px;
  padding: 0px;
  width: 100%;
  border-radius: 24px;
  border-radius: 50%;
}

.text {
  padding-top: 40%;
}

.center {
  justify-content: center;
  display: flex;
  margin: 10px;
  color: #fecc09;
}

.center img {
  width: 200px;
  height: auto;
}

.flex {
  display: flex;
}

.main {
  margin: 40px 200px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.4);
  background-color: #bababa1c;
}

.img {
  height: auto;
  width: 450px;
  /* background-image: url(); */
  background-repeat: no-repeat;
  background-size: cover;
}

.background {
  top: 0;
  width: 100%;
  height: 100%;
  background-color: #211e1ec7;
}

.background svg {
  padding: 20px 30px;
  color: #fecc09;
}

.rigth {
  width: -webkit-fill-available;
  border-radius: 21px;
}

.block-input {
  width: 45%;
  padding: 5% 5% 0 5%;

}

.form-input {
  border: 1px solid #eee;
  border-radius: 4px;
  width: 100%;
  height: 40px;
  transition: 0.25s ease;
  outline: none;
  padding-left: 20px;
}

.bmi {
  margin-top: 35px;
}

.form-input-bmi:first-child {
  margin-left: 0%;
  margin-right: 2.5%;
}

.form-input-bmi {
  width: 47.5%;
  margin-left: 2.5%;
}


.form-input:focus {
  border-color: #6a5af9;
}

.form-field {
  display: block;
  position: relative;
  margin-top: 40px;
}

.form-field:first-child {
  margin-top: 0px;

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
  top: -15px;
  left: 11px;
  padding: 0 10px;
  display: inline-block;
  background-color: #fff0;
  color: black;
  color: #ffd500;
  left: -10px;
}

.title-level {
  justify-content: space-between;
}

.gender {
  color: #fecc09;
  margin-top: 20px;
}

.dpx {
  display: flex;
  align-items: center;
  margin-left: 20px;
}

.py-lv label {
  line-height: 40px;
  color: #999;
}

.py label {
  display: block;
  line-height: 40px;
  color: #999;
}

.btt {
  width: 50%;
  border: none;
  height: 40px;
  border-radius: 12px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.4);

}

.btn {
  width: 100%;
  margin: 20px;
  justify-content: center;
  display: flex;
}

.select{
  width: 100%;
  height: 40px;
}

.select-lever{
  /* width: 100%; */
  /* height: 40px; */
  border: 1px solid #eee;
  /* padding:20px ; */
  /* outline: none; */
  background-color: white;
  /* border-radius: 6px; */

}

/* ----- style note -----*/ 
.note {
  display: flex;
  align-items: center;
}

.none{
  display:none;
  padding: 40px;
}
.note:hover .none{
  display: block;
  padding: 20px;
}
.note:hover .note-hover{
  display: block;
  top: 170px;
  visibility: visible;
  transition: .2s all ease-in-out;
  z-index: 501;
  right: 150px;
  position: absolute;
  width: 600px;
  height: 200px;
  background-color: #999;
}
.note-hover{
  top: 250px;
  visibility: hidden;
  transition: .2s all ease-in-out;

}


/* ----- style pass -----*/ 

.password {
  width: 300px;
}

.pass {
  height: 300px;
  width: 800px;
  padding: 20px 20px 20px 0px;
  background: linear-gradient(120deg, #383745 50%, #22202B 50%);
  border-radius: 16px;
  z-index: 1000;

}

.pass-pw {
  display: flex;
  justify-content: center;
  align-items: center;
  width: -webkit-fill-available;
  height: -webkit-fill-available;
  position: absolute;
  top: 0px;
  background-color: #878279a6;

}

.form-pass {
  padding: 0 60px;
  justify-content: space-between;
}

.avata-wrapper {
  width: 100px;
  height: 100px;
  border-radius: 50%;
  background-color: #9faab7;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 2rem;
}

.exit {
  display: flex;
  justify-content: end;
  color: #fecc09;
}

/*-----------*/

.option-input {
  -webkit-appearance: none;
  -moz-appearance: none;
  -ms-appearance: none;
  -o-appearance: none;
  appearance: none;
  position: relative;
  top: 6.5px;
  right: 0;
  bottom: 0;
  left: 0;
  height: 25px;
  width: 25px;
  transition: all 0.15s ease-out 0s;
  background: #cbd1d8;
  border: none;
  color: #fff;
  cursor: pointer;
  display: inline-block;
  margin-right: 0.5rem;
  outline: none;
  position: relative;
  z-index: 1000;
}

.option-input:hover {
  background: #9faab7;
}

.option-input:checked {
  background: #fecc09;
}

/*.option-input:checked::before {
width: 25px;
height: 25px;
display:flex;
content: '\f00c';
font-weight:bold;
position: absolute;
align-items:center;
justify-content:center;
font-family:'Font Awesome 5 Free';
}*/

.option-input:checked::after {
  -webkit-animation: click-wave 0.65s;
  -moz-animation: click-wave 0.65s;
  animation: click-wave 0.65s;
  background: #fecc09;
  content: '';
  display: block;
  position: relative;
  z-index: 100;
}

.option-input.radio {
  border-radius: 50%;
}

.option-input.radio::after {
  border-radius: 50%;
}

@keyframes click-wave {
  0% {
    height: 40px;
    width: 40px;
    opacity: 0.35;
    position: relative;
  }

  100% {
    height: 200px;
    width: 200px;
    margin-left: -80px;
    margin-top: -80px;
    opacity: 0;
  }
}
</style>
