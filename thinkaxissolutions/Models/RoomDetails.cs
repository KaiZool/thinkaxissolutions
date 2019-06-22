using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;

namespace thinkaxissolutions.Models
{
    public class RoomDetails
    {
        public int Id { get; set; }
        public string Room_Name { get; set; }
        public string Room_Description { get; set; }
        public DateTimeKind BookDateAndTime { get; set; }
        public string RoomPic { get; set; }
        public virtual ICollection<BookingTable> booking { get; set; }
    }
}