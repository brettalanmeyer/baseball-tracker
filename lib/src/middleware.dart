import 'package:baseball_stat_tracker/src/actions.dart';
import 'package:baseball_stat_tracker/src/state/game_state.sg.dart';
import 'package:redux/redux.dart';

class StatTrackerMiddleware<A> extends TypedMiddleware<GameState, A> {
  final void Function(A) toolbarAction;

  StatTrackerMiddleware(this.toolbarAction) : super((Store<GameState> store, A action, NextDispatcher next) {
    toolbarAction(action);
    next(action);
  });
}

void _playBall(PlayBall action) {
  print('middleware');
}

List<Middleware<GameState>> middleware() {
  return [
    StatTrackerMiddleware<PlayBall>(_playBall),
  ];
}
