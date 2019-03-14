import UserComponent from './UserComponent.js';

export default {
  template: `
  <div id="userback">
  <div id="userSelection" class="grid-x grid-margin-x">
			<div class="cell large-12">
				<h1 class="user-message">{{ message }}</h1>
			</div>
			<user class="cell large-4 medium-4 small-4" v-for="(user, index) in userList" :liveuser="user" :key="index"></user>     
	</div>
  </div>
	`,

	created: function() {
	  //debugger;
	  this.fetchAllUsers();
	},

	data() {
	  return {
		message: `WHO IS STREAMING?`,

		userList: []
	  }
	},

	methods: {
	  fetchAllUsers() {
		let url = `./admin/scripts/users.php?allusers=true`;

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