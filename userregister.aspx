<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="userregister.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <html>
    <head>
        <title></title>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <style>
            body {
                min-height: 50vh;
                background-image: linear-gradient(120deg);
            }

            .loginbox {
                width: 360px;
                background: #f1f1f1;
                height: 800px;
                padding: 80px 40px;
                border-radius: 10px;
                position: absolute;
                left: 50%;
                top: 85%;
                transform: translate(-50%,-50%);
            }

            .lblemail, .lblpass, .lblfname, .lblfname, .lblcontact, .lblgender, .lbladdress, .lblcity, .rdbgender {
                font-weight: bold;
                color: black;
            }

            .txtemail, .txtpass, .btnsubmit, .txtfname, .txtlname, .txtcontact, .rdbgender, .txtaddress, .txtcity {
                width: 100%;
                margin-bottom: 20px;
            }

            .txtemail, .txtpass, .txtfname, .txtlname, .txtcontact, .rdbgender, .txtaddress, .txtcity {
                border: none;
                border-bottom: 1px solid #fff;
                outline: none;
                height: 40px;
                color: black;
                font-size: 16px;
                background-color: transparent;
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
            <asp:Label ID="Label1" runat="server" Text="User Registration" Font-Size="20pt" Font-Bold="True"></asp:Label>


            <!--<asp:Label ID="lblfname" Text="First_Name" CssClass="lblfname" runat="server" />-->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your fisrt name" ControlToValidate="txtfname" ForeColor="Red"></asp:RequiredFieldValidator><asp:TextBox ID="txtfname" runat="server" CssClass="txtfname" placeholder="First Name" AutoCompleteType="Disabled" />

            <!--<asp:Label ID="lbllname" Text="Last_Name" CssClass="lblfname" runat="server" />--><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your last name" ControlToValidate="txtlaname" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtlaname" runat="server" CssClass="txtlname" placeholder="Last Name" AutoCompleteType="Disabled" />

            <!--<asp:Label ID="lblemail" Text="Email" CssClass="lblemail" runat="server" />-->
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Please enter valid email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtcontact" ErrorMessage="Please enter contact number" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtemail" runat="server" CssClass="txtemail" placeholder="E-mail" AutoCompleteType="Disabled" />

            <!--<asp:Label ID="lblcontact" Text="Contact_Number" CssClass="lblcontact" runat="server" />-->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcontact" ErrorMessage="Please enter your contact number" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtcontact" runat="server" CssClass="txtcontact" placeholder="Mobile Number" AutoCompleteType="Disabled" />

            <!--<asp:Label ID="lblgender" Text="Gender" CssClass="lblgender" runat="server" />-->
        
            <asp:RadioButton ID="rdbmale" runat="server" GroupName="gender" Text="Male" CssClass="rdbgender" ForeColor="#8B8B8B" /><asp:RadioButton ID="rdbfemale" runat="server" GroupName="gender" Text="Female" CssClass="rdbgender" ForeColor="#8B8B8B" />

         
            <!--<asp:Label ID="lbladdress" Text="Address" CssClass="lbladdress" runat="server" />-->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtaddress" ErrorMessage="Please enter your curreny address" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtaddress" runat="server" CssClass="txtaddress" placeholder="Address" AutoCompleteType="Disabled" />

            <!--<asp:Label ID="lblcity" Text="City" CssClass="lblcity" runat="server" />-->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcity" ErrorMessage="Please enter your city" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtcity" runat="server" CssClass="txtcity" placeholder="City." AutoCompleteType="Disabled" />



            <!--<asp:Label ID="lblpassword" Text="Password" CssClass="lblpass" runat="server" />-->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtpassword" ErrorMessage="Please enter strong password" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtpassword" runat="server" CssClass="txtpass" placeholder="Password" AutoCompleteType="Disabled" />

            <asp:Button ID="btnsubmit" Text="Submit" CssClass="btnsubmit" runat="server" OnClick="Button1_Click" />
    </body>
    </html>
</asp:Content>

