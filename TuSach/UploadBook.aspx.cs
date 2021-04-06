using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TuSach
{
    public partial class UploadBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie taikhoan = Request.Cookies.Get("taikhoan");
            HttpCookie matkhau = Request.Cookies.Get("matkhau");
            
            if (taikhoan == null || matkhau == null) {
                Response.Redirect("Default.aspx");
            }
            if (!CheckUser(taikhoan.Value, matkhau.Value)) {
                Response.Redirect("Default.aspx");
            }
        }

        public IQueryable<Models.Category> GetCategories()
        {
            var _db = new TuSach.Models.BookContext();
            IQueryable<Models.Category> query = _db.Categories;
            return query;
        }
        public void Submit_Book(object sender,EventArgs e) 
        {
            string name = Request.Form.Get("BookName");
            int cateId = Int32.Parse(Request.Form.Get("CategoryId"));
            string description = Request.Form.Get("Description");
            string imagePath = Request.Form.Get("ImagePath");
            string content = Request.Form.Get("Content");


            var _db = new Models.BookContext();
           
            var newBook = new Models.Book
            {
                BookName = name,
                Description = description,
                ImagePath = imagePath,
                Content=content,
                CategoryID=cateId
            };


            _db.Books.Add(newBook);
            _db.SaveChanges();
        }
        public bool CheckUser(string name, string password)
        {
            var _db = new Models.BookContext();


            IQueryable<Models.User> query = _db.Users;

            int tontai = query.Where(u => u.UserName == name && u.Password == password).Count();
            if (tontai == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}