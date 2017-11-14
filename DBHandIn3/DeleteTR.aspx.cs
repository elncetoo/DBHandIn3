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
    public partial class DeleteTR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelMessageDeleteTR.Text = Session["admin_name"].ToString();

            if (!Page.IsPostBack)
            {
                ButtonDeleteTR.Enabled = false;
                UpdateGridview();
            }

            DropDownListDeleteTR.AutoPostBack = true;
        }

        public void UpdateGridview()    //only public not static because there will be no return value
        {
            SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = Dentist;");
            SqlDataAdapter da = null;
            DataSet ds = null;
            DataTable dt = null;

            string sqlsel = "Select * from all_treatments";

            try
            {
                // conn.Open(); //SqlDataAdapter will open the connection by itself

                da = new SqlDataAdapter(); // da = data adapter
                da.SelectCommand = new SqlCommand(sqlsel, conn);

                ds = new DataSet();
                da.Fill(ds, "MyTreatments");

                dt = ds.Tables["MyTreatments"];

                GridViewDeleteTR.DataSource = dt;
                GridViewDeleteTR.DataBind();

                DropDownListDeleteTR.DataSource = dt;
                DropDownListDeleteTR.DataTextField = "tr_name";
                DropDownListDeleteTR.DataValueField = "tr_number";
                DropDownListDeleteTR.DataBind();
                DropDownListDeleteTR.Items.Insert(0, "Select a treatment");

            }
            catch (Exception ex)
            {
                LabelMessageDeleteTR.Text = ex.Message;
            }
            finally
            {
                conn.Close(); //SqlDataAdapter will close the connection by itself, but it can fail in case of errors
            }
        }

        protected void ButtonDeleteTR_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = Dentist;");
            SqlDataAdapter da = null;
            SqlCommandBuilder cb = null;
            DataSet ds = null;
            DataTable dt = null;

            string sqlsel = "Select * from all_treatments";

            try
            {
                da = new SqlDataAdapter();
                da.SelectCommand = new SqlCommand(sqlsel, conn);

                cb = new SqlCommandBuilder(da);

                ds = new DataSet();
                da.Fill(ds, "MyTreatments");

                dt = ds.Tables["MyTreatments"];

                foreach (DataRow row in dt.Select("tr_number= " + Convert.ToInt32(DropDownListDeleteTR.SelectedValue)))//we create local data table here
                {
                    //ds.Tables["MyTreatments"].Rows.Find("tr_number").Delete();  
                    row.Delete();
                }

                da.Update(ds, "MyTreatments");

                ButtonDeleteTR.Enabled = false;
                LabelMessageDeleteTR.Text = "Treatment" + DropDownListDeleteTR.SelectedValue + " has been deleted";
            }
            catch (Exception ex)
            {
                LabelMessageDeleteTR.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }

            UpdateGridview();

        }

        protected void DropDownListDeleteTR_SelectedIndexChanged(object sender, EventArgs e)
        {
           if (DropDownListDeleteTR.SelectedIndex != 0)
           {
                LabelMessageDeleteTR.Text = "Selected treatment to delete: " + DropDownListDeleteTR.SelectedValue;
                ButtonDeleteTR.Enabled = true;
           }
           else
           {
                LabelMessageDeleteTR.Text = "You chose none";
                ButtonDeleteTR.Enabled = false;
           }
        }
    }
}
