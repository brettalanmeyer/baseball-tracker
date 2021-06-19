import 'package:baseball_stat_tracker/src/actions.dart';
import 'package:baseball_stat_tracker/src/state/game_state.sg.dart';
import 'package:redux/redux.dart';

GameState _history(GameState state, History action) {
  return state.rebuild((b) {
    b.history.past.add(action);
    b.history.present = action;
    b.history.future.clear();
  });
}

GameState _undo(GameState state, Undo action) {
  return state.rebuild((b) {
    if (b.history.past.isEmpty) {
      return;
    }

    final last = b.history.past.removeLast();
    b.history.future.add(last);

    if (b.history.past.isEmpty) {
      b.history.present = null;
    } else {
      b.history.present = b.history.past.last;
    }
  });
}

GameState _redo(GameState state, Redo action) {
  return state.rebuild((b) {
     if (b.history.future.isEmpty) {
      return;
    }

    final last = b.history.future.removeLast();
    b.history.past.add(last);
    b.history.present = last;
  });
}

Reducer<GameState> historyReducer = combineReducers<GameState>([
  TypedReducer<GameState, History>(_history),
  TypedReducer<GameState, Undo>(_undo),
  TypedReducer<GameState, Redo>(_redo),
]);
