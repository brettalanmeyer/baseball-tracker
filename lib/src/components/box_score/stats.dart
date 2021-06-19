import 'package:baseball_stat_tracker/src/state/game_state.sg.dart';
import 'package:over_react/over_react.dart';
import 'package:over_react/over_react_redux.dart';

part 'stats.over_react.g.dart'; // ignore: uri_has_not_been_generated

UiFactory<StatsProps> Stats = connect<GameState, StatsProps>(
  mapStateToProps: ((state) {
    return (Stats());
  }),
)(castUiFactory(_$Stats)); // ignore: undefined_identifier

mixin StatsPropsMixin on UiProps {}

class StatsProps = UiProps with StatsPropsMixin, ConnectPropsMixin;

class StatsComponent extends UiComponent2<StatsProps> {
  @override
  ReactElement render() {
    return (Dom.div()..className = 'stats')('stats');
  }
}
