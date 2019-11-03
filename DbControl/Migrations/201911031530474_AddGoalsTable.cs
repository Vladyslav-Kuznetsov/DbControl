using System;
using System.Data.Entity.Migrations;
using System.IO;

namespace DbControl.Migrations
{
    public partial class AddGoalsTable : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Goals",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        MatchId = c.Int(nullable: false),
                        PlayerId = c.Int(nullable: false),
                        Minute = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.GemaPlayers", t => new { t.PlayerId, t.MatchId }, cascadeDelete: true)
                .Index(t => new { t.PlayerId, t.MatchId });
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Goals", new[] { "PlayerId", "MatchId" }, "dbo.GemaPlayers");
            DropIndex("dbo.Goals", new[] { "PlayerId", "MatchId" });
            DropTable("dbo.Goals");
        }
    }
}
