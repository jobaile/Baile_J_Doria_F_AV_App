export default {
    template: `
    <div id="settings_purple">
    <div id="settings_white" class="grid-x grid-padding-x align-center-middle text-center">
    
    <form action="admin/scripts/admin_createuser.php" method="post">
        <label for="cover">First Name:</label>
        <input type="text" name="fname" id="fname" value=""><br><br>

        <label for="year">User Name: </label>
        <input type="text" name="username" id="username" value=""><br><br>

        <label for="runtime">Password:</label>
        <input type="text" name="password" id="passsword" value=""><br><br>

        <label>User Permissions:</label>
        <select name="permission">
            <option></option>
            <option value="5>">Parent</option>
            <option value="3">Kid</option>
        </select>

        <label>User Admin:</label>
        <select name="admi">
            <option></option>
            <option value="1>">Yes</option>
            <option value="0">No</option>
        </select>

        <button type="submit" name="submit">Create User/button>
    </form>

    </div>
    </div>
    `,
}