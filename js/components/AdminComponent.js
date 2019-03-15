export default {
    template: `
    <div id="settings_purple">
    <div id="settings_white" class="grid-x grid-padding-x align-center-middle text-center">
    <h1 class="admintitle cell small-12 medium-12 large-12" >Admin Dashboard</h1>
    <p class="adminmessage cell small-12 medium-12 large-12" > {{ message }}</p>

    <div class="adminChoices cell small-6 medium-6 large-4">
    <ul>
            <li><a href="#">Create User</a></li>
            <li><a href="#">Edit User</a></li>
            <li><a href="#">Delete User</a></li>
            <li><a href="#/home">Go Back</a></li>

    </ul>
    </div>
    
    </div>
    </div>
    `,
}