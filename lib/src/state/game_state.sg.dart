library stat_tracker_state;

import 'package:baseball_stat_tracker/src/constants/inning_type.dart';
import 'package:baseball_stat_tracker/src/state/history_state.sg.dart';
import 'package:baseball_stat_tracker/src/state/team_state.sg.dart';
import 'package:built_value/built_value.dart';

part 'game_state.sg.g.dart';

abstract class GameState implements Built<GameState, GameStateBuilder> {
  factory GameState({
    HistoryState history,
    TeamState away,
    TeamState home,
    int inning = 0,
    InningType inningType = InningType.top,
  }) {
    return _$GameState._(
      history: history ?? HistoryState(),
      away: away ?? TeamState(),
      home: home ?? TeamState(),
      inning: inning,
      inningType: inningType,
    );
  }

  GameState._();

  HistoryState get history;

  TeamState get away;
  TeamState get home;
  int get inning;
  InningType get inningType;
}
