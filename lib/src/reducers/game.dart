import 'package:baseball_stat_tracker/src/actions.dart';
import 'package:baseball_stat_tracker/src/state/game_state.sg.dart';
import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';

GameState _setTeams(GameState state, SetTeams action) {
  return state.rebuild((b) {
    b.away.team = action.away;
    b.home.team = action.home;
  });
}

GameState _setDefense(GameState state, SetDefense action) {
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

GameState _setBattingOrder(GameState state, SetBattingOrder action) {
  return state.rebuild((b) {
    final team = b.away.team == action.team ? b.away : b.home;
    team.battingOrder = ListBuilder(action.battingOrder);
  });
}

GameState _playBall(GameState state, PlayBall action) {
  return state.rebuild((b) {
    b.inning = 1;
  });
}

GameState _setAwayScores(GameState state, SetAwayScores action) {
  return state.rebuild((b) => b.away.scores = ListBuilder(action.scores));
}

GameState _setHomeScores(GameState state, SetHomeScores action) {
  return state.rebuild((b) => b.home.scores =  ListBuilder(action.scores));
}

Reducer<GameState> gameReducer = combineReducers<GameState>([
  TypedReducer<GameState, SetTeams>(_setTeams),
  TypedReducer<GameState, SetDefense>(_setDefense),
  TypedReducer<GameState, SetBattingOrder>(_setBattingOrder),
  TypedReducer<GameState, PlayBall>(_playBall),

  TypedReducer<GameState, SetAwayScores>(_setAwayScores),
  TypedReducer<GameState, SetHomeScores>(_setHomeScores),
]);
