<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Disconnect_Due.aspx.cs" Inherits="EnterpriseOrdering.Disconnect_Due" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
    <link href="Styles/theme.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 109px;
        }
        .style2
        {
            width: 173px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 345px">
    
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" class="vzh3" runat="server" Text="Due Date"></asp:Label>
                </td>
                <td class="style2">
    
        <asp:TextBox ID="TextBox1" class="vztext" runat="server"></asp:TextBox>
                </td>
                <td>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" class="vzsecondary4" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="yyyy/mm/dd" 
            ValidationExpression="\d{4}(?:/\d{1,2}){2}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            </table>
        <br />
        <asp:Button ID="Button2" class="vzbtn" runat="server" Text="Back" 
            onclick="Button2_Click" />
        <asp:Button ID="Button1" class="vzbtn" runat="server" Text="Continue" 
            onclick="Button1_Click" />
    
    </div>
    </form>
</body>
</html>
