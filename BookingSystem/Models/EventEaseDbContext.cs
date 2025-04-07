using Microsoft.EntityFrameworkCore;

namespace BookingSystem.Models
{
    public class EventEaseDbContext : DbContext
    {
        public EventEaseDbContext(DbContextOptions<EventEaseDbContext> options)
            : base(options)
        {
        }

        
        public DbSet<Venue> Venue { get; set; }    
        public DbSet<Event> Event { get; set; }     
        public DbSet<Booking> Booking { get; set; } 
    }
}
