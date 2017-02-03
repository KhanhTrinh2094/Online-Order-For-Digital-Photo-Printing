<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Admin.master" CodeFile="PriceMan.aspx.cs" Inherits="admin_PriceMan" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <style>
        td a {
            padding: 5px;
        }
    </style>
    <style>
        table tr {
            border-bottom: solid 1px rgba(128, 128, 128, 0.28);
        }

        .email {
            max-width: 40px;
            word-wrap: break-word;
        }
    </style>
    <div class="page-content">
        <div class="page-heading">
            <h1>Price Manager</h1>
        </div>
        <ol class="breadcrumb">
            <li><a href="Default.aspx">Home</a></li>
            <li><a href="PriceMan.aspx">Price Manager</a></li>
        </ol>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default" id="panel-reorder">
                        <div class="panel-heading">
                            <h2>Price Manager</h2>
                        </div>
                        <div class="panel-body panel-no-padding">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                DataKeyNames="RES" DataSourceID="SqlDataSource1" CssClass="table table-striped table-bordered datatables dataTable no-footer">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="false" />
                                    <asp:BoundField DataField="RES" HeaderText="RES" ReadOnly="True"
                                        SortExpression="RES" />
                                    <asp:BoundField DataField="Money" HeaderText="Money" SortExpression="Money" />
                                </Columns>
                            </asp:GridView>

                            <div class="form-group" style="margin: 5px; text-align: center;">
                                Res :
                                <asp:TextBox ID="txtRes" runat="server" Width="140" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                    ControlToValidate="txtRes" ErrorMessage="Not null"></asp:RequiredFieldValidator>
                                &nbsp;&nbsp;&nbsp;&nbsp;
        Price :
                                <asp:TextBox ID="txtMoney" runat="server" Width="140" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ControlToValidate="txtMoney" ErrorMessage="Not null"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator runat="server" ValidationExpression="^[0-9]{1,}$" ID="number" ControlToValidate="txtMoney" ErrorMessage="Must be number" />
                                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
                            </div>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                ConnectionString="<%$ ConnectionStrings:myCon %>"
                                DeleteCommand="DELETE FROM [Price] WHERE [RES] = @RES"
                                InsertCommand="INSERT INTO [Price] ([RES], [Money]) VALUES (@RES, @Money)"
                                SelectCommand="SELECT [RES], [Money] FROM [Price]"
                                UpdateCommand="UPDATE [Price] SET [Money] = @Money WHERE [RES] = @RES">
                                <DeleteParameters>
                                    <asp:Parameter Name="RES" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:ControlParameter Name="RES" ControlID="txtRes" Type="String" />
                                    <asp:ControlParameter Name="Money" ControlID="txtMoney" Type="Decimal" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Money" Type="Decimal" />
                                    <asp:Parameter Name="RES" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
