<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Disconnect_Pr.aspx.cs" Inherits="EnterpriseOrdering.Disconnect_Pr" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
    <link href="Styles/theme.css" rel="stylesheet" type="text/css" />
    </head>
<body >
    <form id="form1" runat="server">
    <div style="height: 332px">
    



        <br />
            <asp:Label ID="Label2" class="vzh2" runat="server" Text="LIST OF PRODUCTS"></asp:Label>




        <asp:GridView ID="GridView1" class="Grid" AlternatingRowStyle-CssClass="alt" 
            runat="server" AutoGenerateColumns="False" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="pid" HeaderText="Product ID" SortExpression="pid" />
                <asp:BoundField DataField="pname" HeaderText="Product Name" 
                    SortExpression="pname" />
                <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        
        <asp:Button ID="Button1" class ="vzbtn" runat="server" Text="OK" 
            onclick="Button1_Click1" />
    </div>
    </form>
</body>
</html>
