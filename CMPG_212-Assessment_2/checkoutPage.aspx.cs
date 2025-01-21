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
    public partial class checkoutPage : System.Web.UI.Page
    {
        // Declaring the SQL objects
        public string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\legen\Desktop\Tertiary\Bsc In IT\Second Year\First Semester\CMPG 212\Assignments\CMPG_212-Assessment_2\CMPG_212-Assessment_2\App_Data\Products.mdf;Integrated Security=True";
        public SqlConnection conn;
        public SqlCommand cmd;
        public SqlDataAdapter adap;

        // Declaring a global string variable to store the estimated delivery date
        string estimatedDate = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            // Setting the selected date to today when the page loads
            theCalender.SelectedDate = DateTime.Today;
        }

        protected void theCalender_SelectionChanged(object sender, EventArgs e)
        {
            // Using an if-statement to make sure the selected date is in the future
            if (theCalender.SelectedDate >= DateTime.Today)
            {
                // Checking if the radiobuttons are checked before estimating the date
                if (rdbtnRural.Checked)
                {
                    // Storing the estimated date in a string variable
                    estimatedDate = theCalender.SelectedDate.AddDays(4).ToLongDateString();

                    // Displaying the estimated date message to the user
                    lblEstDate.Text = "Your order is expected to be delivered on \n" + estimatedDate;

                    // Clearing the error label incase an error occured
                    lblError.Text = "";
                }
                else if (rdbtnUrban.Checked)
                {
                    // Storing the estimated date in a string variable
                    estimatedDate = theCalender.SelectedDate.AddDays(3).ToLongDateString();

                    // Displaying the estimated date message to the user
                    lblEstDate.Text = "Your order is expected to be delivered on \n" + estimatedDate;

                    // Clearing the error label incase an error occured
                    lblError.Text = "";
                }
                else
                {
                    // Displaying an error messasage to the user
                    lblError.Text = "Please select the type of your settlement!!";
                }
            }
            else
            {
                // Displaying an error message to the user
                lblError.Text = "The selected date has passed \n!Please select dates in the future!";
            }
        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            try
            {
                // Instantianting the HttpCookie
                // and storing the user information inside cookies
                HttpCookie userCookie = new HttpCookie("CustomerInformation");
                userCookie["UserName"] = txtName.Text;
                userCookie["UserLastName"] = txtSurname.Text;
                userCookie["UserAddress"] = txtAddress.Text + ", " + txtCity.Text + ", " + txtCountry.Text;
                userCookie["UserEmail"] = txtEmail.Text;
                userCookie["UserPhoneNumber"] = txtCellNumber.Text;
                userCookie["deliveryDate"] = estimatedDate; 

                // Establishing a connection
                conn = new SqlConnection(connStr);
                // Opening the connection
                conn.Open();

                // Declaring a string a variable to store the INSERT sql statement
                string sql = $"INSERT INTO tblCustomers (CustomerName, CustomerLstName, ResedentialAddress, CellphoneNumber, EmailAddress) VALUES ('{txtName.Text}', '{txtSurname.Text}', '{txtAddress.Text}', '{txtCellNumber.Text}', '{txtEmail.Text}')";

                // Instantiating the sql command and adapter objects
                cmd = new SqlCommand(sql, conn);
                adap = new SqlDataAdapter();

                //
                adap.InsertCommand = cmd;
                adap.InsertCommand.ExecuteNonQuery();

                // Closing the connection
                conn.Close();

                // Adding the cookies to the respense page
                // and redirecting to the summary page
                Response.Cookies.Add(userCookie);
                Response.Redirect("SummaryPageaspx.aspx");


            }
            catch (SqlException error)
            {
                // Displaying an error message to the user
                lblError.Text = "An error occured\n " + error.Message;
            }


        }
    }
}