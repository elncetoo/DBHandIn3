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
    public partial class DeleteRes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null && !Page.IsPostBack)
            {
                LabelMessageCRR.Text = Session["email"].ToString();
                UpdateGridview();
            }

            if (!Page.IsPostBack)
            {
                UpdateGridview();
                ButtonDeleteRes.Enabled = true;
            }

           DropDownListRes.AutoPostBack = true;
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

                rdr.Close();
                rdr = cmd.ExecuteReader();

                DropDownListRes.DataSource = rdr;
                DropDownListRes.DataTextField = "res_id";
                DropDownListRes.DataValueField = "res_id";
                DropDownListRes.DataBind();
                DropDownListRes.Items.Insert(0, "Select a reservation ID");
            }
            catch (Exception ex)
            {
                LabelMessageCRR.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }

        protected void DropDownListRes_SelectedIndexChanged(object sender, EventArgs e)
        { LabelMessageCRR.Text = DropDownListRes.SelectedValue;
            if (DropDownListRes.SelectedIndex != 0)
            {
                LabelMessageCRR.Text = "You chose res_id " + DropDownListRes.SelectedValue;
                ButtonDeleteRes.Enabled = true;
            }
            else
            {
                LabelMessageCRR.Text = "You chose none";
                ButtonDeleteRes.Enabled = false;
            }
        }

        protected void ButtonDeleteRes_Click(object sender, EventArgs e)
        {

           
            SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = Dentist;");
            SqlCommand cmd = null;

            try
            {
                conn.Open();

                cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "MyDeleteRes";

                SqlParameter in1 = cmd.Parameters.Add("@res_id", SqlDbType.Int);
                in1.Direction = ParameterDirection.Input;
                in1.Value = Convert.ToInt32(DropDownListRes.SelectedValue);

                cmd.ExecuteNonQuery();

                ButtonDeleteRes.Enabled = true;
                LabelMessageCRR.Text = "Reservation " + DropDownListRes.SelectedValue + " has been deleted";
            }
            catch (Exception ex)
            {
                LabelMessageCRR.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }

            UpdateGridview();
        }
    }
}