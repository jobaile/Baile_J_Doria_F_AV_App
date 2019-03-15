export default {
    template: `
    <section>
    <div class="login-page">
        <div class="login-box">
            <form>
                <div class="cont_tabs_login">
                    <img src="images/logo-purple.png" alt="roku logo" id="loglogo">
                    <h2 class="active">Log In</h2>
                    <span class="linea_bajo_nom"></span>
                </div>
                <div class="cont_text_inputs">
                    <input v-model="input.username" type="text" class="input_form_sign d_block active_inp" placeholder="USERNAME" name="emauil_us" />
                    <input v-model="input.password" type="password" class="input_form_sign d_block  active_inp" placeholder="PASSWORD" name="pass_us" />  
                </div>
                <div class="login_btn">
                    <button v-on:click.prevent="login()" type="submit" class="btn_sign">Log In</button>
                </div>
            </form>
        </div>
    </div>
    </section>
     `,
 
     data() {
         return {
             input: {
                 username: "",
                 password: ""
             },

         }
     },
 
     methods: {
         login() {
            //console.log(this.$parent.mockAccount.username);
 
            if(this.input.username != "" && this.input.password != "") {
            // fetch the user from the DB
            // generate the form data
            let formData = new FormData();

             formData.append("username", this.input.username);
             formData.append("password", this.input.password);

             let url = `./admin/scripts/admin_login.php`;
 
             fetch(url, {
                    method: 'POST',
                    body: formData
                })
                 .then(res => res.json())
                 .then(data => {
                    if (typeof data != "object") { // means that we're not getting a user object back
                        console.warn(data);
                        console.error("authentication failed, please try again");
                        this.$emit("autherror", data);
                    } else {
                        this.$emit("authenticated", true, data[0]);
                        this.$router.replace({ name: "users" });
                    }
                })
             .catch(function(error) { 
                 console.log(error);
             });
        } else {
                 console.log("A username and password must be present");
            }
        }
    }
 }