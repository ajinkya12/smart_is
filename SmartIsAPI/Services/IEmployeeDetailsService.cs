using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmartIsAPI.Services
{
    public interface IEmployeeDetailsService
    {
        string GetEmployeeName(int employeeId);
    }
}