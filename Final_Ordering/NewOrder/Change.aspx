<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Change.aspx.cs" Inherits="EnterpriseOrdering.Change" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
    <link href="Styles/theme.css" rel="stylesheet" type="text/css" />
   
</head>
<body>
    <form id="form1" runat="server">
    <div>


        <asp:Label ID="Label1" class= "vzh1" runat="server"></asp:Label>


    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            class="Grid" AlternatingRowStyle-CssClass="alt" 
            EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="oid" HeaderText="Order ID" SortExpression="oid" />
                <asp:HyperLinkField HeaderText="Order" 
                    Text="Details" DataNavigateUrlFields="oid" 
                    DataNavigateUrlFormatString="Change_prod.aspx?V={0}" />
            </Columns>
        </asp:GridView>
    
    </div>
    &nbsp;<asp:Button ID="Button2" class="vzbtn" runat="server" Text="Back" 
        onclick="Button2_Click" />
    <asp:Button ID="Button1"  runat="server" class="vzbtn" onclick="Button1_Click" 
        Text="Change" />
    </form>
</body>
</html>
