
using SmartIsAPI.Services;
using System.Collections.Generic;
using System.Web.Http;

namespace SmartIsAPI.Controllers
{
    [RoutePrefix("api")]
    public class ISAPIController : ApiController
    {
        private readonly IEmployeeDetailsService _employeeDetailsService;

        public ISAPIController(IEmployeeDetailsService employeeDetailsService) {
            _employeeDetailsService = employeeDetailsService;
        }

        [Route("test/{id}")]
        public string GetName(int id)
        {
            return _employeeDetailsService.GetEmployeeName(id);
        }

    }
}