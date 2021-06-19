import 'package:baseball_stat_tracker/src/constants/position.dart';
import 'package:baseball_stat_tracker/src/teams/team.dart';

class Cubs implements Team {
  @override
  String name = 'Cubs';

  @override
  String city = 'Chicago';

  @override
  List<Player> roster = [
    Player('Cory', 'Abbott', 15, Position.pitcher),
    Player('Willson', 'Contreras', 40, Position.catcher),
    Player('Sergio', 'Alcántara', 51, Position.first),
    Player('Javier', 'Báez', 9, Position.second),
    Player('Anthony', 'Rizzo', 4, Position.shortStop),
    Player('Eric', 'Sogard', 4, Position.third),
    Player('Kris', 'Bryant', 17, Position.left),
    Player('Ian', 'Happ', 8, Position.center),
    Player('Jason', 'Heyward', 22, Position.right),
  ];
}

