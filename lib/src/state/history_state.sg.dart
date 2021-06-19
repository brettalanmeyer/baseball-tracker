library history;

import 'package:baseball_stat_tracker/src/actions.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'history_state.sg.g.dart';

abstract class HistoryState implements Built<HistoryState, HistoryStateBuilder> {
  factory HistoryState({
    List<History> past = const [],
    History present,
    List<History> future = const [],
  }) {
    return _$HistoryState._(
      past: BuiltList<History>(past),
      present: present,
      future: BuiltList<History>(future),
    );
  }

  HistoryState._();

  BuiltList<History> get past;
  @nullable
  History get present;
  BuiltList<History> get future;

  @memoized
  bool get hasUndos => past.isNotEmpty;

  @memoized
  bool get hasRedos => future.isNotEmpty;
}
