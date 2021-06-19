import 'package:baseball_stat_tracker/src/components/box_score/runs.dart';
import 'package:baseball_stat_tracker/src/components/box_score/stats.dart';
import 'package:baseball_stat_tracker/src/state/game_state.sg.dart';
import 'package:over_react/over_react.dart';
import 'package:over_react/over_react_redux.dart';

import 'at_bat.dart';

part 'box_score.over_react.g.dart'; // ignore: uri_has_not_been_generated

UiFactory<BoxScoreProps> BoxScore = connect<GameState, BoxScoreProps>(
  mapStateToProps: ((state) {
    return (BoxScore());
  }),
)(castUiFactory(_$BoxScore)); // ignore: undefined_identifier

mixin BoxScorePropsMixin on UiProps {}

class BoxScoreProps = UiProps with BoxScorePropsMixin, ConnectPropsMixin;

class BoxScoreComponent extends UiComponent2<BoxScoreProps> {
  @override
  ReactElement render() {
    return (Dom.div()..className = 'box-score')(
      (Dom.div()..className = 'park-name')('Fenway Park'),
      (Dom.div()..className = 'left')(
        Runs()(),
        Stats()(),
      ),
      (Dom.div()..className = 'right')(
        AtBat()(),
      ),
    );
  }
}
