library team;

import 'package:baseball_stat_tracker/src/teams/team.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'team_state.sg.g.dart';

abstract class TeamState implements Built<TeamState, TeamStateBuilder> {
  factory TeamState({
    Team team,
    List<Player> battingOrder = const [],
    List<int> runsPerInning = const [],
    int runs = 0,
    int hits = 0,
    int errors = 0,
  }) {
    return _$TeamState._(
      team: team,
      battingOrder: BuiltList<Player>(battingOrder),
      runsPerInning: BuiltList<int>(runsPerInning),
      runs: runs,
      hits: hits,
      errors: errors,
    );
  }

  TeamState._();

  @nullable
  Team get team;
  BuiltList<Player> get battingOrder;

  BuiltList<int> get runsPerInning;
  int get runs;
  int get hits;
  int get errors;

  @nullable
  Player get pitcher;
  @nullable
  Player get catcher;
  @nullable
  Player get first;
  @nullable
  Player get second;
  @nullable
  Player get shortStop;
  @nullable
  Player get third;
  @nullable
  Player get left;
  @nullable
  Player get center;
  @nullable
  Player get right;
}
