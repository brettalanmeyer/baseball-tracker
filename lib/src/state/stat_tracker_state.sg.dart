library stat_tracker_state;

import 'package:baseball_stat_tracker/src/constants/inning_type.dart';
import 'package:baseball_stat_tracker/src/state/team.sg.dart';
import 'package:built_value/built_value.dart';

part 'stat_tracker_state.sg.g.dart';

abstract class StatTrackerState implements Built<StatTrackerState, StatTrackerStateBuilder> {
  factory StatTrackerState({
    TeamState away,
    TeamState home,
    int inning = 0,
    InningType inningType = InningType.top,
  }) {
    return _$StatTrackerState._(
      away: away ?? TeamState(),
      home: home ?? TeamState(),
      inning: inning,
      inningType: inningType,
    );
  }

  StatTrackerState._();

  @nullable
  TeamState get away;
  @nullable
  TeamState get home;
  int get inning;
  InningType get inningType;
}
