using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_FileUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //note much of the code to do this properly (i.e. check file type is correct) is missing

        //get the id from the query string (keeping it as a string is OK in this case)
        string productId = Request.QueryString["Id"];

        string filename = productId + ".jpg";
        string saveLocation = Server.MapPath("~/ProductImages/" + filename);

        imageFileUploadControl.SaveAs(saveLocation);
        literalUpload1.Text = "Image uploaded";
    }
}