<%@ Page Title="" Language="C#" MasterPageFile="~/collegeMasterPage.master" AutoEventWireup="true" CodeFile="clgaddnewjob.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
        }
         .tjob,.tdesc,.tlast,.tnum,.texp,.tquali {
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
                height: 1000px;
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
        &nbsp;</p>
    <p>
        <div class="login-form">
        <center><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="18pt" Text="Add new jobs"></asp:Label></center>
    </p>
    <p>
        <table class="auto-style1" >
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbljobtitle" runat="server" Text="Job Title:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtjobtitle" runat="server" CssClass="tjob"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtjobtitle" ErrorMessage="Please  enter job title" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbldesc" runat="server" Text="Description:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdesc" runat="server" TextMode="MultiLine" CssClass="tdesc"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtdesc" ErrorMessage="Please  enter job description" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbldate" runat="server" Text="Last date for apply:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdate" runat="server" CssClass="tlast" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdate" ErrorMessage="Please  enter last date of apply" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblnoofjob" runat="server" Text="Number of jobs:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtnoofjob" runat="server" CssClass="tnum"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtnoofjob" ErrorMessage="Please  enter number of job" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblquali" runat="server" Text="Required Qualification:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtquali" runat="server" TextMode="MultiLine" CssClass="tquali"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtquali" ErrorMessage="Please  enter required qualification" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Required Experiance:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtexp" runat="server" TextMode="MultiLine" CssClass="texp"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtexp" ErrorMessage="Please  enter required experiance" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" CssClass="tsubmit" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
        <br />
    </p>
    </asp:Content>

