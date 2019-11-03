using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace DbControl
{
    public partial class Team
    {
        public Team()
        {
            MatchesAsTeamA = new List<Match>();
            MatchesAsTeamB = new List<Match>();
            Players = new List<Player>();
        }

        public int Id { get; set; }

        [Required]
        public string TeamName { get; set; }

        [Required]
        public string City { get; set; }
        
        public virtual ICollection<Match> MatchesAsTeamA { get; set; }
        
        public virtual ICollection<Match> MatchesAsTeamB { get; set; }
        
        public virtual ICollection<Player> Players { get; set; }
    }
}
