namespace Sabio.Services
{
    public class AddressAddRequest
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Street { get; set; }
        public string Street2 { get; set; }
        public string City { get; set; }
        public string Country { get; set; }
        public int Zip { get; set; }
        public string UserId { get; set; }
    }
}