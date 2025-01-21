using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace CMPG_212_Assessment_2
{
    public partial class Default : System.Web.UI.Page
    {
        // Declaring the SQL objects
        public string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\legen\Desktop\Tertiary\Bsc In IT\Second Year\First Semester\CMPG 212\Assignments\CMPG_212-Assessment_2\CMPG_212-Assessment_2\App_Data\Products.mdf;Integrated Security=True";
        public SqlConnection conn;
        public SqlCommand cmd;
        public SqlDataAdapter adap;
        public DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void insertIntoCart()
        {
            try
            {
                // Establishing a connection
                conn = new SqlConnection(connStr);
                // Opening thr connection
                conn.Open();

                // Declaring a string a variable to store the INSERT sql statement
                string sql = $"INSERT INTO tblOrderedItems (Brand, Name, Price, Quantity) VALUES ('{Session["ProductBrand"]}', '{Session["ProductName"]}', '{Session["ProductPrice"]}', '1')";

                // Instantiating the sql command and adapter objects
                cmd = new SqlCommand(sql, conn);
                adap = new SqlDataAdapter();

                //
                adap.InsertCommand = cmd;
                adap.InsertCommand.ExecuteNonQuery();

                // Closing the connection
                conn.Close();
            }
            catch (SqlException error)
            {
                // Displaying an error message to the user
                lblError.Text = "An error occured\n " + error.Message;
            }

        }

        protected void btnAddPods_Click(object sender, EventArgs e)
        {
            // Storing the information of the selected product in Session variables
            Session["ProductName"] = lblProductNamePods.Text;
            Session["ProductBrand"] = lblProductBrandPods.Text;
            Session["ProductPrice"] = 4499;

            // Calling the insert into cart method
            insertIntoCart();
        }

        protected void btnAddHPLaptop_Click(object sender, EventArgs e)
        {
            // Storing the information of the selected product in Session variables
            Session["ProductName"] = lblNameRyLaptop.Text;
            Session["ProductBrand"] = lblHPBrand.Text;
            Session["ProductPrice"] = 7999;

            // Calling the insert into cart method
            insertIntoCart();
        }

        protected void btnAddBand_Click(object sender, EventArgs e)
        {
            // Storing the information of the selected product in Session variables
            Session["ProductName"] = lblBandName.Text;
            Session["ProductBrand"] = lblHuaBrand.Text;
            Session["ProductPrice"] = 1299;

            // Calling the insert into cart method
            insertIntoCart();
        }

        protected void btnAddHiTV_Click(object sender, EventArgs e)
        {
            // Storing the information of the selected product in Session variables
            Session["ProductName"] = lblTV.Text;
            Session["ProductBrand"] = lblHiseBrand.Text;
            Session["ProductPrice"] = 4000;

            // Calling the insert into cart method
            insertIntoCart();
        }

        protected void btnAddJBLSpeakers_Click(object sender, EventArgs e)
        {
            // Storing the information of the selected product in Session variables
            Session["ProductName"] = lblSpeakerName.Text;
            Session["ProductBrand"] = lblJBLBrand.Text;
            Session["ProductPrice"] = 2999;

            // Calling the insert into cart method
            insertIntoCart();
        }

        protected void btnAddSamA23_Click(object sender, EventArgs e)
        {
            // Storing the information of the selected product in Session variables
            Session["ProductName"] = lblPhoneName.Text;
            Session["ProductBrand"] = lblSmSnBrand.Text;
            Session["ProductPrice"] = 3899;

            // Calling the insert into cart method
            insertIntoCart();
        }

        protected void btnAddVolkSBar_Click(object sender, EventArgs e)
        {
            // Storing the information of the selected product in Session variables
            Session["ProductName"] = lblSoundbarName.Text;
            Session["ProductBrand"] = lblVolkBrand.Text;
            Session["ProductPrice"] = 1499;

            // Calling the insert into cart method
            insertIntoCart();
        }

        protected void btnAddLenovoTab_Click(object sender, EventArgs e)
        {
            // Storing the information of the selected product in Session variables
            Session["ProductName"] = lblTabName.Text;
            Session["ProductBrand"] = lblLenovoBrand.Text;
            Session["ProductPrice"] = 5999;

            // Calling the insert into cart method
            insertIntoCart();
        }

        protected void btnAddAcerLap_Click(object sender, EventArgs e)
        {
            // Storing the information of the selected product in Session variables
            Session["ProductName"] = lblAspName.Text;
            Session["ProductBrand"] = lblAcerBrand.Text;
            Session["ProductPrice"] = 7499;

            // Calling the insert into cart method
            insertIntoCart();
        }

        protected void btnAddTauKettle_Click(object sender, EventArgs e)
        {
            // Storing the information of the selected product in Session variables
            Session["ProductName"] = lblKettleName.Text;
            Session["ProductBrand"] = lblTaurusBrand.Text;
            Session["ProductPrice"] = 850;

            // Calling the insert into cart method
            insertIntoCart();
        }

        protected void btnAddRHMW_Click(object sender, EventArgs e)
        {
            // Storing the information of the selected product in Session variables
            Session["ProductName"] = lblMicroWName.Text;
            Session["ProductBrand"] = lblRHBrand.Text;
            Session["ProductPrice"] = 1600;

            // Calling the insert into cart method
            insertIntoCart();
        }

        protected void btnAddKWAFO_Click(object sender, EventArgs e)
        {
            // Storing the information of the selected product in Session variables
            Session["ProductName"] = lblAirFryerName.Text;
            Session["ProductBrand"] = lblKWBrand.Text;
            Session["ProductPrice"] = 2999;

            // Calling the insert into cart method
            insertIntoCart();
        }
    }
}