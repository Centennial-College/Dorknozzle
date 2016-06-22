using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie userCookie;
        userCookie = Request.Cookies["UserID"];
        if (userCookie == null)
        {
            myLabel.Text = "Cookie doesn't exist! Creating a cookie now.";
            userCookie = new HttpCookie("UserID", "Joe Black");
            userCookie.Expires = DateTime.Now.AddMonths(1);
            Response.Cookies.Add(userCookie);
        }
        else
        {
            myLabel.Text = "Welcome back, " + userCookie.Value;
        }
    }
}