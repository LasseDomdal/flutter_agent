
import 'package:agent/agent.dart';

import 'agent.dart';

class Movie {

  String title;
  String year;
  String poster;
  Agent agent;

  Movie(this.title, this.year, this.poster, this.agent);

  static List<Movie> movies = [
    Movie("Dr. No", "1962", "Dr. No (1962).jpg", Agent.list[0]),
    Movie("From Russia with Love", "1963", "From Russia with Love (1963).jpeg", Agent.list[0]),
    Movie("Goldfinger", "1964", "Goldfinger (1964).jpeg", Agent.list[0]),
    Movie("Thunderball", "1965", "Thunderball (1965).jpg", Agent.list[0]),
    Movie("You Only Live Twice", "1967", "You Only Live Twice (1967).jpg", Agent.list[0]),
    Movie("On Her Majesty's Secret Service", "1969", "On Her Majesty's Secret Service (1969).jpg", Agent.list[1]),
    Movie("Diamonds Are Forever", "1971", "Diamonds Are Forever (1971).jpg", Agent.list[0]),
    Movie("Live and Let Die", "1973", "Live and Let Die (1973).jpg", Agent.list[2]),
    Movie("The Man with the Golden Gun", "1974", "The Man with the Golden Gun (1974).jpg", Agent.list[2]),
    Movie("The Spy Who Loved Me", "1977", "The Spy Who Loved Me (1977).jpg", Agent.list[2]),
    Movie("Moonraker", "1979", "Moonraker (1979).jpg", Agent.list[2]),
    Movie("For Your Eyes Only", "1981", "For Your Eyes Only (1981).jpg", Agent.list[2]),
    Movie("Octopussy", "1983", "Octopussy (1983).jpg", Agent.list[2]),
    Movie("A View to a Kill", "1985", "A View to a Kill (1985).jpg", Agent.list[2]),
    Movie("The Living Daylights", "1987", "The Living Daylights (1987).jpg", Agent.list[3]),
    Movie("Licence to Kill", "1989", "Licence to Kill (1989).jpeg", Agent.list[3]),
    Movie("GoldenEye", "1995", "GoldenEye (1995).jpg", Agent.list[4]),
    Movie("Tomorrow Never Dies", "1997", "Tomorrow Never Dies (1997).jpg", Agent.list[4]),
    Movie("The World Is Not Enough", "1999", "The World Is Not Enough (1999).jpg", Agent.list[4]),
    Movie("Die Another Day", "2002", "Die Another Day (2002).jpg", Agent.list[4]),
    Movie("Casino Royale", "2006", "Casino Royale (1967).jpg", Agent.list[5]),
    Movie("Quantum of Solace", "2008", "Quantum Of Solace (2008).jpg", Agent.list[5]),
    Movie("Skyfall", "2012", "skyfall.jpeg", Agent.list[5]),
    Movie("Spectre", "2015", "spectre.jpg", Agent.list[5]),
    Movie("No Time to Die", "2021", "no_time_to_die.jpg", Agent.list[5]),
  ];
}