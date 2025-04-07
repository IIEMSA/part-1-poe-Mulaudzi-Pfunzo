using Microsoft.Extensions.Logging;

namespace BookingSystem.Models
{
    public class Venue
    {
       

        public int VenueId { get; set; }  // Primary key
        public string VenueName { get; set; }
        public string Location { get; set; }
        public int Capacity { get; set; }
        public string ImageUrl { get; set; } = "";  

        // Navigation property (1 Venue -> Many Events)
        public List<Event> Events { get; set; } = new();
    }
}
