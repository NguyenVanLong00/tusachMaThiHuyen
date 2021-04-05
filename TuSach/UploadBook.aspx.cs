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
    }
}