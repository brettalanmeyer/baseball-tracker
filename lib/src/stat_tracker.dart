// import 'package:baseball_stat_tracker/src/components/box_score/box_score.dart';
import 'package:baseball_stat_tracker/src/middleware.dart';
import 'package:baseball_stat_tracker/src/reducers/game.dart';
import 'package:baseball_stat_tracker/src/reducers/history.dart';
import 'package:baseball_stat_tracker/src/state/stat_tracker_state.sg.dart';
// import 'package:over_react/over_react.dart';
// import 'package:over_react/over_react_redux.dart';
import 'package:redux/redux.dart';

class StatTracker {
  Store<StatTrackerState> store;

  StatTracker() {
    store = Store<StatTrackerState>(
      combineReducers<StatTrackerState>([
        gameReducer,
        historyReducer,
      ]),
      initialState: StatTrackerState(),
      middleware: middleware(),
      distinct: true,
    );
  }

  // ReactElement components() {
  //   return (ReduxProvider()..store = store)(
  //     BoxScore()(),
  //   );
  // }
}
