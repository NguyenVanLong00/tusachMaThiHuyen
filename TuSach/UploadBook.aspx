<%@ Page Title="Dang tai sach" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UploadBook.aspx.cs" Inherits="TuSach.UploadBook" %>
<asp:Content ID="UploadBook" ContentPlaceHolderID="MainContent" runat="server">

    <section class="container">
        <p class="display-5 mt-5">Đăng Tải Sách</p>
        <div>
            <asp:Button class="btn btn-primary mb-3"  ID="SubmitBook" runat="server" Text="Tải Sách Lên" OnClick="Submit_Book" />
            <div class="input-group mb-3 w-50">
                <span class="input-group-text">Tên Sách</span>
                <input type="text"  class="form-control" placeholder="tên sách" name="BookName">
            </div>
             <div class="input-group mb-3 w-50">
                <span class="input-group-text" >Thể Loại</span>
                 
                 <select class="form-select form-select-sm" name="CategoryId">
                    <asp:ListView ID="categoryList"  
                        ItemType="TuSach.Models.Category" 
                        runat="server"
                        SelectMethod="GetCategories">
                        <ItemTemplate>
                            <option value="<%#: Item.CategoryID %>">  <%#: Item.CategoryName %></option>
                        </ItemTemplate>
                    </asp:ListView>
                  </select>

            </div>
            <div class="input-group mb-3 w-50">
                <span class="input-group-text" >Mô Tả</span>
                <input type="text" class="form-control" placeholder="mô tả" name="Description">
            </div>
            <div class="input-group mb-3 w-50">
                <span class="input-group-text" >Link ảnh</span>
                <input type="text" class="form-control" placeholder="link ảnh" name="ImagePath">
            </div>
            <div class="input-group mb-3" style="min-height: 25rem; width:100%">
                <span class="input-group-text" >Nội dung</span>
                <textarea class="form-control" name="Content"></textarea>    
            </div>
        </div>
    </section>

</asp:Content>
