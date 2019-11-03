using System.Data.Entity;

namespace DbControl
{
    public partial class MatchesContext : DbContext
    {
        public MatchesContext()
            : base("name=DbContext")
        {
        }

        public virtual DbSet<Match> Matches { get; set; }
        public virtual DbSet<Player> Players { get; set; }
        public virtual DbSet<Team> Teams { get; set; }
        public virtual DbSet<Goal> Goals { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Match>()
                .HasMany(e => e.Players)
                .WithMany(e => e.Matches)
                .Map(m => m.ToTable("GemaPlayers").MapLeftKey("MatchId").MapRightKey("PlayerId"));

            modelBuilder.Entity<Team>()
                .HasMany(e => e.MatchesAsTeamA)
                .WithRequired(e => e.TeamA)
                .HasForeignKey(e => e.TeamAId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Team>()
                .HasMany(e => e.MatchesAsTeamB)
                .WithRequired(e => e.TeamB)
                .HasForeignKey(e => e.TeamBId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Team>()
                .HasMany(e => e.Players)
                .WithRequired(e => e.Team)
                .WillCascadeOnDelete(false);
        }
    }
}
