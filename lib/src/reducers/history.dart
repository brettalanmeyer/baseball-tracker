import 'package:baseball_stat_tracker/src/actions.dart';
import 'package:baseball_stat_tracker/src/state/stat_tracker_state.sg.dart';
import 'package:redux/redux.dart';

StatTrackerState _history(StatTrackerState state, History action) {
  return state.rebuild((b) {
    b.history.past.add(action);
    b.history.present = action;
    b.history.future.clear();
  });
}

StatTrackerState _undo(StatTrackerState state, Undo action) {
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

StatTrackerState _redo(StatTrackerState state, Redo action) {
  return state.rebuild((b) {
     if (b.history.future.isEmpty) {
      return;
    }

    final last = b.history.future.removeLast();
    b.history.past.add(last);
    b.history.present = last;
  });
}

Reducer<StatTrackerState> historyReducer = combineReducers<StatTrackerState>([
  TypedReducer<StatTrackerState, History>(_history),
  TypedReducer<StatTrackerState, Undo>(_undo),
  TypedReducer<StatTrackerState, Redo>(_redo),
]);

