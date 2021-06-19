import 'package:baseball_stat_tracker/src/state/stat_tracker_state.sg.dart';
import 'package:over_react/over_react.dart';
import 'package:over_react/over_react_redux.dart';

part 'at_bat.over_react.g.dart';

UiFactory<AtBatProps> AtBat = connect<StatTrackerState, AtBatProps>(
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
