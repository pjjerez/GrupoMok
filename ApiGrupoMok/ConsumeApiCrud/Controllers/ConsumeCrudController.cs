using Microsoft.AspNetCore.Mvc;

namespace ConsumeApiCrud.Controllers
{
    public class ConsumeCrudController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
