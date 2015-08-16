<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Change_prod.aspx.cs" Inherits="EnterpriseOrdering.Change_prod" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/theme.css" rel="stylesheet" type="text/css" />
    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
</head>
<body >
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" class="Grid" AlternatingRowStyle-CssClass="alt"
            AutoGenerateColumns="False" EnableModelValidation="True" Width="795px">
            <AlternatingRowStyle CssClass="alt" />
            <Columns>
                <asp:BoundField DataField="pid" HeaderText="Product ID" SortExpression="pid" />
                <asp:BoundField DataField="pname" HeaderText="Product Name" 
                    SortExpression="pname" />
                <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" class="vzbtn" onclick="Button1_Click" 
            Text="Ok" />
    
    </div>
    </form>
</body>
</html>
