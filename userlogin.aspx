<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="userlogin.aspx.cs" Inherits="Default4" %>

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
    min-height:50vh;
    background-image:linear-gradient(120deg);
}
.login-form {
    width:360px;
    background:#f1f1f1;
    height:580px;
    padding:80px 40px;
    border-radius:10px;
    position:absolute;
    left:50%;
    top:70%;
    transform:translate(-50%,-50%);
                    box-shadow:1px 2px 50px 0px rgb(9, 23, 66);

    
}
            .txtb {
                border-bottom:2px solid #adadad;
                position:relative;
                margin:30px 0;
            }
            .txtuser,.txtpass {
                font-size:15px;
                color:#333;
                border:none;
                width:100%;
                outline:none;
                background:none;
                padding:0 5px;
                height:40px;

            }
   
            .txtb span::before {
      
                position:absolute;
                top:50%;
                left:5px;
                color:#adadad;
                transform:translateY(-50%);
                z-index:-1;
                transition:.5s;
            }
            .txtb span::after {

                position:absolute;
                width:0%;
                height:2px;
                background:linear-gradient(120deg,#3498db,#8e44ad);
                transition:.5s;
            }
            .lgnbutton {
                display:block;
                width:100%;
                height:50px;
                border:none;
                background:linear-gradient(120deg,#3498db,#8e44ad,#3498db);
                background-size:200%;
                color:#fff;
                outline:none;
                cursor:pointer;
                transition:.5s;
            }
            .lgnbutton:hover {
                background-position:right;
            }
            .bottom-text {
                margin-top:60px;
                text-align:center;
                font-size:13px;

            }
            .focus + span::before {
                top:-5px;
            }
              .focus + span::after {
                width:100%;
            }
        </style>
    </head>
    <body>
        <div class="login-form">
            <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
        <center><asp:Label ID="Label1" runat="server" Text="Login" CssClass="lbllogin" Font-Bold="True" Font-Size="20pt"></asp:Label></center>
        <div class="txtb">
            <asp:TextBox ID="txtemail" runat="server" placeholder="Email" CssClass="txtuser"></asp:TextBox>
        </div>

        <div class="txtb">
            <asp:TextBox ID="txtpassword" runat="server" placeholder="Password" CssClass="txtpass" TextMode="Password"></asp:TextBox>
        </div>
        <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="lgnbutton" OnClick="btnlogin_Click" />

        <div class="bottom-text">
            <asp:Label ID="Label2" runat="server" Text=" Don't have account?" Font-Size="12pt"></asp:Label> <a href="userregister.aspx">Sign up</a>
        </div>
            </div>
        <script type="text/javascript">
            $(".txtb txtuser,txtpass").on("focus", function () {
                $(this).addClass("focus");
            });

            $(".txtb txtuser,txtpass").on("blur", function () {
                if($(this).val()=="")
                $(this).removeClass("focus");
            });
        </script>
    </body>
    </html>
</asp:Content>

