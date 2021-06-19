import 'package:baseball_stat_tracker/src/state/stat_tracker_state.sg.dart';
import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';

import 'actions.dart';

StatTrackerState _setTeams(StatTrackerState state, SetTeams action) {
  return state.rebuild((b) {
    b.away.team = action.away;
    b.home.team = action.home;
  });
}

StatTrackerState _setDefense(StatTrackerState state, SetDefense action) {
  return state.rebuild((b) {
    final team = b.away.team == action.team ? b.away : b.home;

    team.pitcher ??= action.pitcher;
    team.catcher ??= action.catcher;
    team.first ??= action.first;
    team.second ??= action.second;
    team.shortStop ??= action.shortStop;
    team.third ??= action.third;
    team.left ??= action.left;
    team.center ??= action.center;
    team.right ??= action.right;
  });
}

StatTrackerState _setBattingOrder(StatTrackerState state, SetBattingOrder action) {
  return state.rebuild((b) {
    final team = b.away.team == action.team ? b.away : b.home;
    team.battingOrder = ListBuilder(action.battingOrder);
  });
}

StatTrackerState _playBall(StatTrackerState state, PlayBall action) {
  return state.rebuild((b) {
    b.inning = 1;
  });
}

StatTrackerState _setAwayScores(StatTrackerState state, SetAwayScores action) {
  return state.rebuild((b) => b.away.scores = ListBuilder(action.scores));
}

StatTrackerState _setHomeScores(StatTrackerState state, SetHomeScores action) {
  return state.rebuild((b) => b.home.scores =  ListBuilder(action.scores));
}

Reducer<StatTrackerState> statTrackerReducer = combineReducers<StatTrackerState>([
  TypedReducer<StatTrackerState, SetTeams>(_setTeams),
  TypedReducer<StatTrackerState, SetDefense>(_setDefense),
  TypedReducer<StatTrackerState, SetBattingOrder>(_setBattingOrder),
  TypedReducer<StatTrackerState, PlayBall>(_playBall),

  TypedReducer<StatTrackerState, SetAwayScores>(_setAwayScores),
  TypedReducer<StatTrackerState, SetHomeScores>(_setHomeScores),
]);
