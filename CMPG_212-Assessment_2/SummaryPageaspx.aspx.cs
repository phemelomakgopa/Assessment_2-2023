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
    public partial class SummaryPageaspx : System.Web.UI.Page
    {
        // Declaring the SQL objects
        public string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\legen\Desktop\Tertiary\Bsc In IT\Second Year\First Semester\CMPG 212\Assignments\CMPG_212-Assessment_2\CMPG_212-Assessment_2\App_Data\Products.mdf;Integrated Security=True";
        public SqlConnection conn;
        public SqlCommand cmd;
        public SqlDataAdapter adap;
        public SqlDataReader reader;
        public DataSet ds;

        

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {       
                // Retrieving the cookies from previous pages
                HttpCookie userCookieRetrieve = Request.Cookies["CustomerInformation"];
                HttpCookie cartCookieRetrieve = Request.Cookies["CartInformation"];

                // Checking if the cookies are empty or not
                if (userCookieRetrieve != null && cartCookieRetrieve != null)
                {
                    // Displaying the information in the listbox
                    lstbxSummary.Items.Add("Hi " + userCookieRetrieve["UserName"] + " " + userCookieRetrieve["UserLastName"] + ",");
                    lstbxSummary.Items.Add("the checkout was succesful!");
                    lstbxSummary.Items.Add(" ");
                    lstbxSummary.Items.Add("Your Quantum Mak Order has been dispatched or will be, depending on your selected date,");
                    lstbxSummary.Items.Add("and will be delivered on " + userCookieRetrieve["deliveryDate"]);
                    lstbxSummary.Items.Add("to the following address " + userCookieRetrieve["UserAddress"]);
                    lstbxSummary.Items.Add(" ");
                    lstbxSummary.Items.Add("The Quantum Mak team will SMS you to this number: " + userCookieRetrieve["UserPhoneNumber"]);
                    lstbxSummary.Items.Add("and email you to this address: " + userCookieRetrieve["UserEmail"]);
                    lstbxSummary.Items.Add("a secure PIN when your order is on the way for delivery.");
                    lstbxSummary.Items.Add(" ");
                    lstbxSummary.Items.Add("Take a look at your items in this order");
                    lstbxSummary.Items.Add(" ");
                    lstbxSummary.Items.Add("Brand      \t  Name      \t             Price   \t      Qty");

                    // Establishing and opening the connection to the database
                    conn = new SqlConnection(connStr);
                    conn.Open();

                    // Declaring and initializing the variables
                    string cartItems = "";
                    string sql = "SELECT * FROM tblOrderedItems";

                    // Creating a command, setting the SQL string and the connection
                    cmd = new SqlCommand(sql, conn);

                    // Using the DataReader to read the records
                    reader = cmd.ExecuteReader();

                    // Using a while loop to loop through the data set
                    while(reader.Read())
                    {
                        cartItems = reader.GetValue(1) + " \t                  " + reader.GetValue(2) + " \t          R" + reader.GetValue(3) + " \t                " + reader.GetValue(4);

                        // Adding the data to the listbox
                        lstbxSummary.Items.Add(cartItems);
                    }

                    // Displaying pricing info to the user
                    lstbxSummary.Items.Add(" ");
                    lstbxSummary.Items.Add("The total items of your order is: " + cartCookieRetrieve["CartTotalItems"]);
                    lstbxSummary.Items.Add("The total price of your order is: " + cartCookieRetrieve["CartTotalPrice"]);
                    lstbxSummary.Items.Add("The price include a shipping fee of: R60.");

                    // Displaying goodbye messages to the user
                    lblGoodBye.Text = "Thank You For Placing An Order With Us!";
                    lblComeAgain.Text = "Please come again sometime!";


                    // Deleting the cart items 
                    string delSql = "DELETE FROM tblOrderedItems";
                    // Instantiating the sql command and adapter objects
                    cmd = new SqlCommand(delSql, conn);
                    adap = new SqlDataAdapter();

                    //
                    adap.DeleteCommand = cmd;
                    adap.DeleteCommand.ExecuteNonQuery();

                    // Closing the connection
                    conn.Close();
                }
                
            }
            catch 
            {
                
            }
        }

        protected void btnDone_Click(object sender, EventArgs e)
        {
          
        }
    }
}