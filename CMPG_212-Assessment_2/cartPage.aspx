<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cartPage.aspx.cs" Inherits="CMPG_212_Assessment_2.cartPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #99CCFF">
<head runat="server">
    <title>Your Cart</title>
    <style type="text/css">
        .auto-style1 {
            width: 444px;
        }
        .auto-style2 {
            width: 385px;
        }
     
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Font-Underline="True" Text="Quantum Mak" BorderColor="#003300" ForeColor="#660066" Width="278px" Font-Overline="True"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblError" runat="server" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                    <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Your Cart:"></asp:Label>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <br />
                    <asp:Panel ID="Panel4" runat="server">
                        <asp:GridView ID="GridView1" runat="server" Height="293px" Width="430px">
                        </asp:GridView>
                    </asp:Panel>
                </td>
                <td class="auto-style2">
                    <asp:Panel ID="Panel3" runat="server" GroupingText="Search a product">
                        <asp:Label ID="Label4" runat="server" Text="Search for a product by Name:"></asp:Label>
                        <asp:TextBox ID="txtSearchName" runat="server" OnTextChanged="txtSearchName_TextChanged"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSearchByName" runat="server" OnClick="btnSearchByName_Click" Text="Search" Width="80px" TabIndex="1" />
                    </asp:Panel>
                    <br />
                    <asp:Panel ID="Panel2" runat="server" GroupingText="Remove a product">
                        <asp:Label ID="Label3" runat="server" Text="Enter ProductID to remove from your cart:"></asp:Label>
                        <asp:TextBox ID="txtRemoveID" runat="server" Width="91px" TabIndex="2"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnRemove" runat="server" OnClick="btnRemove_Click" Text="Remove" Width="83px" TabIndex="3" />
                    </asp:Panel>
                    <br />
                    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2" GroupingText="Update Quantity">
                        <asp:Label ID="Label7" runat="server" Text="Enter the Name of the product to update:"></asp:Label>
                        <asp:TextBox ID="txtUpdateName" runat="server" TabIndex="4"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="Enter the Quantity:"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtQtyNum" runat="server" Width="79px" TabIndex="5"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" Width="83px" TabIndex="6" />
                        <br />
                    </asp:Panel>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="pricelbl" runat="server" Font-Bold="True">Total Price:</asp:Label>
                            </td>
                <td class="auto-style2">&nbsp;<asp:Label ID="lblTotalPrice" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td>
                            <asp:Button ID="btnProcChOut" runat="server" BackColor="Lime" BorderColor="Black" Height="38px" Text="Proceed to Checkout" Width="192px" OnClick="btnProcChOut_Click" TabIndex="7" />
                        </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblQty" runat="server" Font-Bold="True">Total Items:</asp:Label>
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="lblTotalItems" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="You will be required to enter your details when checking out." ForeColor="#660066"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                            <asp:HyperLink ID="hypLnkHMPG" runat="server" NavigateUrl="~/Default.aspx">Return to home page</asp:HyperLink>
                            </td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
