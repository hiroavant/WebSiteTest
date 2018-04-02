using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin.Security;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

public partial class Login : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnLoginSubmit_Click(object sender, EventArgs e)
    {
        var identityDbContext = new IdentityDbContext("IdentityConnectionString");
        var userStore = new UserStore<IdentityUser>(identityDbContext);
        var userManager = new UserManager<IdentityUser>(userStore);
        var user = userManager.Find(txtLoginEmail.Text,txtLoginPassword.Text);
        if (user != null)
        {
            //todo: log user in / instruct user to log in
            LogUserIn(userManager, user);
        }
        else
        {
            litLoginError.Text = "Invalid username or password.";
            
        }
    }

    private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
    {
        var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
        var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
        authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
        //note: user is automatically redirected if trying to access another page
    }
}
}