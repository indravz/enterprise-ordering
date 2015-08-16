<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalDetails.aspx.cs" Inherits="EnterpriseOrdering.PersonalDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
    <link href="Styles/theme.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 421px;
        }
        .style2
        {
            width: 173px;
        }
    </style>

 

</head>
<body>
    <form id="form1" runat="server">
 
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label6" class="vzh1" runat="server" Text="PERSONAL DETAILS"></asp:Label>
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" class="vzh3" runat="server" Text="First Name"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" class="vztext" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Cannot be blank" class="vzsecondary4"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label2" class="vzh3" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" class="vztext" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox1" ControlToValidate="TextBox2" 
                        ErrorMessage="Should be different fron First Name" class="vzsecondary4"
                        Operator="NotEqual"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label3" class="vzh3" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox3" class="vztext" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Example@Example.com" class="vzsecondary4" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label4" class="vzh3" runat="server" Text="Phone Number"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox class = "vztext" ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter a valid number" 
                        class="vzsecondary4" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label5" class="vzh3" runat="server" Text="Bill Payment Method"></asp:Label>
                </td>
                <td class="style2">
               
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Autopay</asp:ListItem>
                        <asp:ListItem>Cheque</asp:ListItem>
                    </asp:RadioButtonList>
                    
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" class="vzsecondary4" runat="server" 
                        ControlToValidate="RadioButtonList1" ErrorMessage="Select one option"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Button ID="Button2" class="vzbtn" runat="server" Text="Back" 
                        onclick="Button2_Click" CausesValidation="False" />
                    <asp:Button ID="Button1" class="vzbtn" runat="server" onclick="Button1_Click" 
                        Text="Save and Continue" />
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
