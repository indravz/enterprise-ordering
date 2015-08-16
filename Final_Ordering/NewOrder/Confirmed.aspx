<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmed.aspx.cs" Inherits="EnterpriseOrdering.Confirmed" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
    <link href="Styles/theme.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    </style>
    
</head>
<body style=" text-align:center;">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td>
    
        <asp:Label ID="Label1" class="vzh1" runat="server" 
            Text="Your order is confirmed !"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="Label2" class="vzh3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="Label3" class="vzh3" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
    
    </div>
    </form>
</body>
</html>
