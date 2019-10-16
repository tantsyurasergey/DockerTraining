using Microsoft.EntityFrameworkCore;

namespace AdvancedWebApp.Models
{
    public class AdvancedWebAppDbContext : DbContext
    {
        public AdvancedWebAppDbContext(DbContextOptions<AdvancedWebAppDbContext> options)
            : base(options)
        {
        }

        public DbSet<Item> Items { get; set; }
    }
}