using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnadminsignin_click(object sender, EventArgs e)
    {
        string myconn = "Data Source=RX-78; Initial Catalog=AdminRegistartionDB; Integrated Security=True";
        SqlConnection conn = new SqlConnection(myconn);
        conn.Open();
        string checkuser = "Select count(*) from adminregtbl where UserName='" + txtboxadminuser3.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

        conn.Close();

        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "Select Password from adminregtbl where UserName='" + txtboxadminuser3.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ", "");

            if (password == txtboxadminpass3.Text)
            {
                Session["New"] = txtboxadminuser3.Text;
                Response.Write("Password is correct");
                Response.Redirect("Default.aspx");
            }

            else
            {
                Response.Write("Incorrect Password");
            }
        }

        else
        {
            Response.Write("Username is incorrect");
        }
    }

    protected void btngotoadmminreg_click(object sender, EventArgs e)
    {
        Response.Redirect("adminreg.aspx");
    }

    protected void btnreturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}