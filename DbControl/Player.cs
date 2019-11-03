using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace DbControl
{
    public partial class Player
    {
        public Player()
        {
            GemaPlayers = new List<GemaPlayer>();
            Goals = new List<Goal>();
        }

        public int Id { get; set; }

        public int TeamId { get; set; }

        [Required]
        public string Name { get; set; }

        public virtual Team Team { get; set; }

        public virtual ICollection<GemaPlayer> GemaPlayers { get; set; }

        public virtual ICollection<Goal> Goals { get; set; }
    }
}
