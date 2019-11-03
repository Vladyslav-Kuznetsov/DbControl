using System;
using System.Linq;
using System.Data.Entity;

namespace DbControl
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var matches = new MatchesContext().Matches
                .Include(m => m.GemaPlayers.Select(gp => gp.Player).Select(p => p.Team))
                .ToList();

            foreach (var match in matches.Take(2))
            {
                Console.WriteLine($"{match.TeamA.TeamName} - {match.TeamB.TeamName} {match.TeamAScore}:{match.TeamBScore} ({match.Id})");
                Console.WriteLine();

                foreach(var goal in match.GemaPlayers.SelectMany(gp => gp.Goals))
                {
                    Console.WriteLine($"'{goal.Minute} {goal.Player.Name} {goal.Player.Team.TeamName}");
                }
                Console.WriteLine();
                Console.WriteLine($"{match.TeamA.TeamName} players in this match:");
                Console.WriteLine();
                var players = match.GemaPlayers.Select(gp => gp.Player).ToList();

                foreach (var player in players.Where(p => p.TeamId == match.TeamA.Id))
                {
                    Console.WriteLine($"\t{player.Name}");
                }
                Console.WriteLine();
                Console.WriteLine($"{match.TeamB.TeamName} players in this match:");
                Console.WriteLine();

                foreach (var player in players.Where(p => p.TeamId == match.TeamB.Id))
                {
                    Console.WriteLine($"\t{player.Name}");
                }

                Console.WriteLine();
            }

            Console.ReadLine();
        }
    }
}
