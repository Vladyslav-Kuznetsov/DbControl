using System;
using System.Data.Entity.Migrations;
using System.IO;

namespace DbControl.Migrations
{
    public partial class InitMigration : DbMigration
    {
        public override void Up()
        {
            var sqlFile = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "SQL", @"init.sql");
            Sql(File.ReadAllText(sqlFile));
        }
        public override void Down()
        {
        }
    }
}
