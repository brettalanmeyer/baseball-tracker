import 'package:baseball_stat_tracker/src/actions.dart';
import 'package:baseball_stat_tracker/src/stat_tracker.dart';
import 'package:baseball_stat_tracker/src/teams/cardinals.dart';
import 'package:baseball_stat_tracker/src/teams/cubs.dart';
import 'package:test/test.dart';

void main() {
  group('history', () {

    test('empty', () {
      final statTracker = StatTracker();
      final store = statTracker.store;

      expect(store.state.history.past, isEmpty);
      expect(store.state.history.present, isNull);
      expect(store.state.history.future, isEmpty);
      expect(store.state.history.hasUndos, isFalse);
      expect(store.state.history.hasRedos, isFalse);

      store.dispatch(Undo());
      expect(store.state.history.past, isEmpty);
      expect(store.state.history.present, isNull);
      expect(store.state.history.future, isEmpty);
      expect(store.state.history.hasUndos, isFalse);
      expect(store.state.history.hasRedos, isFalse);

      store.dispatch(Redo());
      expect(store.state.history.past, isEmpty);
      expect(store.state.history.present, isNull);
      expect(store.state.history.future, isEmpty);
      expect(store.state.history.hasUndos, isFalse);
      expect(store.state.history.hasRedos, isFalse);
    });

    test('undo/redo', () {
      final statTracker = StatTracker();
      final store = statTracker.store;

      final cardinals = Cardinals();
      final cubs = Cubs();

      store.dispatch(SetTeams(cardinals, cubs));
      expect(store.state.history.past, hasLength(1));
      expect(store.state.history.present, isA<SetTeams>());
      expect(store.state.history.future, isEmpty);
      expect(store.state.history.hasUndos, isTrue);
      expect(store.state.history.hasRedos, isFalse);

      store.dispatch(Undo());
      expect(store.state.history.past, isEmpty);
      expect(store.state.history.present, isNull);
      expect(store.state.history.future, hasLength(1));
      expect(store.state.history.hasUndos, isFalse);
      expect(store.state.history.hasRedos, isTrue);

      store.dispatch(Undo());
      store.dispatch(Undo());
      expect(store.state.history.past, isEmpty);
      expect(store.state.history.present, isNull);
      expect(store.state.history.future, hasLength(1));
      expect(store.state.history.hasUndos, isFalse);
      expect(store.state.history.hasRedos, isTrue);

      store.dispatch(Redo());
      expect(store.state.history.past, hasLength(1));
      expect(store.state.history.present, isA<SetTeams>());
      expect(store.state.history.future, isEmpty);
      expect(store.state.history.hasUndos, isTrue);
      expect(store.state.history.hasRedos, isFalse);

      store.dispatch(Redo());
      store.dispatch(Redo());
      expect(store.state.history.past, hasLength(1));
      expect(store.state.history.present, isA<SetTeams>());
      expect(store.state.history.future, isEmpty);
      expect(store.state.history.hasUndos, isTrue);
      expect(store.state.history.hasRedos, isFalse);
    });
  });
}
