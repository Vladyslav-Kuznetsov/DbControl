using System;
using System.Data.Entity.Migrations;

namespace DbControl.Migrations
{
    public partial class AddRelationBeweenPlayerAndGoal : DbMigration
    {
        public override void Up()
        {
            AddForeignKey("dbo.Goals", "PlayerId", "dbo.Players", "Id", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Goals", "PlayerId", "dbo.Players");
        }
    }
}
