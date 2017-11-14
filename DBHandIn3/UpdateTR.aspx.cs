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
    public partial class UpdateTR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelMessageUpdateTR.Text = Session["admin_name"].ToString();

            if (!Page.IsPostBack)
            {
                ButtonUpdateTR.Enabled = false;
            }
            UpdateGridview();
        }

        public void UpdateGridview()    //only public not static because there will be no return value
        {
            SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = Dentist;");
            SqlDataAdapter da = null;
            DataSet ds = null;
            DataTable dt = null;

            //string sqlsel = "SELECT tr_name, tr_price, tr_date from all_treatments";
            string sqlsel = "SELECT * from all_treatments";

            try
            {
                // conn.Open(); //SqlDataAdapter will open the connection by itself

                da = new SqlDataAdapter(); // da = data adapter
                da.SelectCommand = new SqlCommand(sqlsel, conn);

                ds = new DataSet();
                da.Fill(ds, "MyTreatments");

                dt = ds.Tables["MyTreatments"];

                GridViewUpdateTR.DataSource = dt;
                GridViewUpdateTR.DataBind();

            }
            catch (Exception ex)
            {
                LabelMessageUpdateTR.Text = ex.Message;
            }
            finally
            {
                conn.Close(); //SqlDataAdapter will close the connection by itself, but it can fail in case of errors
            }
        }

        protected void ButtonUpdateTR_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = Dentist;");
            SqlDataAdapter da = null;
            DataSet ds = null;
            DataTable dt = null;
            SqlCommand cmd = null;

            string sqlsel = "select * from all_treatments";
            string sqlupd = "UPDATE all_treatments SET tr_name = @tr_name, tr_price = @tr_price, tr_date = @tr_date, tr_img = @tr_img WHERE tr_number =  @tr_number"; //CompanyName-name of the colomn in db, @CompanyName is the parameter

            
            try
            {
                //conn.Open();

                da = new SqlDataAdapter();
                da.SelectCommand = new SqlCommand(sqlsel, conn);

                ds = new DataSet();
                da.Fill(ds, "MyTreatments");

                dt = ds.Tables["MyTreatments"];
                //here we update the local version
                dt.Rows[GridViewUpdateTR.SelectedIndex]["tr_name"] = TextBoxUpdateTRName.Text;
                dt.Rows[GridViewUpdateTR.SelectedIndex]["tr_price"] = TextBoxUpdateTRPrice.Text;
                dt.Rows[GridViewUpdateTR.SelectedIndex]["tr_date"] = TextBoxUpdateTRDate.Text;
                dt.Rows[GridViewUpdateTR.SelectedIndex]["tr_img"] = TextBoxUpdateTRImage.Text;


                cmd = new SqlCommand(sqlupd, conn);
                cmd.Parameters.Add("@tr_name", SqlDbType.Text, 50, "tr_name");
                cmd.Parameters.Add("@tr_price", SqlDbType.Decimal, 50, "tr_price"); //shouldnt it be .Text insted?
                cmd.Parameters.Add("@tr_date", SqlDbType.Date, 50, "tr_date");  //shouldnt it be .Text insted?
                cmd.Parameters.Add("@tr_img", SqlDbType.Text, 50, "tr_img");  //shouldnt it be .Text insted?
                SqlParameter parm = cmd.Parameters.Add("@tr_number", SqlDbType.Int, 4, "tr_number");
                parm.SourceVersion = DataRowVersion.Original; //for safety against updating the primary key

                da.UpdateCommand = cmd; // here we update the actual db on the server
                da.Update(ds, "MyTreatments");

                LabelMessageUpdateTR.Text = "Treatment has been updated";

            }
            catch (Exception ex)
            {
                LabelMessageUpdateTR.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }

            UpdateGridview();
        }

        protected void GridViewUpdateTR_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBoxUpdateTRName.Text = GridViewUpdateTR.SelectedRow.Cells[2].Text; //colum 0-is select it self, 1-id
            TextBoxUpdateTRPrice.Text = GridViewUpdateTR.SelectedRow.Cells[3].Text;
            TextBoxUpdateTRDate.Text = GridViewUpdateTR.SelectedRow.Cells[4].Text;
            TextBoxUpdateTRImage.Text = GridViewUpdateTR.SelectedRow.Cells[5].Text;

            LabelMessageUpdateTR.Text = "You chose treatment ID " + GridViewUpdateTR.SelectedRow.Cells[1].Text;
            ButtonUpdateTR.Enabled = true;
        }
    }
}