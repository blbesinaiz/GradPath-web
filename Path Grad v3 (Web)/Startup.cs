using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Path_Grad_v3__Web_.Startup))]
namespace Path_Grad_v3__Web_
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
