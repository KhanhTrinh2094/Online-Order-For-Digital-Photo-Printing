<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Admin.master" CodeFile="CustomerSearch.aspx.cs" Inherits="admin_CustomerSearch" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <style>
        table tr {
            border-bottom: solid 1px rgba(128, 128, 128, 0.28);
        }
        .email{
            max-width: 40px;
            word-wrap:break-word;
        }
    </style>
    <div class="page-content">
        <div class="page-heading">
            <h1>Search Customer</h1>
        </div>
        <ol class="breadcrumb">
            <li><a href="Default.aspx">Home</a></li>
            <li><a href="CustomerSearch.aspx">Search Customer</a></li>
        </ol>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default" id="panel-reorder">
                        <div class="panel-heading">
                            <h2>Search Customer</h2>
                        </div>
                        <div class="panel-body panel-no-padding">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                DataKeyNames="CustomerID" DataSourceID="SqlDataSource1" Visible="False" CssClass="table table-striped table-bordered datatables dataTable no-footer">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="False" />
                                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID"
                                        InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
                                    <asp:BoundField DataField="UserName" HeaderText="UserName"
                                        SortExpression="UserName" />
                                    <asp:BoundField DataField="Password" HeaderText="Password"
                                        SortExpression="Password" />
                                    <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" ItemStyle-CssClass="email"
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
                                <EmptyDataTemplate>
                                    Not Found !
                                </EmptyDataTemplate>
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
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="search" PropertyName="Text"
                                        Type="String" />

                                </SelectParameters>
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
                            <div class="form-group" style="margin: 5px; text-align: center;">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" CssClass="btn-default btn" />

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ControlToValidate="TextBox1" ErrorMessage="Not null"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
