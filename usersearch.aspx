<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="usersearch.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="bootstyle.css" rel="stylesheet" />

    <style>
        .login-form {
                width: 80%;
                background: #f1f1f1;
                height: 800px;;
                padding: 80px 40px;
                border-radius: 10px;
                position: absolute;
                left: 50%;
                top: 85%;
                transform: translate(-50%,-50%);
                                box-shadow:1px 2px 50px 0px rgb(9, 23, 66);

        }
     
          
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                <div class="login-form">
                       <!--<asp:TextBox ID="txtsearch" runat="server" CssClass="txtsearch" placeholder="Search Job title / keyword..."></asp:TextBox>-->
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="job_id" DataSourceID="SqlDataSource1" GridLines="None" Width="100%">
            <Columns>
                <asp:BoundField DataField="Job_title" HeaderText="Job Title" SortExpression="Job_title" />
                <asp:BoundField DataField="No_of_jobs" HeaderText="No of jobs" SortExpression="No_of_jobs" />
                <asp:BoundField DataField="Require_qual" HeaderText="Qualification" SortExpression="Require_qual" />
                <asp:BoundField DataField="Require_exp" HeaderText="Experiance" SortExpression="Require_exp" />
                <asp:TemplateField HeaderText="Details">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.job_id","jobdetails.aspx?id={0}") %>'>Details</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Apply Now">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.job_id","resume.aspx?id={0}") %>'>Apply Now</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#">Details</asp:HyperLink>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [post_job] ORDER BY [Job_title]"></asp:SqlDataSource>
        <br />
    </p>
    <p>
    </p>
                    </div>
</asp:Content>

