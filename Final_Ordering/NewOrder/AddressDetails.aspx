<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddressDetails.aspx.cs" Inherits="EnterpriseOrdering.AddressDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
    <link href="Styles/theme.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    </style>
</head>
<body style="overflow:scroll">
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" class="vzh1" runat="server" Text="BILLING ADDRESS" 
                        Font-Bold="False"></asp:Label>
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
                    <asp:Label ID="Label15" class="vzh3" runat="server" Text="Company Name"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox13" class="vztext" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox13" ErrorMessage="Cannot be blank" class="vzsecondary4"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label2" class="vzh3" runat="server" Text="Line1"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" class="vztext" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Cannot be blank" class="vzsecondary4"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label3" class="vzh3" runat="server" Text="Line2"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" class="vztext" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label4" class="vzh3" runat="server" Text="City"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox3" class="vztext" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Cannot be blank" class="vzsecondary4"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label5" class="vzh3" runat="server" Text="State"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox4" class="vztext" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Cannot be blank" class="vzsecondary4"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label6" class="vzh3" runat="server" Text="Zipcode"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox5" class="vztext" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter valid zipcode" class="vzsecondary4" 
                        ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label7" class="vzh3" runat="server" Text="Statecode"></asp:Label>
                </td>
                <td class="style13">
                    <asp:TextBox ID="TextBox6" class="vztext" runat="server"></asp:TextBox>
                </td>
                <td class="style14">
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
                    <asp:Label ID="Label8" class="vzh1" runat="server" Text="SHIPPING ADDRESS" 
                        Font-Bold="False"></asp:Label>
                </td>
                <td class="style2">
                    <asp:RadioButton ID="RadioButton1" runat="server" 
                        oncheckedchanged="RadioButton1_Checked" Text="Same as Billing Address" 
                        AutoPostBack="True" />
                </td>
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
                    <asp:Label ID="Label16" class="vzh3" runat="server" Text="Company Name"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox14" class="vztext" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox14" ErrorMessage="Cannot be blank" class="vzsecondary4"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label9" class="vzh3" runat="server" Text="Line1"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox7" class="vztext" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="Cannot be blank" class="vzsecondary4"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label10" class="vzh3" runat="server" Text="Line2"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox8" class="vztext" runat="server" ontextchanged="TextBox8_TextChanged"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label11" class="vzh3" runat="server" Text="City"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox9" class="vztext" runat="server"></asp:TextBox>
                </td>
                <td class="style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox9" ErrorMessage="Cannot be blank" class="vzsecondary4"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label12" class="vzh3" runat="server" Text="State"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox10" class="vztext" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox10" ErrorMessage="Cannot be blank" class="vzsecondary4"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label13" class="vzh3" runat="server" Text="Zipcode"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox11" class="vztext" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox11" ErrorMessage="Enter valid zipcode" 
                        class="vzsecondary4" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label14" class="vzh3" runat="server" Text="Statecode"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox12" class="vztext" runat="server"></asp:TextBox>
                </td>
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
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
                <td class="style4">
                </td>
                <td class="style5">
                </td>
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
</body>
</html>
