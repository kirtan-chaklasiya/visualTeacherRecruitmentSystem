<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="jobdetails.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p style="text-align: left">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="job_id" DataSourceID="SqlDataSource1" Height="50px" Width="100%">
            <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="Job_title" HeaderText="Job Title" SortExpression="Job_title" />
                <asp:BoundField DataField="Job_description" HeaderText="Description" SortExpression="Job_description" />
                <asp:BoundField DataField="Last_date" HeaderText="Last date" SortExpression="Last_date" />
                <asp:BoundField DataField="No_of_jobs" HeaderText="No of Jobs" SortExpression="No_of_jobs" />
                <asp:BoundField DataField="Require_qual" HeaderText="Qualification" SortExpression="Require_qual" />
                <asp:BoundField DataField="Require_exp" HeaderText="Experiance" SortExpression="Require_exp" />
            </Fields>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [post_job] WHERE ([job_id] = @job_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="job_id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="btnapplynow" runat="server" OnClick="btnapplynow_Click" Text="Apply Now" BackColor="#003399" ForeColor="White" />
    </p>
</asp:Content>

