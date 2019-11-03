using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace DbControl
{
    public partial class Player
    {
        public Player()
        {
            Matches = new List<Match>();
        }

        public int Id { get; set; }

        public int TeamId { get; set; }

        [Required]
        public string Name { get; set; }

        public virtual Team Team { get; set; }
        
        public virtual ICollection<Match> Matches { get; set; }
    }
}
