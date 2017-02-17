using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(StimaTwitter.Startup))]
namespace StimaTwitter
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
