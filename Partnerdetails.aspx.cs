using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace campionwebpage
{
    public partial class Partnerdetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = DAKSHATASAWANT;Initial Catalog = CRMA; Integrated Security = true");
        SqlDataReader Reader;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataSet ds;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            var lblchampname = Session["mobile"].ToString();
            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "CRMA";
                cmd.Connection = con;
                cmd.Parameters.Add(new SqlParameter("@ChampMobile", lblchampname));
                cmd.Parameters.Add(new SqlParameter("@quary", 2));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables.Count != 0)
                {
                    var champid = ds.Tables[0].Rows[0]["ChampID"].ToString();
                    SqlCommand cmd4 = new SqlCommand("select PartnerName from Partner_Master where ChampID = '" + champid + "' ", con);
                    SqlDataAdapter sda4 = new SqlDataAdapter(cmd4);
                    DataSet ds4 = new DataSet();
                    sda4.Fill(ds4);
                    con.Close();
                    if (ds4.Tables[0].Rows.Count > 0)
                    {
                        ddpartner.DataTextField = "PartnerName";
                        ddpartner.DataSource = ds4;
                        ddpartner.DataBind();
                        ddpartner.Items.Insert(0, new ListItem("--Select--", " "));
                    }
                }
                SqlCommand cmd2 = new SqlCommand("select Designation from Designation", con);
                SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
                DataSet ds2 = new DataSet();
                sda2.Fill(ds2);
                con.Close();
                if (ds2.Tables[0].Rows.Count > 0)
                {
                    dddesig.DataTextField = "Designation";
                    dddesig.DataSource = ds2;
                    dddesig.DataBind();
                    dddesig.Items.Insert(0, new ListItem("", ""));
                }

                SqlCommand cmd3 = new SqlCommand("select ExpIT from Year_In_IT", con);
                SqlDataAdapter sda3 = new SqlDataAdapter(cmd3);
                DataSet ds3 = new DataSet();
                sda3.Fill(ds3);
                con.Close();
                if (ds3.Tables[0].Rows.Count > 0)
                {
                    ddITyear.DataTextField = "ExpIT";
                    ddITyear.DataSource = ds3;
                    ddITyear.DataBind();
                    ddITyear.Items.Insert(0, new ListItem("", ""));
                }

                SqlCommand cmd5 = new SqlCommand("select companyprofile from Companyprofile", con);
                SqlDataAdapter sda5 = new SqlDataAdapter(cmd5);
                DataSet ds5 = new DataSet();
                sda5.Fill(ds5);
                con.Close();
                if (ds5.Tables[0].Rows.Count > 0)
                {
                    ddprof.DataTextField = "companyprofile";
                    ddprof.DataSource = ds5;
                    ddprof.DataBind();
                    ddprof.Items.Insert(0, new ListItem("", " "));
                }

                getdata();


            }

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            var partnername = ddpartner.SelectedItem.Text;
            //Session["partnername"] = partnername;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "CRMA";
            cmd.Connection = con;
            cmd.Parameters.Add(new SqlParameter("@PartnerName", partnername));
            cmd.Parameters.Add(new SqlParameter("@quary", 3));
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables.Count != 0)
            {
                var partnerid = ds.Tables[0].Rows[0]["PartnerID"].ToString();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.CommandText = "CRMA";
                cmd1.Connection = con;
                cmd1.Parameters.Add(new SqlParameter("@PartnerID", partnerid));
                cmd1.Parameters.Add(new SqlParameter("@quary", 4));
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataTable dt = new DataTable();
                da1.Fill(dt);
                if (dt.Rows.Count != null)
                {
                    //ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "confirm('Login sccessfully.');", true);
                    //string d0 = dt.Rows[0]["PartnerName"].ToString();
                    txtpartnername.Text = partnername;
                    string d = dt.Rows[0]["PartnerID"].ToString();
                    txtpartnerid.Text = d;
                    string d1 = dt.Rows[0]["Address"].ToString();
                    //string d1 = dt2.Rows[0]["FullName"].ToString();
                    txtaddress.Text = d1;
                    string d2 = dt.Rows[0]["Street1"].ToString();
                    txtstreet1.Text = d2;
                    string d3 = dt.Rows[0]["Area"].ToString();
                    txtArea.Text = d3;
                    string d4 = dt.Rows[0]["City"].ToString();
                    txtCity.Text = d4;
                    string d5 = dt.Rows[0]["State"].ToString();
                    txtState.Text = d5;
                    string d6 = dt.Rows[0]["PostalCode"].ToString();
                    txtPostalcode.Text = d6;
                    //string d7 = dt.Rows[0]["ContactPerson"].ToString();
                    //cname.Text = d7;
                    //string d8 = dt.Rows[0]["ContactPersonMobile"].ToString();
                    //cmobile.Text = d8;
                    //string d9 = dt.Rows[0]["TelephoneNumber"].ToString();
                    //ctelephone.Text = d9;
                    //string d10 = dt.Rows[0]["EMailID"].ToString();
                    //cemail.Text = d10;

                    seglistbox();
                    brandlistbox();
                    getdata();

                }

            }

        }

        public void getdata()
        {
            SqlCommand cmd3 = new SqlCommand();
            cmd3.CommandType = CommandType.StoredProcedure;
            cmd3.CommandText = "CRMA";
            cmd3.Connection = con;
            cmd3.Parameters.Add(new SqlParameter("@PartnerID", txtpartnerid.Text.ToString()));
            cmd3.Parameters.Add(new SqlParameter("@quary", 8));
            SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
            DataTable dt3 = new DataTable();
            da3.Fill(dt3);
            gvCustomers.DataSource = dt3;
            gvCustomers.DataBind();
        }

        public void seglistbox()
        {
            SqlCommand cmd4 = new SqlCommand();
            cmd4.CommandType = CommandType.StoredProcedure;
            cmd4.CommandText = "CRMA";
            cmd4.Connection = con;
            cmd4.Parameters.Add(new SqlParameter("@PartnerID", txtpartnerid.Text.ToString()));
            cmd4.Parameters.Add(new SqlParameter("@quary", 13));
            SqlDataAdapter da4 = new SqlDataAdapter(cmd4);
            DataSet ds4 = new DataSet();
            da4.Fill(ds4);
            lstRight.DataTextField = "SegmentName";
            lstRight.DataSource = ds4;
            //lstRight.DataValueField = "PartnerID";
            lstRight.DataBind();
        }

        public void brandlistbox()
        {
            SqlCommand cmd2 = new SqlCommand();
            cmd2.CommandType = CommandType.StoredProcedure;
            cmd2.CommandText = "CRMA";
            cmd2.Connection = con;
            cmd2.Parameters.Add(new SqlParameter("@PartnerID", txtpartnerid.Text.ToString()));
            cmd2.Parameters.Add(new SqlParameter("@quary", 14));
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            lstRight1.DataTextField = "BrandName";
            lstRight1.DataSource = ds2;
            //lstRight.DataValueField = "PartnerID";
            lstRight1.DataBind();
        }

        protected void LeftClick(object sender, EventArgs e)
        {
            //List will hold items to be removed.
            List<ListItem> removedItems = new List<ListItem>();

            //Loop and transfer the Items to Destination ListBox.
            foreach (ListItem item in lstRight.Items)
            {
                if (item.Selected)
                {
                    item.Selected = false;
                    lstLeft.Items.Add(item);
                    removedItems.Add(item);

                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "CRMA";
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@PartnerID", txtpartnerid.Text.ToString());
                    cmd.Parameters.AddWithValue("@SegmentName", item.Text.ToString());

                    cmd.Parameters.AddWithValue("@quary", 10);
                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();

                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                }
            }

            //Loop and remove the Items from the Source ListBox.
            foreach (ListItem item in removedItems)
            {
                lstRight.Items.Remove(item);
            }
        }

        protected void RightClick(object sender, EventArgs e)
        {
            //List will hold items to be removed.
            List<ListItem> removedItems = new List<ListItem>();

            //Loop and transfer the Items to Destination ListBox.
            foreach (ListItem item in lstLeft.Items)
            {
                if (item.Selected)
                {
                    item.Selected = false;
                    lstRight.Items.Add(item);
                    removedItems.Add(item);



                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "CRMA";
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@PartnerID", txtpartnerid.Text.ToString());
                    cmd.Parameters.AddWithValue("@SegmentName", item.Text.ToString());

                    cmd.Parameters.AddWithValue("@quary", 9);
                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();

                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                }


            }

            //Loop and remove the Items from the Source ListBox.
            foreach (ListItem item in removedItems)
            {
                lstLeft.Items.Remove(item);
            }
        }

        protected void btnLeft1_Click(object sender, EventArgs e)
        {
           // List will hold items to be removed.
            List<ListItem> removedItems = new List<ListItem>();

            //Loop and transfer the Items to Destination ListBox.
            foreach (ListItem item in lstRight1.Items)
            {
                if (item.Selected)
                {
                    item.Selected = false;
                    lstLeft1.Items.Add(item);
                    removedItems.Add(item);

                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "CRMA";
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@PartnerID", txtpartnerid.Text.ToString());
                    cmd.Parameters.AddWithValue("@BrandName", item.Text.ToString());

                    cmd.Parameters.AddWithValue("@quary", 12);
                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();

                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                }
            }

            //Loop and remove the Items from the Source ListBox.
            foreach (ListItem item in removedItems)
            {
                lstRight1.Items.Remove(item);
            }
}

        protected void btnRight1_Click(object sender, EventArgs e)
        {
            List<ListItem> removedItems = new List<ListItem>();

            //Loop and transfer the Items to Destination ListBox.
            foreach (ListItem item in lstLeft1.Items)
            {
                if (item.Selected)
                {
                    item.Selected = false;
                    lstRight1.Items.Add(item);
                    removedItems.Add(item);

                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "CRMA";
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@PartnerID", txtpartnerid.Text.ToString());
                    cmd.Parameters.AddWithValue("@BrandName", item.Text.ToString());

                    cmd.Parameters.AddWithValue("@quary", 11);
                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();

                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                }
            }

            //Loop and remove the Items from the Source ListBox.
            foreach (ListItem item in removedItems)
            {
                lstLeft1.Items.Remove(item);
            }
        }

        protected void btnsubmit1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "CRMA";
            cmd.Connection = con;


            cmd.Parameters.AddWithValue("@PartnerID", txtpartnerid.Text.ToString());
            cmd.Parameters.AddWithValue("@ContactPerson", cname.Text.ToString());
            cmd.Parameters.AddWithValue("@ContactPersonMobile", cmobile.Text.ToString());
            cmd.Parameters.AddWithValue("@TelephoneNumber", ctelephone.Text.ToString());
            cmd.Parameters.AddWithValue("@EMailID", cemail.Text.ToString());
            cmd.Parameters.AddWithValue("@Designation", dddesig.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@company_profile", ddprof.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@year_in_IT", ddITyear.SelectedItem.Text);

            cmd.Parameters.AddWithValue("@quary", 5);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

            }
            catch (Exception ex)
            {
                throw ex;
            }
            
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Record submitted successfully');", true);
            cname.Text = "";
            cmobile.Text = "";
            ctelephone.Text = "";
            cemail.Text = "";
            dddesig.SelectedItem.Text = "";
            ddprof.SelectedItem.Text = "";
            ddITyear.SelectedItem.Text = "";
            this.getdata();
            
        }

        protected void EditCustomer(object sender, GridViewEditEventArgs e)
        {
            gvCustomers.EditIndex = e.NewEditIndex;
            this.getdata();
        }

        protected void CancelEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvCustomers.EditIndex = -1;
            this.getdata();
        }

        protected void UpdateCustomer(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = gvCustomers.Rows[e.RowIndex];
            string ID = gvCustomers.DataKeys[e.RowIndex].Value.ToString();
            string name = (gvCustomers.Rows[e.RowIndex].FindControl("contactname") as TextBox).Text.ToString();
            string mobile = (gvCustomers.Rows[e.RowIndex].FindControl("contactmobile") as TextBox).Text.ToString();
            string phone = (gvCustomers.Rows[e.RowIndex].FindControl("telephone") as TextBox).Text.ToString();
            string email = (gvCustomers.Rows[e.RowIndex].FindControl("txtemail") as TextBox).Text.ToString();
            string Designation = (gvCustomers.Rows[e.RowIndex].FindControl("ddldesg") as DropDownList).SelectedItem.Value;
            string company_profile = (gvCustomers.Rows[e.RowIndex].FindControl("ddlcmprof") as DropDownList).SelectedItem.Value;
            string year_in_IT = (gvCustomers.Rows[e.RowIndex].FindControl("ddlITyear") as DropDownList).SelectedItem.Value;

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "CRMA";
            cmd.Connection = con;


            cmd.Parameters.AddWithValue("@ID", ID);
            cmd.Parameters.AddWithValue("@ContactPerson", name);
            cmd.Parameters.AddWithValue("@ContactPersonMobile", mobile);
            cmd.Parameters.AddWithValue("@TelephoneNumber", phone);
            cmd.Parameters.AddWithValue("@EMailID", email);
            cmd.Parameters.AddWithValue("@Designation", Designation);
            cmd.Parameters.AddWithValue("@company_profile", company_profile);
            cmd.Parameters.AddWithValue("@year_in_IT", year_in_IT);
            //cmd.Parameters.AddWithValue("@Segment1", Segment1);
            //cmd.Parameters.AddWithValue("@Segment2", Segment2);
            //cmd.Parameters.AddWithValue("@Segment3", Segment3);
            //cmd.Parameters.AddWithValue("@Segment4", Segment4);
            //cmd.Parameters.AddWithValue("@Segment5", Segment5);
            //cmd.Parameters.AddWithValue("@Segment6", Segment6);
            //cmd.Parameters.AddWithValue("@Segment7", Segment7);
            //cmd.Parameters.AddWithValue("@Segment8", Segment8);
            //cmd.Parameters.AddWithValue("@CurrentBrand", CurrentBrand);
            //cmd.Parameters.AddWithValue("@FutureBrand", FutureBrand);
            cmd.Parameters.AddWithValue("@quary", 6);

            con.Open();
            cmd.ExecuteNonQuery();

            con.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Record Update successfully');", true);

            gvCustomers.EditIndex = -1;
            this.getdata();

        }
    }
}
 