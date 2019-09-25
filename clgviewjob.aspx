<%@ Page Title="" Language="C#" MasterPageFile="~/collegeMasterPage.master" AutoEventWireup="true" CodeFile="clgviewjob.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="18pt" Text="View jobs"></asp:Label>
    </p>
    <p>
        <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="dgvviewjobs" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="job_id" DataSourceID="SqlDataSource1" Width="100%">
            <Columns>
                <asp:BoundField DataField="job_id" HeaderText="Job id" InsertVisible="False" ReadOnly="True" SortExpression="job_id" />
                <asp:BoundField DataField="Job_title" HeaderText="Job title" SortExpression="Job_title" />
                <asp:BoundField DataField="Job_description" HeaderText="Description" SortExpression="Job_description" />
                <asp:BoundField DataField="Last_date" HeaderText="Last date for applying" SortExpression="Last_date" />
                <asp:BoundField DataField="No_of_jobs" HeaderText="Number of jobs" SortExpression="No_of_jobs" />
                <asp:BoundField DataField="Require_qual" HeaderText="Required Qualification" SortExpression="Require_qual" />
                <asp:BoundField DataField="Require_exp" HeaderText="Required Experiance" SortExpression="Require_exp" />
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" onclick="return confirm('do you want to delete?')" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.job_id","clgviewjob.aspx?del={0}") %>'>Delete</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.job_id","clgeditjob.aspx?edit={0}") %>'>Edit</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [post_job]"></asp:SqlDataSource>
    </p>
</asp:Content>

