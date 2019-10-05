<%@ Page Title="" Language="C#" MasterPageFile="~/collegeMasterPage.master" AutoEventWireup="true" CodeFile="clgviewresume.aspx.cs" Inherits="_Default" %>

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
    <div class="login-form">
        &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="18pt" Text="View/Download Resumes"></asp:Label>
    </p>
    <p>
        <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="r_id" DataSourceID="SqlDataSource1" Width="100%">
            <Columns>
                <asp:BoundField DataField="r_id" HeaderText="r_id" SortExpression="r_id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                <asp:BoundField DataField="E_mail" HeaderText="E_mail" SortExpression="E_mail" />
                <asp:BoundField DataField="Highest_Qualification" HeaderText="Highest_Qualification" SortExpression="Highest_Qualification" />
                <asp:BoundField DataField="Specialization" HeaderText="Specialization" SortExpression="Specialization" />
                <asp:BoundField DataField="job_id" HeaderText="job_id" SortExpression="job_id" />
                <asp:BoundField DataField="Resumefile" HeaderText="Resumefile" SortExpression="Resumefile" />
                <asp:BoundField DataField="Institute" HeaderText="Institute" SortExpression="Institute" />
                <asp:BoundField DataField="Passing_Year" HeaderText="Passing_Year" SortExpression="Passing_Year" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Resume]"></asp:SqlDataSource>
        <br />
    </p>
        </div>
</asp:Content>

