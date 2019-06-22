using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BookingTable
/// </summary>
/// 
namespace thinkaxissolutions.Models
{
    public class BookingTable
    {
        public int Id { get; set; }
        public string roomno { get; set; }
        public string UserId { get; set; }
        public DateTime Datetopresent { get; set; }
        public int RoomDetId { get; set; }
        public int Amount { get; set; }
        [ForeignKey("RoomDetId")]
        public virtual RoomDetails roomdetails { get; set; }
    }
}