<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <header class="page-header">
        <div class="row">
            <div class="twelve columns">
                <div class="table">
                    <div class="cell">
                        <h1>Home Page</h1>
                    </div>
                    <div class="cell">
                        <div id="page-header-actions">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div id="content-wrap" class="default">
        <div class="row">
            <div class="small-12 columns primary">
                <p>My Image Project</p>
                <p>
                    “MyImage” is a group of people who wants to develop an online site were the user 
    can upload his or her photographs and can order them for printing.
                </p>
                <p>
                    A customer 
    can have a set of digital photographs in his desktop which he/she wants to 
    print. He/she can provide the application the path to the folder where the 
    photographs are stored and can choose the photos that he/she wants to print and 
    choose the size of the prints.
                </p>
                <p>
                    The application will calculate the price after 
    downloading the price information from the database for the different print 
    sizes and show it to the user. 
                </p>
                <p>
                    The user will enter his/her credit card/other 
    payment option (or choose any other mode of payment) and shipping information if 
    he/she wants to go ahead with the order.
                </p>
                <p>
                    If the credit card information is found 
    correct, the photos are uploaded to the server and a purchase order is created 
    in the database.

                </p>
            </div>
        </div>
    </div>
</asp:Content>

