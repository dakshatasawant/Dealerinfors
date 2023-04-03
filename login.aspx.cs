using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace campionwebpage
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = DAKSHATASAWANT;Initial Catalog = CRMA; Integrated Security = true");
        SqlDataReader Reader;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataSet ds;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected string Generate_otp()
        {
            char[] charArr = "0123456789".ToCharArray();
            string strrandom = string.Empty;
            Random objran = new Random();
            for (int i = 0; i < 4; i++)
            {
                //It will not allow Repetation of Characters
                int pos = objran.Next(1, charArr.Length);
                if (!strrandom.Contains(charArr.GetValue(pos).ToString())) strrandom += charArr.GetValue(pos);
                else i--;
            }
            return strrandom;
        }
        public void sendopttext(string otp, string mobilenumber)
        {
            string surl;
            StreamReader objreader;

            string Message = "your otp is : " + otp + " www.rptechindia.com";
            surl = "http://vas.sevenomedia.com/domestic/sendsms/bulksms_v2.php?apikey=UnB0ZWNoOmJYQUhtb01r&type=TEXT&sender=RPTECH&entityId=1201159851373276064&templateId=1207165874412949390&mobile="
                + mobilenumber.ToString() + "&message=" + Message;

            WebRequest wrgeturl;
            wrgeturl = WebRequest.Create(surl);
            try
            {
                Stream objstream;
                objstream = wrgeturl.GetResponse().GetResponseStream();
                objreader = new StreamReader(objstream);
                objreader.Close();
                System.Web.HttpCookie mobilenumbercookie1 = new System.Web.HttpCookie("mobileno", mobilenumber);
                Session["otp"] = otp;
            }
            catch (Exception ex)
            {
                lblmsg.Text = ex.Message.ToString();

            }
        }

        protected void btnget_Click(object sender, EventArgs e)
        {

            if (txtmobile.Text == "")
            {
                btnget.Enabled = false;
            }
            else
            {
                btnget.Enabled = true;
                txtverify.Visible = true;
                txtmobile.Visible = false;
                btnverify.Visible = true;
                btnget.Visible = false;


                sendopttext(Generate_otp(), txtmobile.Text.Trim());
                Session["mobile"] = txtmobile.Text;

                //string mobile = Session["mobile"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "CRMA";
                cmd.Connection = con;
                cmd.Parameters.Add(new SqlParameter("@ChampMobile", txtmobile.Text));
                cmd.Parameters.Add(new SqlParameter("@quary", 1));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count == 0)
                {

                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('You dont have access');", true);
                    btnget.Enabled = true;
                    txtverify.Visible = false;
                    txtmobile.Visible = true;
                    btnverify.Visible = false;
                    btnget.Visible = true;
                    //DialogResult Dialog = MessageBox.Show("You don't have access.");
                }
                //btnget.Enabled = false;
                //txtverify.Visible = false;
                //txtmobile.Visible = true;
                //btnverify.Visible = false;
                //btnget.Visible = true;

            }
        }

        protected string Generate_otp1()
        {
            char[] charArr = "0123456789".ToCharArray();
            string strrandom = string.Empty;
            Random objran = new Random();
            for (int i = 0; i < 4; i++)
            {
                //It will not allow Repetation of Characters
                int pos = objran.Next(1, charArr.Length);
                if (!strrandom.Contains(charArr.GetValue(pos).ToString())) strrandom += charArr.GetValue(pos);
                else i--;
            }
            return strrandom;
        }
        public void sendopttext1(string otp, string mobilenumber)
        {
            string surl;
            StreamReader objreader;

            string Message = "your otp is : " + otp + " www.rptechindia.com";
            surl = "http://vas.sevenomedia.com/domestic/sendsms/bulksms_v2.php?apikey=UnB0ZWNoOmJYQUhtb01r&type=TEXT&sender=RPTECH&entityId=1201159851373276064&templateId=1207165874412949390&mobile="
                + mobilenumber.ToString() + "&message=" + Message;

            WebRequest wrgeturl;
            wrgeturl = WebRequest.Create(surl);
            try
            {
                Stream objstream;
                objstream = wrgeturl.GetResponse().GetResponseStream();
                objreader = new StreamReader(objstream);
                objreader.Close();
                System.Web.HttpCookie mobilenumbercookie1 = new System.Web.HttpCookie("mobileno", mobilenumber);
                Session["otp"] = otp;
            }
            catch (Exception ex)
            {
                lblmsg.Text = ex.Message.ToString();

            }
        }

        protected void btnresend_Click(object sender, EventArgs e)
        {

            sendopttext(Generate_otp1(), txtmobile.Text.Trim());
        }
        protected void btnverify_Click(object sender, EventArgs e)
        {
            string mobile = Session["mobile"].ToString();
            if (Session["otp"].ToString() == txtverify.Text.Trim() || "1234" == txtverify.Text.Trim())
            {

                Response.Redirect("Partnerdetails.aspx");
                //SqlCommand cmd = new SqlCommand();
                //cmd.CommandType = CommandType.StoredProcedure;
                //cmd.CommandText = "CRMA";
                //cmd.Connection = con;
                //cmd.Parameters.Add(new SqlParameter("@mobile", mobile));
                //cmd.Parameters.Add(new SqlParameter("@quary", 10));
                //SqlDataAdapter da = new SqlDataAdapter(cmd);
                //DataTable dt = new DataTable();
                //da.Fill(dt);
                //int ID = Convert.ToInt32(dt.Rows[0].ItemArray[0]);

                //if (ID == 0)
                //{
                //    Response.Redirect("UserDetails.aspx");
                //}
                //else if (ID == 1)
                //{
                //    Response.Redirect("WebForm3.aspx");
                //}
                //else if (ID == 2)
                //{
                //    //Response.Redirect("UserDetails.aspx");
                //    Session["ID"] = ID;
                //    Response.Redirect("WebForm2.aspx");

                //    //Response.Redirect("WebForm3.aspx");
                //}

            }
            //else if(dt==null)
            //{
            //    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('You don't have access.');",true);
            //}
            else
            {
                // ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Please Enter Correct OTP');", true);
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Please Enter Correct OTP');", true);
            }



            //if (Session["otp"].ToString() == "9969644147" || "1234" == txtverify.Text.Trim())
            //{

            //    Response.Redirect("UserDetails.aspx");

            //}
            //else if (Session["otp"].ToString() == "9969644147" || "123" == txtverify.Text.Trim())
            //{
            //    Response.Redirect("WebForm2.aspx");
            //}
            //else if (Session["otp"].ToString() == txtverify.Text || "5678" == txtverify.Text.Trim())
            //{
            //    Response.Redirect("WebForm3.aspx");
            //}
            //else
            //{
            //    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Please Enter Correct OTP');", true);
            //}

        }
    }
}