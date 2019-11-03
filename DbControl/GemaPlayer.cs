using System.Collections.Generic;

namespace DbControl
{
    public class GemaPlayer
    {
        public GemaPlayer()
        {
            Goals = new List<Goal>();
        }

        public int PlayerId { get; set; }
        public int MatchId { get; set; }
        public Player Player { get; set; }
        public Match Match { get; set; }
        public virtual ICollection<Goal> Goals { get; set; }
    }
}
