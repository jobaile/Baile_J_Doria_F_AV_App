import UserComponent from '../UserComponent.js';

export default {
  props: ['currentuser'],
  template: `
  <div class="top-bar">
      <div class="top-bar-left">
          <img src="images/logo-purple.png" alt="nav logo" id="navlogo">
          <ul class="menu typemenu" id="main-nav">
          <li v-on:click="changeMediaType">
              <img src="images/icon-movies.svg" alt="Movies Icon" id="movie" class="navlinks" />
          </li>
          <li v-on:click="changeMediaType">
              <img src="images/icon-television.svg" alt="TV Icon" id="tv" class="navlinks"/>
          </li>
          <li v-on:click="changeMediaType">
              <img src="images/icon-music.svg" alt="Music Icon" id="music" class="navlinks"/>
          </li>
          </ul>
      </div>
      <div class="top-bar-right" id="usermenunav">
          <ul class="menu">
          <li><img src="images/user1.png" alt="user profile" class="profileicon"></li>
          <li>
          <router-link tag="li" to="/admin">
            <a id="setting_link">Settings</a>
          </router-link>
          </li>
          <!--<li><input type="search" name="" placeholder="Search"></li>-->
          <!--<li><button type="button" class="button">Search</button></li>-->
          <li><button id="logoutbutton" type="button" class="button" v-on:click="logout()">Log Out</button></li>
          </ul>
      </div>
  </div>
  `,

  data() {
    return {
      media: 'movies',
      currentUser: {},
      //navdisplay: "none",
    };
  },

  created: function() {
  },

  methods: {
    changeMediaType(e) {
      //changes the component type
      const menu = document.querySelector(".menu");
      this.updateMedia(e);

      if (this.showMenu === false) {
        menu.classList.add("show");
      } else {
        menu.classList.remove("show");
      }
    },

    updateMedia(e) {
      var media = e.currentTarget.querySelector("img").id;
      this.media = media;
      this.$emit('updateMedia', this.media);
    },

    logout() {
      this.$router.push({ path: "/" });
      this.authenticated = false;
      localStorage.clear("cachedUser");
    },
      fetchOneUser() {
      let url = `./admin/scripts/users.php?oneuser=:id`;
  
      fetch(url)
        .then(res => res.json())
        .then(data => {this.userList = data})
      .catch(function(error) {
        console.error(error);
      });
      }
  
  },

  components: {
		user: UserComponent
	}
}
