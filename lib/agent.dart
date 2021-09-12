
import 'package:agent/main.dart';

class Agent {
  String name;
  String imageURL;
  String active;
  String latestMovie;
  String latestMovieYear;

  Agent(this.name, this.imageURL, this.active, this.latestMovie,
      this.latestMovieYear);

  static List<Agent> list = [
    Agent('Sean Connery', 'sean_connery.png', '1962-1971',
        'Diamonds Are Forever', '1971'),
    Agent('George Lazenby', 'george_lazenby.png', '1969-1969',
        'On Her Majestys Secret Service', '1969'),
    Agent('Roger Moore', 'roger_moore.png', '1973-1985', 'A View to a Kill',
        '1985'),
    Agent('Timothy Dalton', 'timothy_dalton.png', '1987-1989',
        'Licence to Kill', '1989'),
    Agent('Pierce Brosnan', 'pierce_brosnan.png', '1995-2002',
        'Die Another Day', '2002'),
    Agent(
        'Daniel Craig', 'daniel_craig.png', '2006-', 'No Time to Die', '2021'),
  ];
}