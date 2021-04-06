using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TuSach
{
    public partial class DangKi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public bool CheckUser(string name)
        {
            var _db = new Models.BookContext();


            IQueryable<Models.User> query = _db.Users;

            int tontai = query.Where(u => u.UserName == name ).Count();
            if (tontai != 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public void Submit_DangKi(object sender, EventArgs e)
        {
            string name = Request.Form.Get("taikhoan");

            string matkhau = Request.Form.Get("matkhau");

            string testmatkhau = Request.Form.Get("testmatkhau");



            if (matkhau == testmatkhau)
            {
                if (CheckUser(name))
                {

                    var _db = new Models.BookContext();

                    var newUser = new Models.User
                    {
                        UserName = name,
                        Password = matkhau
                    };


                    _db.Users.Add(newUser);
                    _db.SaveChanges();
                }
                else {
                    Response.Write("tai khoan da ton tai");
                }

            }
            else
            {
                Response.Write("nhap mat khau khong giong nhau");
            }

            
        }
    }
}