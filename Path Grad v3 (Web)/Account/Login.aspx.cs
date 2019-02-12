using System;
using System.Collections.Generic;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using MongoDB.Bson;
using MongoDB.Driver;
using Path_Grad_v3__Web_.Models;

namespace Path_Grad_v3__Web_.Account
{
    public partial class Login : Page
    {
        public static StudentInfo user = new StudentInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Displays register link
            RegisterHyperLink.NavigateUrl = "Register";

            // Enable this once you have account confirmation enabled for password reset functionality
            //ForgotPasswordHyperLink.NavigateUrl = "Forgot";
            //OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];

           /* var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }*/
        }

        protected void LogIn(object sender, EventArgs e)
        {
            List<MongoDB.Bson.BsonDocument> userList = new List<MongoDB.Bson.BsonDocument>();
            int ID = Convert.ToInt32(txt_ID.Text);
            string Psswd = txt_Password.Text;

            ValidateLogin(ref userList, ID, Psswd );

            if (userList.Count == 1)
            {
                //Notify User Found
                txt_result.Text = "User Found";
                //Assign student data object that looks like "student"

                var bsonObject = userList[0];

                //Assign to Student
                user.ID = bsonObject["_id"].AsInt32;
                user.Password = bsonObject["password"].AsString;
                user.Fname = bsonObject["First"].AsString;
                user.Lname = bsonObject["Last"].AsString;
                user.Email = bsonObject["email"].AsString;

                //Access Student View
                Response.Redirect("~/Student/DegreeStatus.aspx");
                //PostBackUrl = "~/Confirm.aspx"
            }
            else if (userList.Count > 1)
            {
                txt_result.Text = "Duplicates Found";

            }
            else if (userList.Count == 0)
            {
                txt_result.Text = "User NOT Found";
                FailureText.Text = "Invalid login attempt";
                ErrorMessage.Visible = true;
            }
        }

        public static void  ValidateLogin(ref List<MongoDB.Bson.BsonDocument> list, int userID, string userPass)
        {
            //Make a connection with DB for Login collection
            var conString = "mongodb://localhost:27017";
            var Client = new MongoClient(conString);
            var DB = Client.GetDatabase("Path_To_Grad");
            var collection = DB.GetCollection<BsonDocument>("Login");

            //Create filter to search through DB
            var filter = new BsonDocument
            {
                {"_id", userID},
                {"password", userPass}
            };

            //Search for desired elements
            //list = await collection.Find(filter).ToListAsync();
            list = collection.Find(filter).ToList();
        }
    }
}