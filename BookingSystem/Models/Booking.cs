namespace BookingSystem.Models
{
    public class Booking
    {
        public int BookingId { get; set; }  // Primary key

        // Foreign keys
        public int EventId { get; set; }
        public int VenueId { get; set; }

        public DateTime BookingDate { get; set; } = DateTime.Now;  

        // Navigation properties
        public Event? Event { get; set; }  // 1 Booking -> 1 Event
        public Venue? Venue { get; set; }   // 1 Booking -> 1 Venue
    }
}
