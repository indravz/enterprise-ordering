﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Restore_due.aspx.cs" Inherits="EnterpriseOrdering.Restore_due" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
    <link href="Styles/theme.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 164px;
        }
        .style2
        {
            width: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" class="vzh3" runat="server" Text="Due Date"></asp:Label>
    
                </td>
                <td class="style1">
    
        <asp:TextBox ID="TextBox1" runat="server" class="vztext"></asp:TextBox>
                </td>
                <td>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" class="vzsecondary4" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Wrong Date Format" 
            ValidationExpression="\d{4}(?:/\d{1,2}){2}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            </table>
        <br />
    
        <asp:Button ID="Button4" class="vzbtn" runat="server" Text="back" 
            onclick="Button4_Click" />
    
        <asp:Button ID="Button1" runat="server" class="vzbtn" onclick="Button1_Click" 
            Text="Continue" />
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
    </div>
    </form>
</body>
</html>
