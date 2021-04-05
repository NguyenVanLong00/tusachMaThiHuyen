using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TuSach
{
    public partial class Book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = req
/*
            if (Request.QueryString["id"] != null)
                BookID = Int32.Parse(Request.QueryString.Get("id"));
            else
                BookID = 1;

            var _db = new TuSach.Models.BookContext();
            IQueryable<Models.Book>  query = _db.Books;
            query = query.Where(p => p.BookID == BookID);
            BookItem  =  query.FirstOrDefault();*/
            
            Response.Write(BookItem);

        }
        public Models.Book BookItem { get; set; }
    }
}