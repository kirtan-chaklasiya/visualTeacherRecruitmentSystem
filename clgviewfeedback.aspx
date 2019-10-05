<%@ Page Title="" Language="C#" MasterPageFile="~/collegeMasterPage.master" AutoEventWireup="true" CodeFile="clgviewfeedback.aspx.cs" Inherits="_Default" %>

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
                top: 70%;
                transform: translate(-50%,-50%);
                box-shadow:1px 2px 50px 0px rgb(9, 23, 66);
        }

    </style>
    <p>
    <div class="login-form">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="18pt" Text="View Feedback"></asp:Label>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="feedback_id" DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:BoundField DataField="feedback_id" HeaderText="feedback_id" InsertVisible="False" ReadOnly="True" SortExpression="feedback_id" />
            <asp:BoundField DataField="f_name" HeaderText="f_name" SortExpression="f_name" />
            <asp:BoundField DataField="f_email" HeaderText="f_email" SortExpression="f_email" />
            <asp:BoundField DataField="f_feedback" HeaderText="f_feedback" SortExpression="f_feedback" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [feedback]">
    </asp:SqlDataSource>
</p>
    </div>
</asp:Content>

