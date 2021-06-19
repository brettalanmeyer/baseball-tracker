import 'package:baseball_stat_tracker/src/constants/position.dart';

abstract class Team {
  String name;
  String city;
  List<Player> roster;
}

class Player {
  final String firstName;
  final String lastName;
  final int number;
  final Position position;

  Player(this.firstName, this.lastName, this.number, this.position);

  @override
  String toString() {
    return '$firstName $lastName $number $position';
  }
}
