using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DbControl
{
    public partial class Match
    {
        public Match()
        {
            Players = new List<Player>();
            Goals = new List<Goal>();
        }

        public int Id { get; set; }

        [Required]
        public string Stadium { get; set; }

        [Column("TeamA")]
        public int TeamAId { get; set; }

        [Column("TeamB")]
        public int TeamBId { get; set; }

        public int TeamAScore { get; set; }

        public int TeamBScore { get; set; }

        public virtual Team TeamA { get; set; }

        public virtual Team TeamB { get; set; }

        public virtual ICollection<Player> Players { get; set; }
        public virtual ICollection<Goal> Goals { get; set; }
    }
}
