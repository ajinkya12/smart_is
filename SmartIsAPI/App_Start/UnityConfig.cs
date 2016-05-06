using Microsoft.Practices.Unity;
using SmartIsAPI.Services;
using System.Web.Http;
using Unity.WebApi;

namespace SmartIsAPI
{
    public static class UnityConfig
    {
        public static void RegisterComponents()
        {
			var container = new UnityContainer();

            RegisterComponents(container);

            GlobalConfiguration.Configuration.DependencyResolver = new UnityDependencyResolver(container);
        }

        public static void RegisterComponents(IUnityContainer container) {
            //Add your service registrations here
            container.RegisterType<IEmployeeDetailsService, EmployeeDetailsService>();
        }
    }
}