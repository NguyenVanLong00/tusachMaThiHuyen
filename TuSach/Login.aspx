<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TuSach.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="d-flex flex-column justify-content-center align-items-center" style="min-height: 30rem;">
        <p class="display-4 ">Đăng Nhập</p>
        <div class="w-100 container px-4" style="max-width: 25rem;">
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Tài Khoản</label>
                <input name="taikhoan" type="text" class="form-control" id="exampleInputEmail1" >
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Mật Khẩu</label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="matkhau">
            </div>

     
            <asp:Button class="btn btn-primary mb-3"  ID="SubmitUser" runat="server" Text="Đăng Nhập" OnClick="Submit_Login" />
        </div>
    </div>

</asp:Content>
