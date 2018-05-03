using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnRegister_Click1(object sender, EventArgs e)
    {
        //create a dbcontext that specified
        var identityDbContext = new IdentityDbContext("IdentityConnectionString");
        var roleStore = new RoleStore<IdentityRole>(identityDbContext);
        var roleManager = new RoleManager<IdentityRole>(roleStore);
        
        //create a user store and user manager
        var userStore = new UserStore<IdentityUser>(identityDbContext);
        var manager = new UserManager<IdentityUser>(userStore);

        //create user
        IdentityRole adminRole = new IdentityRole("Admin");
        roleManager.Create(adminRole);
        IdentityRole memberRole = new IdentityRole("Registered Member");
        roleManager.Create(memberRole);
        var user = new IdentityUser() { UserName = tbxregUser.Text, Email = tbxregPass.Text};
        IdentityResult result = manager.Create(user, tbxregPass.Text);
        if (result.Succeeded)
        {
            if(tbxregUser.Text == "Hiro" || tbxregUser.Text == "test")
            {
                manager.AddToRole(user.Id, "Admin");
                manager.Update(user);
                registerNote.Text = "Registration is successful. <br/> " +
                    "Please click the link to proceed to the login page. " +
                    "<a href =\"Login.aspx\">Login</a>";
            }
            //todo: Either aunthenticate the user (log them in) or redirect them to the login page to log in for themselves
            else
            {
                manager.AddToRole(user.Id, "Registered Member");
                manager.Update(user);
                registerNote.Text = "Registration is successful";
            }
        }
        else
        {
            registerNote.Text = "An error has occurred: " + result.Errors.FirstOrDefault();
        }

      
    }
}