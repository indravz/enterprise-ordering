<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Disconnect_Or.aspx.cs" Inherits="EnterpriseOrdering.Disconnect_Or" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
    <link href="Styles/theme.css" rel="stylesheet" type="text/css" />
</head>
<body >
    <form id="form1" runat="server">
    <div style="height: 496px">
       



            <asp:Label ID="Label1" class="vzh1" runat="server"></asp:Label>



            <br />



            <br />
            <asp:Label ID="Label2" class="vzh2" runat="server" Text="LIST OF ORDERS"></asp:Label>



            <asp:GridView ID="GridView1" class="Grid" AlternatingRowStyle-CssClass="alt" 
                runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField HeaderText="Order ID" DataField="oid" SortExpression="oid" />
                <asp:HyperLinkField HeaderText="Order" 
                    Text="Details" DataNavigateUrlFields="oid" 
                    DataNavigateUrlFormatString="Disconnect_Pr.aspx?V={0}" />
            </Columns>
        </asp:GridView>
            <br />
            <asp:Button class="vzbtn" ID="Button2" runat="server" Text="Back" 
                onclick="Button2_Click" />
        <asp:Button ID="Button1" class="vzbtn" runat="server" Text="Disconnect" onclick="Button1_Click" />
    
    
      
    </div>
    </form>
</body>
</html>
