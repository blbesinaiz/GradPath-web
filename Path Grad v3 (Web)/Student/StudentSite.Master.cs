using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Path_Grad_v3__Web_.Student
{
    public partial class StudentSite : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SetupModify_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Manage Account')<script>");
        }
    }
}