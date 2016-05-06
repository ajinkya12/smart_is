using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmartIsAPI.Services
{
    public class EmployeeDetailsService : IEmployeeDetailsService
    {
        public string GetEmployeeName(int employeeId)
        {
            return "Raghupathi Manda";
        }
    }
}