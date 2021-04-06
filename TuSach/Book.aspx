<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="TuSach.Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <p class="display-5 container my-5 text-center"> <%= BookItem.BookName%></p>

    <section class="container px-md-5">
      <%= BookItem.Content%>
    </section>
            




</asp:Content>
