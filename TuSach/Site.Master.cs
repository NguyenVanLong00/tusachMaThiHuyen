using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TuSach.Models;
using System.Data.Entity;

namespace TuSach
{
    public partial class SiteMaster : MasterPage
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

       
    }
}