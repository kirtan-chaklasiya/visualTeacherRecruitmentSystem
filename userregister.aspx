<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="userregister.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <html>
    <head>
        <title></title>
<link href="bootstyle.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <style>
            body {
                min-height: 50vh;
                background-image: linear-gradient(120deg);
            }

            .loginbox {
                width: 80%;
                background: #f1f1f1;
                height: 1000px;
                padding: 80px 40px;
                border-radius: 10px;
                position: absolute;
                left: 50%;
                top: 100%;
                transform: translate(-50%,-50%);
                                box-shadow:1px 2px 50px 0px rgb(9, 23, 66);

            }

         

            .txtemail,.txtfname,.txtlname,.txtcontact,.txtaddress,.txtcity,.txtpassword {
                width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
            }
                .txtemail, .txtfname, .txtlname, .txtcontact, .txtaddress, .txtcity, .txtpassword:hover {
                    border-color:lightblue;
                }

            .btnsubmit {
                display: block;
                width: 100%;
                height: 50px;
                border: none;
                background: linear-gradient(120deg,#3498db,#8e44ad,#3498db);
                background-size: 200%;
                color: #fff;
                outline: none;
                cursor: pointer;
                transition: .5s;
            }

                .btnsubmit:hover {
                    background-position: right;
                }
         
        </style>
    </head>
    <body>
        <div class="loginbox">
            <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" Text="User Registration" Font-Size="20pt" Font-Bold="True"></asp:Label>


            <!--<asp:Label ID="lblfname" Text="First_Name" CssClass="lblfname" runat="server" />-->

            <!--<asp:Label ID="lbllname" Text="Last_Name" CssClass="lblfname" runat="server" />-->

            <!--<asp:Label ID="lblemail" Text="Email" CssClass="lblemail" runat="server" />-->

            <!--<asp:Label ID="lblcontact" Text="Contact_Number" CssClass="lblcontact" runat="server" />-->

            <!--<asp:Label ID="lblgender" Text="Gender" CssClass="lblgender" runat="server" />-->
        
         
            <!--<asp:Label ID="lbladdress" Text="Address" CssClass="lbladdress" runat="server" />-->

            <!--<asp:Label ID="lblcity" Text="City" CssClass="lblcity" runat="server" />-->



            <!--<asp:Label ID="lblpassword" Text="Password" CssClass="lblpass" runat="server" />-->
            <table class="w-100">
                <tr>
                    <td class="text-right">&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-right">&nbsp;</td>
                    <td class="text-center">&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-right">
                        <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
                    </td>
                    <td class="text-center"><asp:TextBox ID="txtfname" runat="server" CssClass="txtfname" placeholder="First Name" AutoCompleteType="Disabled" />

                    </td>
                    <td class="text-left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtfname" ErrorMessage="Please enter your first name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-right">&nbsp;</td>
                    <td class="text-center">&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-right">
                        <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
                    </td>
                    <td class="text-center">
            <asp:TextBox ID="txtlaname" runat="server" CssClass="txtlname" placeholder="Last Name" AutoCompleteType="Disabled" />

                    </td>
                    <td class="text-left"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your last name" ControlToValidate="txtlaname" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-right">&nbsp;</td>
                    <td class="text-center">&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-right">
                        <asp:Label ID="Label4" runat="server" Text="E-mail:"></asp:Label>
                    </td>
                    <td class="text-center">
            <asp:TextBox ID="txtemail" runat="server" CssClass="txtemail" placeholder="E-mail" AutoCompleteType="Disabled" />

                    </td>
                    <td class="text-left">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Please enter valid email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-right">&nbsp;</td>
                    <td class="text-center">&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-right">
                        <asp:Label ID="Label5" runat="server" Text="Contact Number:"></asp:Label>
                    </td>
                    <td class="text-center">
            <asp:TextBox ID="txtcontact" runat="server" CssClass="txtcontact" placeholder="Mobile Number" AutoCompleteType="Disabled" />

                    </td>
                    <td class="text-left">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtcontact" ErrorMessage="Please enter contact number" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-right">&nbsp;</td>
                    <td class="text-center">&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-right">
                        <asp:Label ID="Label6" runat="server" Text="Gender:"></asp:Label>
                    </td>
                    <td class="text-center">
        
            <asp:RadioButton ID="rdbmale" runat="server" GroupName="gender" Text="Male" CssClass="rdbgender" ForeColor="#8B8B8B" />
            
            &nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:RadioButton ID="rdbfemale" runat="server" GroupName="gender" Text="Female" CssClass="rdbgender" ForeColor="#8B8B8B" />
         
         
                    </td>
                    <td class="text-left">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-right">&nbsp;</td>
                    <td class="text-center">&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-right">
                        <asp:Label ID="Label7" runat="server" Text="Address:"></asp:Label>
                    </td>
                    <td class="text-center">
            <asp:TextBox ID="txtaddress" runat="server" CssClass="txtaddress" placeholder="Address" AutoCompleteType="Disabled" />

                    </td>
                    <td class="text-left">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtaddress" ErrorMessage="Please enter your curreny address" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-right"></td>
                    <td class="text-center"></td>
                    <td class="text-left"></td>
                </tr>
                <tr>
                    <td class="text-right">
                        <asp:Label ID="Label8" runat="server" Text="City:"></asp:Label>
                    </td>
                    <td class="text-center">
            <asp:TextBox ID="txtcity" runat="server" CssClass="txtcity" placeholder="City" AutoCompleteType="Disabled" />

                    </td>
                    <td class="text-left">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcity" ErrorMessage="Please enter your city" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-right">&nbsp;</td>
                    <td class="text-center">&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-right">
                        <asp:Label ID="Label9" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td class="text-center">
            <asp:TextBox ID="txtpassword" runat="server" CssClass="txtpassword" placeholder="Password" AutoCompleteType="Disabled" />



                    </td>
                    <td class="text-left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Please enter correct password" ForeColor="Red" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="text-center">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

            <asp:Button ID="btnsubmit" Text="Submit" CssClass="btnsubmit" runat="server" OnClick="Button1_Click" />
    </body>
    </html>
</asp:Content>

