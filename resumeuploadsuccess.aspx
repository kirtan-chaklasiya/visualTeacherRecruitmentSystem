<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="resumeuploadsuccess.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
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
        </style>
    <p>
        <br />
    </p>
       <div class="login-form">
    <p>
     
        <asp:Label ID="Label4" runat="server" Font-Size="15pt" Text="Thank you for submitting your resume."></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Font-Size="15pt" Text="Your Resume has been submitted successfully!"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Font-Size="15pt" Text="For further process, We will inform you by phone call or email id."></asp:Label>
    </p>
    </div>
</asp:Content>

