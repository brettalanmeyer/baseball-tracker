import 'dart:math';

import 'package:baseball_stat_tracker/src/constants/pitch_result.dart';
import 'package:baseball_stat_tracker/src/teams/team.dart';

import 'constants/bases.dart';
import 'constants/pitch_type.dart';

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

class Pitch with History {
  final PitchType type;
  final num velocity;
  final Point<num> target;
  final PitchResult result;
  final bool swing;
  final Base baseReached;
  final bool dropped;

  Pitch({
    this.type,
    this.velocity,
    this.target,
    this.result,
    this.swing,
    this.baseReached,
    this.dropped,
  });
}

class PlayBall with History {}

class Undo {}

class Redo {}

mixin History {}