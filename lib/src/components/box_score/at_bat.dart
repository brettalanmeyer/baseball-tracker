import 'package:baseball_stat_tracker/src/state/game_state.sg.dart';
import 'package:over_react/over_react.dart';
import 'package:over_react/over_react_redux.dart';

part 'at_bat.over_react.g.dart'; // ignore: uri_has_not_been_generated

UiFactory<AtBatProps> AtBat = connect<GameState, AtBatProps>(
  mapStateToProps: ((state) {
    return (AtBat());
  }),
)(castUiFactory(_$AtBat)); // ignore: undefined_identifier

mixin AtBatPropsMixin on UiProps {}

class AtBatProps = UiProps with AtBatPropsMixin, ConnectPropsMixin;

class AtBatComponent extends UiComponent2<AtBatProps> {
  @override
  ReactElement render() {
    return Dom.div()('at bat');
  }
}
