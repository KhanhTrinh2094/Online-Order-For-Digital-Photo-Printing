<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Admin.master" CodeFile="OrderManagement.aspx.cs" Inherits="admin_OrderManagement" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="page-content">
        <div class="page-heading">
            <h1>Order Manager</h1>
        </div>
        <ol class="breadcrumb">
            <li><a href="Default.aspx">Home</a></li>
            <li><a href="OrderManagement.aspx">Order Manager</a></li>
        </ol>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default" id="panel-reorder">
                        <div class="panel-heading">
                            <h2>List of Order</h2>
                        </div>
                        <div class="panel-body panel-no-padding">
                            <asp:GridView ID="GridView1" runat="server" DataKeyNames="OrderID" CssClass="table table-striped table-bordered datatables dataTable no-footer">
                                <Columns>
                                    <asp:HyperLinkField Text="View" DataNavigateUrlFields="OrderID"
                                        DataNavigateUrlFormatString="OrderDetail.aspx?id={0}" />
                                </Columns>
                                <EmptyDataTemplate>
                                    Not Found !
                                </EmptyDataTemplate>
                            </asp:GridView>

                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp; 
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                                Text="Filter Pending" CssClass="btn-default btn" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click"
            Text="Filter Shipped" CssClass="btn-default btn" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click"
            Text="Filter Declined" CssClass="btn-default btn" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click"
                                Text="All Order" CssClass="btn-default btn" />
                            &nbsp;&nbsp;&nbsp;&nbsp; 
                            <asp:TextBox ID="txtDate1" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="txtDate2" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp; 
        <asp:Button
            ID="Button5" runat="server" Text="Filter By Date"
            OnClick="Button5_Click" ValidationGroup="1" CssClass="btn-default btn" />

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="txtDate1" ErrorMessage="Must choose Date"
                                ValidationGroup="1"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="txtDate2" ErrorMessage="Must choose Date"
                                ValidationGroup="1"></asp:RequiredFieldValidator>

                            <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                            </ajaxToolkit:ToolkitScriptManager>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" TargetControlID="txtDate1" OnClientShown="ChangeCalendarView" runat="server">
                            </ajaxToolkit:CalendarExtender>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender2" TargetControlID="txtDate2" OnClientShown="ChangeCalendarView" runat="server">
                            </ajaxToolkit:CalendarExtender>
                            <div class="panel-footer"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>