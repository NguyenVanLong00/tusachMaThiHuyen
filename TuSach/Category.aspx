<%@ Page Title="Category" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="TuSach.Category" %>
<asp:Content ID="CategoryContent" ContentPlaceHolderID="MainContent" runat="server">


      <p class="display-5 container my-5"><%: Page.Title %></p>

    <div class="row g-3 mx-auto container">
    <asp:ListView ID="BookList" 
                runat="server" 
                DataKeyNames="BookID" 
                ItemType="TuSach.Models.Book" 
                SelectMethod="GetBooks">

                <EmptyDataTemplate>
                        <p class="display-2">Không tìm thấy cuốn sách nào.</p>
              
                </EmptyDataTemplate>

                <EmptyItemTemplate>
                    <p class="display-2">Không tìm thấy cuốn sách nào.</p>
                </EmptyItemTemplate>

                <ItemTemplate>
                    <div class="card col-5 col-md-4 col-lg-2 p-0 mx-1 mx-md-3 ">
                        <a href="Book.aspx?id=<%#: Item.BookID %>" >
                            <img src=" <%#: Item.ImagePath %>"
                         class="card-img-top img-fluid" >
                         <div class="card-body">
                           <p class="h5"> <%#: Item.BookName %></p>
                        </a>
                         
                         </div>
                    </div>
                </ItemTemplate>
                
            </asp:ListView>
        </div>
    
    <nav aria-label="..." class="container d-flex justify-content-end mt-5">
        <ul class="pagination">
          <li class="page-item disabled">
            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
          </li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item active" aria-current="page">
            <a class="page-link" href="#">2</a>
          </li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item">
            <a class="page-link" href="#">Next</a>
          </li>
        </ul>
      </nav>

</asp:Content>
