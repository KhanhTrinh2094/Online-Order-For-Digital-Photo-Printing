<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Admin.master" CodeFile="CustomerList.aspx.cs" Inherits="admin_CustomerList" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <style>
        .email{
            max-width: 40px;
            word-wrap:break-word;
        }
    </style>
    <div class="page-content">
        <div class="page-heading">
            <h1>Customer Manager</h1>
        </div>
        <ol class="breadcrumb">
            <li><a href="Default.aspx">Home</a></li>
            <li><a href="CustomerList.aspx">Customer Manager</a></li>
        </ol>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default" id="panel-reorder">
                        <div class="panel-heading">
                            <h2>List of Customer</h2>
                        </div>
                        <div class="panel-body panel-no-padding">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="false"
                                DataKeyNames="CustomerID" AlternatingRowStyle-Width="100%" Width="100%" DataSourceID="SqlDataSource1" CssClass="table table-striped table-bordered datatables dataTable no-footer">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="False" />
                                    <asp:BoundField DataField="CustomerID" HeaderText="ID"
                                        InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
                                    <asp:BoundField DataField="UserName" HeaderText="UserName"
                                        SortExpression="UserName" />
                                    <asp:BoundField DataField="Password" HeaderText="Password"
                                        SortExpression="Password" />
                                    <asp:BoundField DataField="CustomerName" HeaderText="CustomerName"
                                        SortExpression="CustomerName" />
                                    <asp:BoundField DataField="DoB" HeaderText="DoB" SortExpression="DoB" />
                                    <asp:BoundField DataField="Gender" HeaderText="Gender"
                                        SortExpression="Gender" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" ItemStyle-CssClass="email" />
                                    <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber"
                                        SortExpression="PhoneNumber" />
                                    <asp:BoundField DataField="Address" HeaderText="Address"
                                        SortExpression="Address" />
                                    <asp:HyperLinkField DataNavigateUrlFields="CustomerID"
                                        DataNavigateUrlFormatString="CusOrders.aspx?id={0}" Text="View Orders" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                ConnectionString="<%$ ConnectionStrings:myCon %>"
                                ProviderName="System.Data.SqlClient"
                                SelectCommand="SELECT * FROM [Customer]"
                                DeleteCommand="DELETE FROM [Customer] WHERE [CustomerID] = @CustomerID"
                                InsertCommand="INSERT INTO [Customer] ([UserName], [Password], [CustomerName], [DoB], [Gender], [Email], [PhoneNumber], [Address]) VALUES (@UserName, @Password, @CustomerName, @DoB, @Gender, @Email, @PhoneNumber, @Address)"
                                UpdateCommand="UPDATE [Customer] SET [UserName] = @UserName, [Password] = @Password, [CustomerName] = @CustomerName, [DoB] = @DoB, [Gender] = @Gender, [Email] = @Email, [PhoneNumber] = @PhoneNumber, [Address] = @Address WHERE [CustomerID] = @CustomerID">
                                <DeleteParameters>
                                    <asp:Parameter Name="CustomerID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="UserName" Type="String" />
                                    <asp:Parameter Name="Password" Type="String" />
                                    <asp:Parameter Name="CustomerName" Type="String" />
                                    <asp:Parameter Name="DoB" Type="DateTime" />
                                    <asp:Parameter Name="Gender" Type="Int32" />
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="PhoneNumber" Type="Decimal" />
                                    <asp:Parameter Name="Address" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="UserName" Type="String" />
                                    <asp:Parameter Name="Password" Type="String" />
                                    <asp:Parameter Name="CustomerName" Type="String" />
                                    <asp:Parameter Name="DoB" Type="DateTime" />
                                    <asp:Parameter Name="Gender" Type="Int32" />
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="PhoneNumber" Type="Decimal" />
                                    <asp:Parameter Name="Address" Type="String" />
                                    <asp:Parameter Name="CustomerID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
