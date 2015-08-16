<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderForm.aspx.cs" Inherits="EnterpriseOrdering.OrderForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
    <link href="Styles/theme.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div style="height: 638px; text-align: left;">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="style1">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:Label ID="Label8" class="vzh1" runat="server" Font-Bold="False" 
                            Text="PRODUCTS"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:Label ID="Label9" class="vzh1" runat="server" Font-Bold="False" 
                            Text="UNIT PRICE"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="style1">
                        <asp:Label ID="Label10" class="vzh1" runat="server" Text="QUANTITY"></asp:Label>
                    </td>
                    <td class="style10">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label12" class="vzh1" runat="server" Text="COST"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="style1">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            </asp:RadioButtonList>
                        <asp:Label ID="Label13" runat="server"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="Unit1" class="vztext" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="style1">
            <asp:TextBox ID="txtQty1" class="vztext" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                    <td class="style10">
                        &nbsp;</td>
                    <td>
            <asp:TextBox ID="txtTotal1" class="vztext" runat="server" AutoPostBack="True"  ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="style1">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
            </asp:RadioButtonList>
                        <asp:Label ID="Label14" runat="server"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="Unit2" class="vztext" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="style1">
            <asp:TextBox ID="txtQty2" class="vztext" runat="server" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    </td>
                    <td class="style10">
                        &nbsp;</td>
                    <td>
            <asp:TextBox ID="txtTotal2" class="vztext" runat="server" AutoPostBack="True"  ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="style1">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
            <asp:RadioButtonList ID="RadioButtonList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList3_SelectedIndexChanged">
            </asp:RadioButtonList>
                        <asp:Label ID="Label15" runat="server"></asp:Label>
&nbsp;<br />
&nbsp;</td>
                    <td class="style6">
                        <asp:TextBox ID="Unit3" class="vztext" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="style1">
            <asp:TextBox ID="txtQty3" class="vztext" runat="server" AutoPostBack="True" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                    </td>
                    <td class="style10">
                        &nbsp;</td>
                    <td>
            <asp:TextBox ID="txtTotal3" class="vztext" runat="server" AutoPostBack="True"  ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style7">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="style4">
                    </td>
                    <td class="style10">
                    </td>
                    <td class="style3">
                    </td>
                    <td class="style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="style1">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style8">
                        </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style2">
                        </td>
                    <td class="style10">
            <asp:Label ID="Label7" class="vzh3" runat="server" Text="Total "></asp:Label>
                    </td>
                    <td class="auto-style1">
            <asp:TextBox ID="txtTotal" class="vztext" runat="server" ReadOnly="True" ></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style1">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:Label ID="Label16" class="vzh3" runat="server" Text="Due Date"></asp:Label>
                        <asp:TextBox ID="TextBox1" class="vztext" runat="server"></asp:TextBox>
                    </td>
                    <td class="style8">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" class="vzsecondary4" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="yyyy/mm/dd" 
                            ValidationExpression="\d{4}(?:/\d{1,2}){2}"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style1">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style1">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style1">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:Button ID="btnQuote" class="vzbtn" runat="server" 
                            Text="Generate Quotation" onclick="btnQuote_Click" />
                        </td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="style1">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="style1">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:Button ID="Button1" class="vzbtn" runat="server" onclick="Button1_Click1" Text="Back" />
            <asp:Button ID="btnOrder" class="vzbtn" runat="server" OnClick="Button1_Click" Text="Submit" />
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="style1">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                </table>
            <br />
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
    </form>
</body>
</html>
