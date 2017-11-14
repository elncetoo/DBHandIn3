using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

namespace DBHandIn3
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogInAdmin_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = Dentist;");
            SqlCommand cmd = null;
            SqlDataReader rdr = null;

            try
            {
                conn.Open();

                cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "MyLogInAdmin";

                SqlParameter in1 = cmd.Parameters.Add("@admin_name", SqlDbType.Text);
                in1.Direction = ParameterDirection.Input;
                in1.Value = TextBoxEmailLogInAdmin.Text;

                SqlParameter in2 = cmd.Parameters.Add("@admin_password", SqlDbType.Text);
                in2.Direction = ParameterDirection.Input;
                in2.Value = TextBoxPasswordLogInAdmin.Text;
                rdr = cmd.ExecuteReader();

                if (rdr.Read())
                {

                    Session["admin_name"] = in1.Value.ToString();
                    Session["id"] = rdr.GetValue(0).ToString();
                    string userlogged = HttpContext.Current.Session["admin_name"].ToString();


                    ErrorLabel.Text = "Login Sucess.." + Session["id"] + ".";
                    LogInLabelMessage.Text = "Currently Logged Admin is " + (userlogged != null ? userlogged : "Unknown user");
                    Response.Redirect("TreatmentsAdmin.aspx");
                }
                else
                {
                    ErrorLabel.Text = "Admin User name & Password are not correct. Please, try again..";

                }

                //cmd.ExecuteNonQuery();

                //LabelMessage.Text = "You have successfully logged in.";
            }
            catch (Exception ex)
            {
                //LabelMessage.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }
    }
}