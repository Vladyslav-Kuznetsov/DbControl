using System.Data.Entity.Migrations;

namespace DbControl.Migrations
{
    internal sealed class Configuration : DbMigrationsConfiguration<MatchesContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(MatchesContext context)
        {
            
        }
    }
}
