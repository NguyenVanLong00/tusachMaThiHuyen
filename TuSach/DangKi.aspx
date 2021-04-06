<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DangKi.aspx.cs" Inherits="TuSach.DangKi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="d-flex flex-column justify-content-center align-items-center" style="min-height: 30rem;">
        <p class="display-4 ">Đăng Ký</p>
        <div class="w-100 container px-4" style="max-width: 25rem;">
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Tài Khoản</label>
                <input  name="taikhoan" type="text" class="form-control" id="exampleInputEmail1" />
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Mật Khẩu</label>
                <input name="matkhau" type="password" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword2" class="form-label">Nhập Lại Mật Khẩu</label>
                <input name="testmatkhau" type="password" class="form-control" id="exampleInputPassword2">
            </div>
           

            <asp:Button class="btn btn-primary msb-3"  ID="SubmitUser" runat="server" Text="Đăng Kí" OnClick="Submit_DangKi" />

                 <p class="my-3 text-primary"><%= message %></p>
        </div>
    </div>

</asp:Content>
