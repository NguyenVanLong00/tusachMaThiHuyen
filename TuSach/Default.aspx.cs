using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TuSach
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<Models.Book> GetBooks()
        {
            var _db = new TuSach.Models.BookContext();
            IQueryable<Models.Book> query = _db.Books;
            query = query.Take(32);
            return query;
        }
    }
}