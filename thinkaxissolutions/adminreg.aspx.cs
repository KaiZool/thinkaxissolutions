using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class adminreg : System.Web.UI.Page
{

    String connectionstring = "Data Source=RX-78; Initial Catalog=AdminRegistartionDB; Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (IsPostBack)
        //{
        //    SqlConnection conn = new SqlConnection(connectionstring);
        //    conn.Open();
        //    string checkuser = "Select count(*) from UserAdmin where UserName='" + txtboxadminusername.Text + "'";
        //    SqlCommand com = new SqlCommand(checkuser, conn);
        //    int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        //    if (temp == 1)
        //    {
        //        Response.Write("User Already Exists");
        //    }


        //    conn.Close();
        //}
    }

    protected void btnadminsignup_click(object sender, EventArgs e)
    {
        if (txtboxadminusername.Text == "" || txtboxadminpass.Text == "")
            Response.Write("Please fill in mandatory fields");

        else if (txtboxadminpass.Text != txtboxcadminpass.Text)
            Response.Write("Password does not match");

        else
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionstring))
            {
                sqlCon.Open();
                string insertQuery = "insert into adminregtbl (UserName,Email,Password) VALUES (@Username, @Email, @Password)";
                SqlCommand sqlCmd = new SqlCommand(insertQuery, sqlCon);
                sqlCmd.Parameters.AddWithValue("@UserName", txtboxadminusername.Text);
                sqlCmd.Parameters.AddWithValue("@Email", txtboxemailadmin.Text);
                sqlCmd.Parameters.AddWithValue("@Password", txtboxadminpass.Text);
                sqlCmd.ExecuteNonQuery();

                Response.Write("Registration is complete");
                Clear();
            }
        }
    }

    void Clear()
    {
        txtboxemailadmin.Text = txtboxadminusername.Text = txtboxadminpass.Text = txtboxcadminpass.Text = "";
    }

    protected void btnadminlo_click(object sender, EventArgs e)
    {
        Response.Redirect("adminlogin.aspx");
    }

    protected void btnanonymous_click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}