namespace DbControl
{
    public class Goal
    {
        public int Id { get; set; }
        public int MatchId { get; set; }
        public int PlayerId { get; set; }
        public int Minute { get; set; }
        public virtual Player Player { get; set; }
        public virtual Match Match { get; set; }
    }
}
