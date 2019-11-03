using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DbControl
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var matches = new MatchesContext().Matches.ToList();

            foreach (var match in matches)
            {
                Console.WriteLine($"{match.TeamA.TeamName} - {match.TeamB.TeamName} {match.TeamAScore}:{match.TeamBScore} ({match.Id})");
                Console.WriteLine();
                Console.WriteLine($"{match.TeamA.TeamName} players in this match:");
                Console.WriteLine();

                foreach (var player in match.Players.Where(p => p.TeamId == match.TeamA.Id))
                {
                    Console.WriteLine($"\t{player.Name}");
                }
                Console.WriteLine();
                Console.WriteLine($"{match.TeamB.TeamName} players in this match:");
                Console.WriteLine();

                foreach (var player in match.Players.Where(p => p.TeamId == match.TeamB.Id))
                {
                    Console.WriteLine($"\t{player.Name}");
                }

                Console.WriteLine();
            }


            Console.ReadLine();
        }
    }
}
