namespace BookingSystem.Models
{
    public class Event
    {
        public int EventId { get; set; }     
        public string EventName { get; set; }   
        public DateTime EventDate { get; set; }
        public string Description { get; set; } = ""; 

        // Foreign key
        public int VenueId { get; set; }

        // Navigation to Venue 
        public Venue? Venue { get; set; }
    }
}
