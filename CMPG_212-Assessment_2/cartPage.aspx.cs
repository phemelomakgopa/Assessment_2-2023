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
    public partial class cartPage : System.Web.UI.Page
    {
        // Declaring SQL objects
        public string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Makgopa\Downloads\CMPG_212-Assessment_2_42165504\CMPG_212-Assessment_2\CMPG_212-Assessment_2\App_Data\Products.mdf;Integrated Security=True";
        public SqlConnection conn;
        public SqlCommand cmd;
        public SqlDataAdapter adap;
        public DataSet ds;
        public SqlDataReader reader;

        public void displayProducts(string sql)
        {
            try
            {
                // Establishing and openning the connection
                conn = new SqlConnection(connStr);
                conn.Open();

                // Instantiating the SQL objects
                cmd = new SqlCommand(sql, conn);
                adap = new SqlDataAdapter();
                ds = new DataSet();

                // 
                adap.SelectCommand = cmd;
                adap.Fill(ds);

                // Displaying the data to the grid view
                GridView1.DataSource = ds;
                GridView1.DataBind();

                // Closing the connection
                conn.Close();
            }
            catch (SqlException error)
            {
                // Displaying an error message to the user
                lblError.Text = "An error occured\n " + error.Message;
            }
        }

        public void CalcPricenItems()
        {
            // Calulating the total price and total items

            // Delcaring the variables
            string sql = "SELECT * FROM tblOrderedItems";
            decimal totalPrice = 0;
            int totalItems = 0;

            // Opening the connection
            conn.Open();

            // Instantiating the command object
            cmd = new SqlCommand(sql, conn);

            //
            reader = cmd.ExecuteReader();

            // Using a while loop to loop through the data set
            while (reader.Read())
            {
                // Using an if-statement to check the quantity number
                // to calculate the total price
                if ((int)reader.GetValue(4) > 1)
                {
                    totalPrice = totalPrice + ((decimal)reader.GetValue(3) * (int)reader.GetValue(4));
                }
                else
                {
                    totalPrice = totalPrice + ((decimal)reader.GetValue(3) * (int)reader.GetValue(4));
                }
                
                // Calculating the total items
                totalItems = totalItems + (int)reader.GetValue(4);
            }

            // Closing the connection
            conn.Close();

            // Displaying the totals in labels
            lblTotalPrice.Text = "R" + totalPrice.ToString();
            lblTotalItems.Text = totalItems.ToString();

            // Adding the shipping fee to the total cost
            totalPrice = totalPrice + 60;

            // Instatiating the HttpCookie object
            // and storing the totals in cookies
            HttpCookie cartDetails = new HttpCookie("CartInformation");
            cartDetails["CartTotalPrice"] = "R" + totalPrice.ToString();
            cartDetails["CartTotalItems"] = totalItems.ToString();

            // Adding the cartDetails cookies to the response page
            Response.Cookies.Add(cartDetails);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Declaring an SQL statement to Select all 
            string sql = "SELECT * FROM tblOrderedItems";

            // Displaying the products in the cart
            displayProducts(sql);

            // Calling the calculate method
            CalcPricenItems();
        }

        protected void btnProcChOut_Click(object sender, EventArgs e)
        {
            // Redirecting to the Checkout page
            Response.Redirect("CheckoutPage.aspx");
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            try
            {
                // Opening the connection
                conn.Open();

                // Declaring a string a variable to store the DELETE sql statement
                string sql = $"DELETE FROM tblOrderedItems WHERE ProductId = '" + txtRemoveID.Text + "'";

                // Instantiating the sql command and adapter objects
                cmd = new SqlCommand(sql, conn);
                adap = new SqlDataAdapter();

                //
                adap.DeleteCommand = cmd;
                adap.DeleteCommand.ExecuteNonQuery();

                // Closing the connection
                conn.Close();

                // Displaying the updated cart
                string dispSql = "SELECT * FROM tblOrderedItems";
                displayProducts(dispSql);

                // Clearing the textbox
                txtRemoveID.Text = "";
                txtRemoveID.Focus();

                // Displaying the updated price and items
                CalcPricenItems();
            }
            catch (SqlException error)
            {
                // Displaying an error message to the user
                lblError.Text = "An error occured\n " + error.Message;
            }
        }

        protected void txtSearchName_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            // 
            try
            {
                // Opening the connection
                conn.Open();

                // Declaring a string a variable to store the Update sql statement
                string sql = $"UPDATE tblOrderedItems SET Quantity = {txtQtyNum.Text} WHERE Name = '" + txtUpdateName.Text + "'";

                // Instantiating the sql command and adapter objects
                cmd = new SqlCommand(sql, conn);
                adap = new SqlDataAdapter();

                //
                adap.UpdateCommand = cmd;
                adap.UpdateCommand.ExecuteNonQuery();

                // Closing the connection
                conn.Close();

                // Displaying the updated cart
                string dispSql = "SELECT * FROM tblOrderedItems";
                displayProducts(dispSql);

                // Clearing the textboxes
                txtQtyNum.Text = "";
                txtUpdateName.Text = "";
                txtUpdateName.Focus();

                // Displaying the updated price and items
                CalcPricenItems();
            }
            catch (SqlException error)
            {
                // Displaying an error message to the user
                lblError.Text = "An error occured\n " + error.Message;
            }
        }

        protected void btnSearchByName_Click(object sender, EventArgs e)
        {
            // 
            string searchSql = "SELECT * FROM tblOrderedItems WHERE Name Like '%" + txtSearchName.Text + "%'";
            displayProducts(searchSql);
        }
    }
}