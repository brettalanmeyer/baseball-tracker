import 'package:baseball_stat_tracker/src/constants/position.dart';
import 'package:baseball_stat_tracker/src/teams/team.dart';

class Cardinals implements Team {
  @override
  String name = 'Cardinals';

  @override
  String city = 'St. Louis';

  @override
  List<Player> roster = [
    Player('Génesis', 'Cabrera', 92, Position.pitcher),
    Player('Yadier', 'Molina', 4, Position.catcher),
    Player('Nolan', 'Arenado', 28, Position.first),
    Player('Matt', 'Carpenter', 13, Position.second),
    Player('Paul', 'DeJong', 11, Position.shortStop),
    Player('Tommy', 'Edman', 19, Position.third),
    Player('Dylan', 'Carlson', 3, Position.left),
    Player('Tyler', 'O\'Neill', 27, Position.center),
    Player('Lane', 'Thomas', 35, Position.right),
  ];
}
