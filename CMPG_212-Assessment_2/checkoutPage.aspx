<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkoutPage.aspx.cs" Inherits="CMPG_212_Assessment_2.checkoutPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #99CCFF">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 426px;
        }
        .auto-style2 {
            width: 426px;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
            width: 559px;
        }
        .auto-style4 {
            width: 461px;
        }
        .auto-style5 {
            height: 26px;
            width: 461px;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            width: 559px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
                        <asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Font-Underline="True" Text="Quantum Mak" BorderColor="#003300" ForeColor="#660066" Width="278px" Font-Overline="True"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblError" runat="server" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                    </p>
        <table class="auto-style6">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label15" runat="server" Text="Please register your info with us." ForeColor="#660066"></asp:Label>
                    </td>
                <td class="auto-style5">
                    <asp:Label ID="Label16" runat="server" Text="Please note: Shipping fee is R60 nationwide" ForeColor="#660066"></asp:Label>
                    <br />
                    <asp:Label ID="Label17" runat="server" Text="and delivery takes 4 days from the day of the order" ForeColor="#660066"></asp:Label>
                    <br />
                    <asp:Label ID="Label22" runat="server" Text="if you reside in a rural area and 3 days for urban" ForeColor="#660066"></asp:Label>
                    </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Large" Text="Personal Information:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Large" Text="Shipping Information:"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Large" Text="Contact Information:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="First Name:"></asp:Label>
                    <asp:TextBox ID="txtName" runat="server" Width="176px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter your name!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="Residential Address:"></asp:Label>
                    <asp:TextBox ID="txtAddress" runat="server" Width="265px" TabIndex="3"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress" ErrorMessage="Please enter your address!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="Label8" runat="server" Text="Cellphone Number: "></asp:Label>
                    <asp:TextBox ID="txtCellNumber" runat="server" Width="165px" TabIndex="8"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCellNumber" ErrorMessage="Please enter your cellphone number!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label9" runat="server" Text="Last Name:"></asp:Label>
                    <asp:TextBox ID="txtSurname" runat="server" Width="180px" TabIndex="1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSurname" ErrorMessage="Please enter your last name!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label12" runat="server" Text="Province &amp; City:"></asp:Label>
                    <asp:TextBox ID="txtCity" runat="server" Width="377px" TabIndex="4"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCountry" ErrorMessage="Please enter your province and city!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="Label13" runat="server" Text="Telephone Number: "></asp:Label>
                    <asp:TextBox ID="txtTelephoneNum" runat="server" Width="165px" TabIndex="9"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label10" runat="server" Text="Password:"></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" Width="190px" TextMode="Password" TabIndex="2"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter a password!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label11" runat="server" Text="Country:"></asp:Label>
                    <asp:TextBox ID="txtCountry" runat="server" Width="349px" TabIndex="5"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCountry" ErrorMessage="Please enter the country you from!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="Label14" runat="server" Text="Email Address:     "></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" Width="199px" TabIndex="10"></asp:TextBox>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter a valid email address!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <br />
                    <asp:Label ID="Label20" runat="server" Text="Please select the type of settlement:"></asp:Label>
                    <br />
                    <asp:RadioButton ID="rdbtnRural" runat="server" Text="Rural" GroupName="Settlement" TabIndex="6" />
&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label21" runat="server" Text="or"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rdbtnUrban" runat="server" Text="Urban" GroupName="Settlement" TabIndex="7" />
                </td>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;<asp:Label ID="Label18" runat="server" Text="Please choose a preferred date of shipping " ForeColor="#660066"></asp:Label>
                    <br />
                    <asp:Label ID="Label19" runat="server" Text="and get an estimated date of delivery:" ForeColor="#660066"></asp:Label>
                    <asp:Calendar ID="theCalender" runat="server" OnSelectionChanged="theCalender_SelectionChanged" TabIndex="11"></asp:Calendar>
                    <asp:Label ID="lblEstDate" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:HyperLink ID="HypLnkCheckout" runat="server" NavigateUrl="~/cartPage.aspx">Return to checkout page</asp:HyperLink>
        <br />
        <asp:HyperLink ID="hypLnkHMPG" runat="server" NavigateUrl="~/Default.aspx">Return to home page</asp:HyperLink>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnCheckOut" runat="server" BackColor="Lime" BorderColor="Black" Height="63px" Text="Checkout" Width="186px" OnClick="btnCheckOut_Click" TabIndex="12" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblSummary" runat="server" ForeColor="#660066">A summary of your order follows on the next page</asp:Label>
    </form>
</body>
</html>
