<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CartControl.ascx.cs" Inherits="CartControl" %>
<asp:GridView runat="server" ID="gvShoppingCart" AutoGenerateColumns="False"
    GridLines="None" Width="100%" CellPadding="5" ShowFooter="True"
    DataKeyNames="ImageUrl" OnRowDataBound="gvShoppingCart_RowDataBound"
    OnRowCommand="gvShoppingCart_RowCommand">
    <HeaderStyle HorizontalAlign="Left" BackColor="#3D7169" ForeColor="#FFFFFF" />
    <FooterStyle HorizontalAlign="Right" />
    <AlternatingRowStyle BackColor="#F8F8F8" />
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <a id="image" href='<%# Eval("ImageUrl")%>'>
                    <img alt="image" src='<%# Eval("ImageUrl")%>?width=200' />
                </a>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="ImageUrl"
            HeaderText="ImageUrl" ReadOnly="True" />
        <asp:BoundField DataField="Res" DataFormatString="{0:c}"
            HeaderText="Res" ReadOnly="True" />
        <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
                <asp:TextBox runat="server" ID="txtQuantity" Columns="5" Text='<%# Eval("Quantity") %>'></asp:TextBox>

                <asp:LinkButton runat="server" ID="btnRemove" Text="Remove" CommandName="Remove" CommandArgument='<%# Eval("ImageUrl")+","+Eval("Res") %>' Style="font-size: 12px;"></asp:LinkButton>

            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Price"
            HeaderText="UnitPrice" />
        <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice"
            ReadOnly="True" />
    </Columns>
    <EmptyDataTemplate>
        Your Shopping Cart is empty, add items
        <a href="Album.aspx">Add Products</a>
    </EmptyDataTemplate>
</asp:GridView>
<br />
<asp:Button ID="btnAddMore" runat="server"
    OnClick="btnAddMore_Click" Text="Add more image" CssClass="button" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnUpdateCart" Text="Update Cart"
                OnClick="btnUpdateCart_Click" CssClass="button" />
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
    Text="CheckOut" CssClass="button" />

