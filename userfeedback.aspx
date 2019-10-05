<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="userfeedback.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="bootstyle.css" rel="stylesheet" />
    <style type="text/css">

        .auto-style2 {
            text-align: right;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style3 {
            text-align: right;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
            text-align: left;
        }
        .auto-style1 {
            width: 100%;
        }
        .tname, .temail, .tfeed {
            width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
        }
             .login-form {
                width: 80%;
                background: #f1f1f1;
                height: 800px;
                padding: 80px 40px;
                border-radius: 10px;
                position: absolute;
                left: 50%;
                top: 85%;
                transform: translate(-50%,-50%);
                box-shadow:1px 2px 50px 0px rgb(9, 23, 66);
        }
        .tsubmit {
                display:block;
                width:15%;
                height:35px;
                border:none;
                background:linear-gradient(120deg,#3498db,#8e44ad,#3498db);
                background-size:200%;
                color:#fff;
                outline:none;
                cursor:pointer;
                transition:.5s;
            }
            .tsubmit:hover {
                background-position:right;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>
    <br />
        <div class="login-form">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblname" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtname" runat="server" CssClass="tname"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Please enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblemail" runat="server" Text="E-Mail:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtemail" runat="server" CssClass="temail"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="Please enter your e-mail id" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Please enter valid email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblquery" runat="server" Text="Feedback:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtfeedback" runat="server" TextMode="MultiLine" Width="35%" CssClass="tfeed"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtfeedback" ErrorMessage="Please enter your query" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" CssClass="tsubmit" />
                </td>
            </tr>
        </table>
            </div>
    </p>

</asp:Content>

