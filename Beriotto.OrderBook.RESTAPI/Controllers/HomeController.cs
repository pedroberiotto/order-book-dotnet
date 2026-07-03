using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;

namespace Beriotto.OrderBook.RESTAPI.Controllers;

[ApiController]
[Route("api/home")]
public class HomeController : Controller
{
    [HttpGet]
    public IActionResult Index()
    {
        return Ok("Beriotto.OrderBook.RESTAPI is running.");
    }

    [HttpGet("test")]
    public IActionResult Test()
    {
        return BadRequest("Beriotto.OrderBook.RESTAPI test is running.");
    }
}