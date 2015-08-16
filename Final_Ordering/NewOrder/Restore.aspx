<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Restore.aspx.cs" Inherits="EnterpriseOrdering.Resrore" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
    <link href="Styles/theme.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:Label ID="Label1" class="vzh2" runat="server"></asp:Label>
        <br />
        <br />

            <asp:Label ID="Label2" class="vzh2" runat="server" Text="LIST OF ORDERS"></asp:Label>




    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            class="Grid" AlternatingRowStyle-CssClass="alt" 
            EnableModelValidation="True">
            <AlternatingRowStyle CssClass="alt" />
            <Columns>
                <asp:BoundField DataField="oid" HeaderText="Order ID" SortExpression="oid" />
                <asp:HyperLinkField HeaderText="Order" 
                    Text="Details" DataNavigateUrlFields="oid" 
                    DataNavigateUrlFormatString="REstore_prod.aspx?V={0}" />
            </Columns>
        </asp:GridView>
        <table style="width: 100%;">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:Button ID="Button4" class="vzbtn" runat="server" Text="Back" onclick="Button4_Click" />
        <asp:Button ID="Button1" runat="server" class="vzbtn" onclick="Button1_Click" 
            Text="Suspend" Visible="False" />
        <asp:Button ID="Button3"  class="vzbtn" runat="server" Text="Restore" 
            onclick="Button2_Click" Visible="False" Width="136px" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
&nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
