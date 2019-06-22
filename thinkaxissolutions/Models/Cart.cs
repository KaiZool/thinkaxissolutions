using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Cart
/// </summary>
/// 
namespace thinkaxissolutions.Models
{
    public class Cart
    {
        public int Id { get; set; }
        public string roomno { get; set; }
        public string UserId { get; set; }
        public DateTime date { get; set; }
        public int Amount { get; set; }
        public int RoomId { get; set; }
    }
}