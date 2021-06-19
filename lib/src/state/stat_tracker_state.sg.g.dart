// GENERATED CODE - DO NOT MODIFY BY HAND

part of stat_tracker_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatTrackerState extends StatTrackerState {
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

  factory _$StatTrackerState(
          [void Function(StatTrackerStateBuilder) updates]) =>
      (new StatTrackerStateBuilder()..update(updates)).build();

  _$StatTrackerState._(
      {this.history, this.away, this.home, this.inning, this.inningType})
      : super._() {
    if (history == null) {
      throw new BuiltValueNullFieldError('StatTrackerState', 'history');
    }
    if (away == null) {
      throw new BuiltValueNullFieldError('StatTrackerState', 'away');
    }
    if (home == null) {
      throw new BuiltValueNullFieldError('StatTrackerState', 'home');
    }
    if (inning == null) {
      throw new BuiltValueNullFieldError('StatTrackerState', 'inning');
    }
    if (inningType == null) {
      throw new BuiltValueNullFieldError('StatTrackerState', 'inningType');
    }
  }

  @override
  StatTrackerState rebuild(void Function(StatTrackerStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatTrackerStateBuilder toBuilder() =>
      new StatTrackerStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatTrackerState &&
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
    return (newBuiltValueToStringHelper('StatTrackerState')
          ..add('history', history)
          ..add('away', away)
          ..add('home', home)
          ..add('inning', inning)
          ..add('inningType', inningType))
        .toString();
  }
}

class StatTrackerStateBuilder
    implements Builder<StatTrackerState, StatTrackerStateBuilder> {
  _$StatTrackerState _$v;

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

  StatTrackerStateBuilder();

  StatTrackerStateBuilder get _$this {
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
  void replace(StatTrackerState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StatTrackerState;
  }

  @override
  void update(void Function(StatTrackerStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StatTrackerState build() {
    _$StatTrackerState _$result;
    try {
      _$result = _$v ??
          new _$StatTrackerState._(
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
            'StatTrackerState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
