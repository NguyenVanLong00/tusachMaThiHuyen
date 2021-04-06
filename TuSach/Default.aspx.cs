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
            HttpCookie checkTK = Request.Cookies.Get("taikhoan");
            HttpCookie checkMK = Request.Cookies.Get("matkhau");
            if( CheckUser(checkTK.Value, checkMK.Value))
            {

            }

        }
        public bool CheckUser(string name, string password)
        {
            var _db = new Models.BookContext();

            IQueryable<Models.User> query = _db.Users;

            int tontai = query.Where(u => u.UserName == name && u.Password == password).Count();

            return tontai == 0 ? false : true;


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