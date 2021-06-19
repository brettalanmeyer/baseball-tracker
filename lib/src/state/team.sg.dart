library team;

import 'package:baseball_stat_tracker/src/teams/team.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'team.sg.g.dart';

abstract class TeamState implements Built<TeamState, TeamStateBuilder> {
  factory TeamState({
    Team team,
    List<Player> battingOrder = const [],
    int score = 0,
    List<int> scores = const [],
  }) {
    return _$TeamState._(
      team: team,
      battingOrder: BuiltList<Player>(battingOrder),
      score: score,
      scores: BuiltList<int>(scores),
    );
  }

  TeamState._();

  @nullable
  Team get team;
  BuiltList<Player> get battingOrder;
  int get score;
  BuiltList<int> get scores;

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
