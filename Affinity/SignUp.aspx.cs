using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected bool CheckUserName()
    {
        try
        {
            if (txtUsername.Text != "" && txtUsername.Text.Length > 2)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["users"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from userTable where UserName = '" + txtUsername.Text + "'";
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    conn.Close();
                    lblAvailable.ForeColor = System.Drawing.Color.Red;
                    lblAvailable.Text = "Unavailable";
                    lblAvailable.Enabled = true;
                    lblAvailable.Visible = true;
                    return false;
                }
                else
                {
                    conn.Close();
                    return true;
                }
                

            }
            else
            {
                return false;
            }
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
            return false;
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        bool uname = CheckUserName();

        if (Page.IsValid && uname)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["users"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into userTable(UserName, Password, Email)values (@uname, @pw, @email)";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.Parameters.AddWithValue("@uname", txtUsername.Text);
            cmd.Parameters.AddWithValue("@pw", txtPassword.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("CreationSuccess.aspx");
        }
        
    }
    

    protected void btnCheckAvail_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtUsername.Text != "" && txtUsername.Text.Length > 2)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["users"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from userTable where UserName = '" + txtUsername.Text + "'";
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    lblAvailable.ForeColor = System.Drawing.Color.Red;
                    lblAvailable.Text = "Unavailable";
                    lblAvailable.Enabled = true;
                    lblAvailable.Visible = true;
                }
                else
                {
                    lblAvailable.ForeColor = System.Drawing.Color.LightGreen;
                    lblAvailable.Text = "Available";
                    lblAvailable.Enabled = true;
                    lblAvailable.Visible = true;
                }
                conn.Close();

            }
        }
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }
    }


    protected void checkValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = checkAgree.Checked;
    }
}


