using System.Collections.Generic;
using System.Data.Entity;

namespace TuSach.Models
{
    public class BookDatabaseInitializer : DropCreateDatabaseIfModelChanges<BookContext>
    {
        protected override void Seed(BookContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetBooks().ForEach(b => context.Books.Add(b));
        }

        private static List<Category> GetCategories()
        {
            var categories = new List<Category> {
                new Category
                {
                    CategoryID = 1,
                    CategoryName = "Sach Moi"
                },
                new Category
                {
                    CategoryID = 2,
                    CategoryName = "Sach kinh doanh"
                },
                new Category
                {
                    CategoryID = 3,
                    CategoryName = "Sach thieu nhi"
                },
                new Category
                {
                    CategoryID = 4,
                    CategoryName = "Tieu thuyet"
                },
            };

            return categories;
        }

        private static List<Book> GetBooks()
        {
            var Books = new List<Book> {
                new Book
                {
                    BookID = 1,
                    BookName = "Convertible Car",
                    Description = "This convertible car is fast! The engine is powered by a neutrino based battery (not included)." +
                                  "Power it up and let it go!",
                    ImagePath="carconvert.png",
                    Content = "This convertible car is fast! The engine is powered by a neutrino based battery (not included)." +
                                  "Power it up and let it go!",
                    CategoryID = 1
               },
                new Book
                {
                    BookID = 2,
                    BookName = "Old-time Car",
                    Description = "There's nothing old about this toy car, except it's looks. Compatible with other old toy cars.",
                    ImagePath="carearly.png",
                    Content = "This convertible car is fast! The engine is powered by a neutrino based battery (not included)." +
                                  "Power it up and let it go!",
                     CategoryID = 1
               },
               
            };

            return Books;
        }
    }
}