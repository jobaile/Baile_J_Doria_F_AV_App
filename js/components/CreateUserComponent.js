export default {
    template: `
    <div id="settings_purple">
    <div id="settings_white" class="grid-x grid-padding-x align-center-middle text-center">
    
    <form action="admin/scripts/admin_createuser.php" method="post">
        <label for="cover">First Name:</label>
        <input v-model="input.fname" type="text" name="fname" id="fname"><br><br>

        <label for="year">User Name: </label>
        <input v-model="input.username" type="text" name="username" id="username"><br><br>

        <label for="runtime">Password:</label>
        <input v-model="input.password" type="text" name="password" id="passsword"><br><br>

        <label>User Permissions:</label>
        <select v-model="input.access" name="permission">
            <option></option>
            <option value="5>">Parent</option>
            <option value="3">Kid</option>
        </select>

        <label>User Admin:</label>
        <select v-model="input.admin" name="admin">
            <option></option>
            <option value="1>">Yes</option>
            <option value="0">No</option>
        </select>

        <button type="submit" name="submit" class="settingssubmit" v-on:click.prevent="createUser()">Create User</button>
        <p>Or go <a href="#/home">Go Back</a></p>
    </form>

    </div>
    </div>
    `,

    data() {
        return {
        input: {
            fname: "",
            username: "",
            password: "",
            email: "",
            access: "",
            admin: "",
        },

            loginMessage: "User Created"

        }
    },

    methods: {
        createUser() {

            if(this.input.fname !== "" && this.input.username !== "" && this.input.password && this.input.email !== "") {
    
              let formData = new FormData();
      
              formData.append("fname", this.input.fname);
              formData.append("username", this.input.username);
              formData.append("password", this.input.password);
              formData.append("email", this.input.email);
              formData.append("access", this.input.access);
              formData.append("admin", this.input.admin);
              
              let url =  `./admin/admin_createuser.php`;

              fetch(url, {
                method: 'POST',
                body: formData
                })
                .then(res => res.json())
                // .then(data => {
                //     this.newUser = data;

                //     this.$router.push({ name: "/admin" })
                //     // console.log(data);
                //     // if (data === "User Creation Failed") { 
                //     //     console.error("Failed - Try again");
                //     //     this.$emit("autherror", data);  
                //     // } else {
                //     //     this.$router.push({ name: "/admin" });
                //     // }
                // })

                .catch(function (error) {
                  console.log(error);
                });
            } else {
              console.log("Fields shouldn't be blank");
            }
        },
    }
    }