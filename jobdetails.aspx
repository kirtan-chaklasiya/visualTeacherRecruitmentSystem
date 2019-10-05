<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="jobdetails.aspx.cs" Inherits="_Default" %>

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
        .tsubmit {
                display:block;
                width:15%;
                height:35px;
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
    <p>
        <br />
    </p>
    <div class="login-form">
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
        <center><asp:Button ID="btnapplynow" runat="server" OnClick="btnapplynow_Click" Text="Apply Now" BackColor="#003399" ForeColor="White" CssClass="tsubmit" /></center>
    </p>
        </div>
</asp:Content>

