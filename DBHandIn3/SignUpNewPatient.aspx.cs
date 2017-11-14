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
    public partial class SignUpNewPatient : System.Web.UI.Page
    {
        private string varToStore;

        protected void Page_Load(object sender, EventArgs e)
        {
            //RadioButtonListGender.SelectedValue = "Female";
          
        }

        protected void ButtonSignUp_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = Dentist;");
            SqlCommand cmd = null;


            try
            {
                conn.Open();

                cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "MySignUpPatient";

                SqlParameter in1 = cmd.Parameters.Add("@fname", SqlDbType.Text);
                in1.Direction = ParameterDirection.Input;
                in1.Value = TextBoxFirstName.Text;

                SqlParameter in2 = cmd.Parameters.Add("@lname", SqlDbType.Text);
                in2.Direction = ParameterDirection.Input;
                in2.Value = TextBoxLastName.Text;

                SqlParameter in3 = cmd.Parameters.Add("@cpr", SqlDbType.Text);
                in3.Direction = ParameterDirection.Input;
                in3.Value = TextBoxCpr.Text;

                SqlParameter in4 = cmd.Parameters.Add("@age", SqlDbType.Int);
                in4.Direction = ParameterDirection.Input;
                in4.Value = Convert.ToUInt32(TextBoxAge.Text);

                SqlParameter in5 = cmd.Parameters.Add("@gender", SqlDbType.Text);
                in5.Direction = ParameterDirection.Input;
                in5.Value = varToStore;

                SqlParameter in6 = cmd.Parameters.Add("@email", SqlDbType.Text);
                in6.Direction = ParameterDirection.Input;
                in6.Value = TextBoxEmail.Text;

                SqlParameter in7 = cmd.Parameters.Add("@pass", SqlDbType.Text);
                in7.Direction = ParameterDirection.Input;
                in7.Value = TextBoxPassword.Text;

                SqlParameter in8 = cmd.Parameters.Add("@pass_c", SqlDbType.Text);
                in8.Direction = ParameterDirection.Input;
                in8.Value = TextBoxConfirm.Text;

                cmd.ExecuteNonQuery();

                LabelMessage.Text = "Success! Please, log in.";
            }
            catch (Exception ex)
            {
                LabelMessage.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }

        protected void RadioButtonListGender_SelectedIndexChanged(object sender, EventArgs e)
        {
            

            if(RadioButtonListGender.SelectedValue == "Female")
            {
                varToStore = "f";
            }
            else
            {
                varToStore = "m";
            }
            
        }
    }
}