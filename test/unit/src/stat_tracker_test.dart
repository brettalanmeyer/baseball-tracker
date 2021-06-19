import 'dart:math';

import 'package:baseball_stat_tracker/src/actions.dart';
import 'package:baseball_stat_tracker/src/constants/inning_type.dart';
import 'package:baseball_stat_tracker/src/constants/pitch_result.dart';
import 'package:baseball_stat_tracker/src/constants/pitch_type.dart';
import 'package:baseball_stat_tracker/src/constants/position.dart';
import 'package:baseball_stat_tracker/src/stat_tracker.dart';
import 'package:baseball_stat_tracker/src/state/game_state.sg.dart';
import 'package:baseball_stat_tracker/src/teams/cardinals.dart';
import 'package:baseball_stat_tracker/src/teams/cubs.dart';
import 'package:redux/redux.dart';
import 'package:test/test.dart';

void main() {
  group('stat tracker', () {
    StatTracker statTracker;
    Store<GameState> store;

    Cardinals cardinals;
    Cubs cubs;

    setUp(() {
      statTracker = StatTracker();
      store = statTracker.store;

      cardinals = Cardinals();
      cubs = Cubs();
    });

    test('team setup', () {
      store.dispatch(SetTeams(cardinals, cubs));
      expect(store.state.away.team, equals(cardinals));
      expect(store.state.home.team, equals(cubs));

      store.dispatch(SetDefense(cardinals, pitcher: cardinals.roster.firstWhere((p) => p.position == Position.pitcher)));
      store.dispatch(SetDefense(cardinals, catcher: cardinals.roster.firstWhere((p) => p.position == Position.catcher)));
      store.dispatch(SetDefense(cardinals, first: cardinals.roster.firstWhere((p) => p.position == Position.first)));
      store.dispatch(SetDefense(cardinals, second: cardinals.roster.firstWhere((p) => p.position == Position.second)));
      store.dispatch(SetDefense(cardinals, shortStop: cardinals.roster.firstWhere((p) => p.position == Position.shortStop)));
      store.dispatch(SetDefense(cardinals, third: cardinals.roster.firstWhere((p) => p.position == Position.third)));
      store.dispatch(SetDefense(cardinals, left: cardinals.roster.firstWhere((p) => p.position == Position.left)));
      store.dispatch(SetDefense(cardinals, center: cardinals.roster.firstWhere((p) => p.position == Position.center)));
      store.dispatch(SetDefense(cardinals, right: cardinals.roster.firstWhere((p) => p.position == Position.right)));
      store.dispatch(SetBattingOrder(cardinals, cardinals.roster.reversed.toList()));

      store.dispatch(SetDefense(cubs, pitcher: cubs.roster.firstWhere((p) => p.position == Position.pitcher)));
      store.dispatch(SetDefense(cubs, catcher: cubs.roster.firstWhere((p) => p.position == Position.catcher)));
      store.dispatch(SetDefense(cubs, first: cubs.roster.firstWhere((p) => p.position == Position.first)));
      store.dispatch(SetDefense(cubs, second: cubs.roster.firstWhere((p) => p.position == Position.second)));
      store.dispatch(SetDefense(cubs, shortStop: cubs.roster.firstWhere((p) => p.position == Position.shortStop)));
      store.dispatch(SetDefense(cubs, third: cubs.roster.firstWhere((p) => p.position == Position.third)));
      store.dispatch(SetDefense(cubs, left: cubs.roster.firstWhere((p) => p.position == Position.left)));
      store.dispatch(SetDefense(cubs, center: cubs.roster.firstWhere((p) => p.position == Position.center)));
      store.dispatch(SetDefense(cubs, right: cubs.roster.firstWhere((p) => p.position == Position.right)));
      store.dispatch(SetBattingOrder(cubs, cubs.roster.reversed.toList()));
    });

    void strikeOut() {
      for (var i = 0; i < 3; i++) {
        store.dispatch(Pitch(
          type: PitchType.fourSeamFastball,
          velocity: 98,
          target: Point<num>(0.2, -0.4),
          result: PitchResult.strike,
          swing: false,
          dropped: false,
        ));
      }
    }

    test('play ball', () {
      expect(store.state.inning, equals(0));

      store.dispatch(PlayBall());
      expect(store.state.inning, equals(1));
      expect(store.state.inningType, equals(InningType.top));

      expect(store.state.pitches, equals(0));
      strikeOut();
      expect(store.state.pitches, equals(3));
      strikeOut();
      strikeOut();
      expect(store.state.pitches, equals(9));

      expect(store.state.inning, equals(1));
      expect(store.state.inningType, equals(InningType.middle));
    });
  });
}
