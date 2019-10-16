using System;

namespace AdvancedWebApp.Models
{
    public class Item
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public Guid? ParentId { get; set; }
    }
}