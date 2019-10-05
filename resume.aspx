<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="resume.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="bootstyle.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
            width: 452px;
        }
        .auto-style3 {
            width: 452px;
        }
        .auto-style4 {
            text-align: right;
            width: 452px;
            height: 23px;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            height: 23px;
            text-align: left;
        }
        .tname,.taddress,.tcontact,.temail,.thigh,.tspec,.tinsti,.tpass {
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
                height: 1080px;s
                padding: 80px 40px;
                border-radius: 10px;
                position: absolute;
                left: 50%;
                top: 100%;
                transform: translate(-50%,-50%);
                                box-shadow:1px 2px 50px 0px rgb(9, 23, 66);

        }
        .tsubmit {
                 display:block;
                width:15%;
                height:50px;
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
                    <div class="login-form">

   
    <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="18pt" style="text-align: center" Text="Personal Information"></asp:Label>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblname" runat="server" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtname" runat="server" CssClass="tname"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lbladdress" runat="server" Text="Address:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" CssClass="taddress"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblcontact" runat="server" Text="Contact Number:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtcontact" runat="server" CssClass="tcontact"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblemail" runat="server" Text="E_mail:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtemail" runat="server" CssClass="temail"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="18pt" Text="Qualification Information"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                </td>
            <td class="auto-style7">
                </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label8" runat="server" Text="Highest Qualification:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="ddlhigh" runat="server" CssClass="thigh">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label9" runat="server" Text="Specialization:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="ddlspecial" runat="server" CssClass="tspec">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblgraduation" runat="server" Text="Institute:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtinstitute" runat="server" CssClass="tinsti"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblpostgraduation" runat="server" Text="Passing Year:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="ddlpass" runat="server" CssClass="tpass">
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="Next" runat="server" Font-Bold="True" OnClick="btnsubmit_Click" Text="Submit" style="height: 26px; text-align: left" CssClass="tsubmit" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
                        </div>
</asp:Content>

