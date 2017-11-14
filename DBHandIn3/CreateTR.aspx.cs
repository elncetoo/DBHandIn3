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
    public partial class CreateTR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCreateTR_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = Dentist;");
            SqlDataAdapter da = null;
            DataSet ds = null;
            DataTable dt = null;
            SqlCommand cmd = null;

            string sqlsel = "SELECT * from all_treatments";
            string sqlins = "INSERT into all_treatments values (@tr_name, @tr_price, @tr_date, @tr_img)"; //(@CompanyName, @Phone)-parameters

            try
            {
                da = new SqlDataAdapter();
                da.SelectCommand = new SqlCommand(sqlsel, conn);

                ds = new DataSet();
                da.Fill(ds, "MyTreatments");

                dt = ds.Tables["MyTreatments"];

                DataRow newrow = dt.NewRow(); //we get an empty row for our table here so we can use it after to insert
                newrow["tr_name"] = TextBoxCreateTRName.Text;
                newrow["tr_price"] = TextBoxCreateTRPrice.Text;
                newrow["tr_date"] = TextBoxCreateTRDate.Text;
                newrow["tr_img"] = TextBoxCreateTRImage.Text;


                dt.Rows.Add(newrow);//we attach here this new row to the existing table NB!!!

                cmd = new SqlCommand(sqlins, conn);
                cmd.Parameters.Add("@tr_name", SqlDbType.Text, 50, "tr_name"); //1st @CompanyName-parameter-casesensitive, 2nd CompanyName is the db colomn
                cmd.Parameters.Add("@tr_price", SqlDbType.Decimal, 50, "tr_price");
                cmd.Parameters.Add("@tr_date", SqlDbType.Date, 50, "tr_date");
                cmd.Parameters.Add("@tr_img", SqlDbType.Text, 50, "tr_img");

                da.InsertCommand = cmd;
                da.Update(ds, "MyTreatments");

                LabelMessageCreateTR.Text = "Treatment added";

            }
            catch (Exception ex)
            {
                LabelMessageCreateTR.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }

        }

        /*
        protected void ButtonCreateTR_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = Dentist;");
            SqlCommand cmd = null;

            try
            {
                conn.Open();

                cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "MyCreateTRDentist";

                SqlParameter in1 = cmd.Parameters.Add("@tr_name", SqlDbType.Text);
                in1.Direction = ParameterDirection.Input;
                in1.Value = TextBoxCreateTRName.Text;

                SqlParameter in2 = cmd.Parameters.Add("@tr_price", SqlDbType.Decimal);
                in2.Direction = ParameterDirection.Input;
                in2.Value = Convert.ToDecimal(TextBoxCreateTRPrice.Text);

                SqlParameter in3 = cmd.Parameters.Add("@tr_date", SqlDbType.Date);
                in3.Direction = ParameterDirection.Input;
                in3.Value = Convert.ToDateTime(TextBoxCreateTRDate.Text);

                SqlParameter in4 = cmd.Parameters.Add("@tr_img", SqlDbType.Text);
                in4.Direction = ParameterDirection.Input;
                in4.Value = TextBoxCreateTRImage.Text;

                cmd.ExecuteNonQuery();

                LabelMessageCreateTR.Text = "Treatment added.";
            }
            catch (Exception ex)
            {
                LabelMessageCreateTR.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }
        } */
    }
}