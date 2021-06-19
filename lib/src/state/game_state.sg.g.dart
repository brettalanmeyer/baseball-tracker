// GENERATED CODE - DO NOT MODIFY BY HAND

part of stat_tracker_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GameState extends GameState {
  @override
  final HistoryState history;
  @override
  final TeamState away;
  @override
  final TeamState home;
  @override
  final int inning;
  @override
  final InningType inningType;

  factory _$GameState([void Function(GameStateBuilder) updates]) =>
      (new GameStateBuilder()..update(updates)).build();

  _$GameState._(
      {this.history, this.away, this.home, this.inning, this.inningType})
      : super._() {
    if (history == null) {
      throw new BuiltValueNullFieldError('GameState', 'history');
    }
    if (away == null) {
      throw new BuiltValueNullFieldError('GameState', 'away');
    }
    if (home == null) {
      throw new BuiltValueNullFieldError('GameState', 'home');
    }
    if (inning == null) {
      throw new BuiltValueNullFieldError('GameState', 'inning');
    }
    if (inningType == null) {
      throw new BuiltValueNullFieldError('GameState', 'inningType');
    }
  }

  @override
  GameState rebuild(void Function(GameStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameStateBuilder toBuilder() => new GameStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameState &&
        history == other.history &&
        away == other.away &&
        home == other.home &&
        inning == other.inning &&
        inningType == other.inningType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, history.hashCode), away.hashCode), home.hashCode),
            inning.hashCode),
        inningType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GameState')
          ..add('history', history)
          ..add('away', away)
          ..add('home', home)
          ..add('inning', inning)
          ..add('inningType', inningType))
        .toString();
  }
}

class GameStateBuilder implements Builder<GameState, GameStateBuilder> {
  _$GameState _$v;

  HistoryStateBuilder _history;
  HistoryStateBuilder get history =>
      _$this._history ??= new HistoryStateBuilder();
  set history(HistoryStateBuilder history) => _$this._history = history;

  TeamStateBuilder _away;
  TeamStateBuilder get away => _$this._away ??= new TeamStateBuilder();
  set away(TeamStateBuilder away) => _$this._away = away;

  TeamStateBuilder _home;
  TeamStateBuilder get home => _$this._home ??= new TeamStateBuilder();
  set home(TeamStateBuilder home) => _$this._home = home;

  int _inning;
  int get inning => _$this._inning;
  set inning(int inning) => _$this._inning = inning;

  InningType _inningType;
  InningType get inningType => _$this._inningType;
  set inningType(InningType inningType) => _$this._inningType = inningType;

  GameStateBuilder();

  GameStateBuilder get _$this {
    if (_$v != null) {
      _history = _$v.history?.toBuilder();
      _away = _$v.away?.toBuilder();
      _home = _$v.home?.toBuilder();
      _inning = _$v.inning;
      _inningType = _$v.inningType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GameState;
  }

  @override
  void update(void Function(GameStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GameState build() {
    _$GameState _$result;
    try {
      _$result = _$v ??
          new _$GameState._(
              history: history.build(),
              away: away.build(),
              home: home.build(),
              inning: inning,
              inningType: inningType);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'history';
        history.build();
        _$failedField = 'away';
        away.build();
        _$failedField = 'home';
        home.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GameState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
