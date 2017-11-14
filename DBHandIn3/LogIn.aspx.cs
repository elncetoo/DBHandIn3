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
    public partial class LogIn : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = Dentist;");
        SqlCommand cmd = null;
        SqlDataReader rdr = null;

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void ButtonLogIn_Click(object sender, EventArgs e)
        {
            
            
            try
            {
                conn.Open();

                cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "MyLogIn";

                SqlParameter in1 = cmd.Parameters.Add("@email", SqlDbType.Text);
                in1.Direction = ParameterDirection.Input;
                in1.Value = TextBoxEmailLogIn.Text;

                SqlParameter in2 = cmd.Parameters.Add("@pass", SqlDbType.Text);
                in2.Direction = ParameterDirection.Input;
                in2.Value = TextBoxPasswordLogIn.Text;
                rdr = cmd.ExecuteReader();

                if (rdr.Read())
                {

                    Session["email"] = in1.Value.ToString();
                    HttpContext.Current.Session["id"] = rdr.GetValue(0).ToString();
                    string userlogged = HttpContext.Current.Session["email"].ToString();

                    
                    ErrorLabel.Text = "Login Sucess.." + Session["id"] + "...!!";
                    LogInLabelMessage.Text = "Currently Logged User is " + (userlogged != null ? userlogged : "Unknown user");
                    Response.Redirect("ReservatonsPatient.aspx");
                }
                else
                {
                    ErrorLabel.Text = "User Email or Password Is not correct, Please try again..";

                }

                //cmd.ExecuteNonQuery();

                LabelMessage.Text = "You have successfully logged in as our new patient. Please, proceed to the log in page.";
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