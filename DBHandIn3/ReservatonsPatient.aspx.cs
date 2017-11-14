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
    public partial class ReservatonsPatient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                LabelMessageCRR.Text = Session["email"].ToString();
                UpdateGridview();
            }

            if (!Page.IsPostBack)
            {
                ButtonUpdateRes.Enabled = false;
            }

            
        }

        protected void ButtonCreateResPat_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = Dentist;");
            SqlCommand cmd = null;

            try
            {
                conn.Open();

                cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "MyCreateRes";

                SqlParameter in1 = cmd.Parameters.Add("@pat_id", SqlDbType.Int);
                in1.Direction = ParameterDirection.Input;
                in1.Value = Convert.ToInt32(TextBoxResPatID.Text);

                SqlParameter in2 = cmd.Parameters.Add("@treat_id", SqlDbType.Int);
                in2.Direction = ParameterDirection.Input;
                in2.Value = Convert.ToInt32(TextBoxResPatTRID.Text);

                SqlParameter in3 = cmd.Parameters.Add("@res_date", SqlDbType.DateTime);
                in3.Direction = ParameterDirection.Input;
                in3.Value = Convert.ToDateTime(TextBoxResDate.Text);

                cmd.ExecuteNonQuery();

                LabelMessageCRR.Text = "Reservation added.";
            }
            catch (Exception ex)
            {
                LabelMessageCRR.Text = ex.Message + ex.StackTrace;
            }
            finally
            {
                conn.Close();
            }
        }

        public void UpdateGridview()
        {
            SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = Dentist;");
            SqlCommand cmd = null;
            SqlDataReader rdr = null;

            try
            {
                conn.Open();

                cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "MySelectRes";


                SqlParameter in1 = cmd.Parameters.Add("@pat_id", SqlDbType.Int);
                in1.Direction = ParameterDirection.Input;
                in1.Value = Convert.ToInt32(Session["id"].ToString());

                rdr = cmd.ExecuteReader();

                GridViewUpdateRes.DataSource = rdr;
                GridViewUpdateRes.DataBind();
            }
            catch (Exception ex)
            {
                LabelMessageCRR.Text = ex.Message + ex.StackTrace;
            }
            finally
            {
                conn.Close();
            }
        }

        protected void GridViewUpdateRes_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = Dentist;");
            SqlCommand cmd = null;
            SqlDataReader rdr = null;

            try
            {
                conn.Open();

                cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "MySelectRes";

                SqlParameter in1 = cmd.Parameters.Add("@pat_id", SqlDbType.Int);
                in1.Direction = ParameterDirection.Input;
                in1.Value = Convert.ToInt32(GridViewUpdateRes.SelectedRow.Cells[2].Text);
                /*
                SqlParameter in2 = cmd.Parameters.Add("@treat_id", SqlDbType.Int);
                in2.Direction = ParameterDirection.Input;
                in2.Value = Convert.ToInt32(TextBoxResPatTRID.Text);

                SqlParameter in3 = cmd.Parameters.Add("@res_date", SqlDbType.DateTime);
                in3.Direction = ParameterDirection.Input;
                in3.Value = Convert.ToDateTime(TextBoxResDate.Text);

                /*
                SqlParameter in2 = cmd.Parameters.Add("@pat_id", SqlDbType.Int);
                in2.Direction = ParameterDirection.Input;
                in2.Value = TextBoxResPatID.Text;

                SqlParameter in3 = cmd.Parameters.Add("@treat_id", SqlDbType.Int);
                in3.Direction = ParameterDirection.Input;
                in3.Value = Convert.ToInt32(TextBoxResPatTRID.Text);

                SqlParameter in4 = cmd.Parameters.Add("@res_date", SqlDbType.DateTime);
                in4.Direction = ParameterDirection.Input;
                in4.Value = Convert.ToDateTime(TextBoxResDate.Text);
                */

                rdr = cmd.ExecuteReader();

                rdr.Read();
                TextBoxResPatID.Text = rdr.GetValue(1).ToString();
                //TextBoxResPatTRID.Text = rdr.GetValue(2).ToString();
                //TextBoxResDate.Text = rdr.GetValue(3).ToString();
                //TextBoxResPatTRID.Text = rdr.GetString(2);
                //TextBoxResDate.Text = rdr.GetString(3);

                rdr.Close();  // close before getting output parameter

                LabelMessageCRR.Text = "You have chosen Reservation ID: " + GridViewUpdateRes.SelectedRow.Cells[1].Text;
                ButtonUpdateRes.Enabled = true;
            }
            catch (Exception ex)
            {
                LabelMessageCRR.Text = ex.Message + ex.StackTrace;
            }
            finally
            {
                conn.Close();
            }
        }

        protected void ButtonDeleteRes_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteRes.aspx");
        }

        protected void ButtonUpdateRes_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = Dentist;");
            SqlCommand cmd = null;
            // string sqlupd = "update shippers set CompanyName = @CompanyName, Phone = @phone where ShipperId = @ShipperID";

            try
            {
                conn.Open();

                cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "MyUpdateRes";

                SqlParameter in1 = cmd.Parameters.Add("@res_id", SqlDbType.Int);
                in1.Direction = ParameterDirection.Input;
                in1.Value = Convert.ToInt32(GridViewUpdateRes.SelectedRow.Cells[2].Text);

                SqlParameter in2 = cmd.Parameters.Add("@pat_id", SqlDbType.Int);
                in2.Direction = ParameterDirection.Input;
                in2.Value = Convert.ToInt32(TextBoxResPatID.Text);

                SqlParameter in3 = cmd.Parameters.Add("@treat_id", SqlDbType.Int);
                in3.Direction = ParameterDirection.Input;
                in3.Value = Convert.ToInt32(TextBoxResPatTRID.Text);

                SqlParameter in4 = cmd.Parameters.Add("@res_date", SqlDbType.DateTime);
                in4.Direction = ParameterDirection.Input;
                in4.Value = Convert.ToDateTime(TextBoxResDate.Text);


                cmd.ExecuteNonQuery();

                LabelMessageCRR.Text = "Reservation has been updated";
            }
            catch (Exception ex)
            {
                LabelMessageCRR.Text = ex.Message + ex.StackTrace;
            }
            finally
            {
                conn.Close();
            }

            UpdateGridview();

        }
    }
}