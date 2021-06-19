import 'package:baseball_stat_tracker/src/actions.dart';
import 'package:baseball_stat_tracker/src/constants/inning_type.dart';
import 'package:baseball_stat_tracker/src/constants/pitch_result.dart';
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
    if (state.inning == 0) {
      b.inningType = InningType.top;
      b.inning = 1;
      return;
    }

    if (state.inningType == InningType.middle) {
      b.inningType = InningType.bottom;
      return;
    }

    b.inningType = InningType.top;
    b.inning++;
  });
}

GameState _pitch(GameState state, Pitch action) {
  return state.rebuild((b) {
    b.pitches++;

    switch(action.result) {
      case PitchResult.strike:
        b.strikes++;
        if (b.strikes == 3) {
          b.strikes = 0;
          b.outs++;
        }
        break;

      case PitchResult.ball:
        b.balls++;
        if (b.balls == 4) {
          b.balls = 0;
        }
        break;

      case PitchResult.foul:
        if (b.strikes < 2) {
          b.strikes++;
        }
        break;

      case PitchResult.hit:
        break;

      case PitchResult.hitByPitch:
        break;
    }
  });
}

Reducer<GameState> gameReducer = combineReducers<GameState>([
  TypedReducer<GameState, SetTeams>(_setTeams),
  TypedReducer<GameState, SetDefense>(_setDefense),
  TypedReducer<GameState, SetBattingOrder>(_setBattingOrder),
  TypedReducer<GameState, PlayBall>(_playBall),
  TypedReducer<GameState, Pitch>(_pitch),
]);
