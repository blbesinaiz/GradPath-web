using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using MongoDB.Bson;
using MongoDB.Driver;
using Owin;
using Path_Grad_v3__Web_.Models;

namespace Path_Grad_v3__Web_.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            //Make a connection with DB for Login collection
            var conString = "mongodb://localhost:27017";
            var Client = new MongoClient(conString);
            var DB = Client.GetDatabase("Path_To_Grad");
            var collection = DB.GetCollection<BsonDocument>("Login");

            var document = new BsonDocument
            {
              {"_id", Convert.ToInt32(StudentID.Text)},
              {"password", Password.Text},
              { "First", FirstName.Text},
               { "Last", LastName.Text},
              { "email", Email.Text },
              { "classfication", Classification.Text}
            };

            collection.InsertOne(document);

            //Access Student View
            Response.Redirect("~/Account/Confirm.aspx");
        }
    }
}