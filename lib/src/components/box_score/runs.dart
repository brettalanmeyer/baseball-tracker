import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:baseball_stat_tracker/src/state/game_state.sg.dart';
import 'package:over_react/over_react.dart';
import 'package:over_react/over_react_redux.dart';

part 'runs.over_react.g.dart'; // ignore: uri_has_not_been_generated

UiFactory<RunsProps> Runs = connect<GameState, RunsProps>(
  mapStateToProps: ((state) {
    return (Runs()
      ..awayScores = state.away.scores
      ..homeScores = state.home.scores
      ..numInnings = max(max(state.away.scores.length, state.home.scores.length), 9)
    );
  }),
)(castUiFactory(_$Runs)); // ignore: undefined_identifier

mixin RunsPropsMixin on UiProps {
  BuiltList<int> awayScores;
  BuiltList<int> homeScores;
  int numInnings;
}

class RunsProps = UiProps with RunsPropsMixin, ConnectPropsMixin;

class RunsComponent extends UiComponent2<RunsProps> {
  @override
  ReactElement render() {
    return (Dom.div()..className = 'runs')(
      _numbers(),
      _away(),
      _home(),
    );
  }

  ReactElement _numbers() {
    return Dom.div() (
      (Dom.div()..className = 'pitch')('P'),
      (Dom.div()..className = 'name')(),
     _innings(BuiltList<int>(List<int>.generate(props.numInnings, (int inning) => inning + 1))),
    );
  }

  ReactElement _away() {
    return Dom.div() (
      (Dom.div()..className = 'pitch')(36),
      (Dom.div()..className = 'name')('Cubs'),
      _innings(props.awayScores),
    );
  }

  ReactElement _home() {
    return Dom.div() (
      (Dom.div()..className = 'pitch')(36),
      (Dom.div()..className = 'name')('Cardinals'),
      _innings(props.homeScores),
    );
  }

  ReactElement _innings(BuiltList<int> scores) {
    return (Dom.div()..className = 'innings')(
      List<ReactElement>.generate(props.numInnings, (int inning) {
        if (scores.length > inning) {
          return _inning(inning, scores[inning]);
        }

        return _inning(inning, null);
      }),
    );
  }

  ReactElement _inning(int inning, int score) {
    return (Dom.div()
      ..key = 'inning-$inning'
      ..className = 'inning'
    )(score);
  }
}
