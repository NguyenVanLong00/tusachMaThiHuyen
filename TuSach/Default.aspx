<%@ Page Title="Tu Sach" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TuSach._Default" %>



<asp:Content ID="IndexContent" ContentPlaceHolderID="MainContent" runat="server">

        <div id="carouselExampleIndicators" class="carousel slide container my-2 my-lg-5 " data-bs-ride="carousel">
                <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                                class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                                aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                                aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                        <div class="carousel-item active">
                                <img src="https://sttruyen.com/res/file/2e06a1532618aa1a45612918da6901b0_ntctgPC.jpg"
                                        class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                                <img src="https://sttruyen.com/res/file/757123979af1e0f53d71025b2c1c9eff_PC.png"
                                        class="d-block w-100" alt="...">
                        </div>  
                        <div class="carousel-item">
                                <img src="https://sttruyen.com/res/file/98acb298da97ac22ba62e4a9be7fecb8_Baner%20web.png"
                                        class="d-block w-100" alt="...">
                        </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                </button>
        </div>

        <section class="container">

                
                <div class="row g-3 mx-auto container">
                    <h3>Sách Mới</h3>
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
                                     <img src=" <%#: Item.ImagePath %>"
                                     class="card-img-top img-fluid" >
                                     <div class="card-body">
                                       <p class="h5"> <%#: Item.BookName %></p>
                                     </div>
                                </div>
                            </ItemTemplate>
                
                        </asp:ListView>
                    </div>
    
        </section>

</asp:Content>