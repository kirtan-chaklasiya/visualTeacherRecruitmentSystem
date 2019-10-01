<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
        .auto-style2 {
            text-align: left;
        }
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
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>

<p>

</p>    
            <div class="login-form">

    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="user_id" DataSourceID="SqlDataSource1" Height="50px" Width="100%" Font-Bold="False" Font-Size="18pt">
                    <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="first_name" HeaderText="First Name:" SortExpression="first_name" />
                        <asp:BoundField DataField="last_name" HeaderText="Last Name:" SortExpression="last_name" />
                        <asp:BoundField DataField="email" HeaderText="E-mail:" SortExpression="email" />
                        <asp:BoundField DataField="Contact_Number" HeaderText="Contact No.:" SortExpression="Contact_Number" />
                        <asp:BoundField DataField="gender" HeaderText="Gender:" SortExpression="gender" />
                        <asp:BoundField DataField="address" HeaderText="Address:" SortExpression="address" />
                        <asp:BoundField DataField="city" HeaderText="City:" SortExpression="city" />
                    </Fields>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userregister] WHERE ([email] = @email)">
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="user" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
        </tr>
</table>
                </div>
    </asp:Content>

