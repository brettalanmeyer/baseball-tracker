import 'package:baseball_stat_tracker/src/teams/team.dart';

class SetTeams with History {
  final Team away;
  final Team home;
  SetTeams(this.away, this.home);
}

class SetDefense with History {
  final Team team;
  final Player pitcher;
  final Player catcher;
  final Player first;
  final Player second;
  final Player shortStop;
  final Player third;
  final Player left;
  final Player center;
  final Player right;

  SetDefense(this.team, {
    this.pitcher,
    this.catcher,
    this.first,
    this.second,
    this.shortStop,
    this.third,
    this.left,
    this.center,
    this.right,
  });
}

class SetBattingOrder with History {
  final Team team;
  final List<Player> battingOrder;
  SetBattingOrder(this.team, this.battingOrder);
}

class PlayBall with History {}

class SetAwayScores with History {
  final List<int> scores;
  SetAwayScores(this.scores);
}

class SetHomeScores with History {
  final List<int> scores;
  SetHomeScores(this.scores);
}

class Undo {}

class Redo {}

mixin History {}