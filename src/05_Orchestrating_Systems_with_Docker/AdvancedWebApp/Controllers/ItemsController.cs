using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using AdvancedWebApp.Models;

namespace AdvancedWebApp.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ItemsController : ControllerBase
    {
        private AdvancedWebAppDbContext _context;

        public ItemsController(AdvancedWebAppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Item> Get()
        {
            return _context.Items;
            // return new [] { new Item {
            //     Id = Guid.NewGuid(),
            //     Name = "Name",
            //     ParentId = Guid.NewGuid()
            // }};
        }
    }
}
