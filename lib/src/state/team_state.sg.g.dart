// GENERATED CODE - DO NOT MODIFY BY HAND

part of team;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TeamState extends TeamState {
  @override
  final Team team;
  @override
  final BuiltList<Player> battingOrder;
  @override
  final int score;
  @override
  final BuiltList<int> scores;
  @override
  final Player pitcher;
  @override
  final Player catcher;
  @override
  final Player first;
  @override
  final Player second;
  @override
  final Player shortStop;
  @override
  final Player third;
  @override
  final Player left;
  @override
  final Player center;
  @override
  final Player right;

  factory _$TeamState([void Function(TeamStateBuilder) updates]) =>
      (new TeamStateBuilder()..update(updates)).build();

  _$TeamState._(
      {this.team,
      this.battingOrder,
      this.score,
      this.scores,
      this.pitcher,
      this.catcher,
      this.first,
      this.second,
      this.shortStop,
      this.third,
      this.left,
      this.center,
      this.right})
      : super._() {
    if (battingOrder == null) {
      throw new BuiltValueNullFieldError('TeamState', 'battingOrder');
    }
    if (score == null) {
      throw new BuiltValueNullFieldError('TeamState', 'score');
    }
    if (scores == null) {
      throw new BuiltValueNullFieldError('TeamState', 'scores');
    }
  }

  @override
  TeamState rebuild(void Function(TeamStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamStateBuilder toBuilder() => new TeamStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamState &&
        team == other.team &&
        battingOrder == other.battingOrder &&
        score == other.score &&
        scores == other.scores &&
        pitcher == other.pitcher &&
        catcher == other.catcher &&
        first == other.first &&
        second == other.second &&
        shortStop == other.shortStop &&
        third == other.third &&
        left == other.left &&
        center == other.center &&
        right == other.right;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, team.hashCode),
                                                    battingOrder.hashCode),
                                                score.hashCode),
                                            scores.hashCode),
                                        pitcher.hashCode),
                                    catcher.hashCode),
                                first.hashCode),
                            second.hashCode),
                        shortStop.hashCode),
                    third.hashCode),
                left.hashCode),
            center.hashCode),
        right.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamState')
          ..add('team', team)
          ..add('battingOrder', battingOrder)
          ..add('score', score)
          ..add('scores', scores)
          ..add('pitcher', pitcher)
          ..add('catcher', catcher)
          ..add('first', first)
          ..add('second', second)
          ..add('shortStop', shortStop)
          ..add('third', third)
          ..add('left', left)
          ..add('center', center)
          ..add('right', right))
        .toString();
  }
}

class TeamStateBuilder implements Builder<TeamState, TeamStateBuilder> {
  _$TeamState _$v;

  Team _team;
  Team get team => _$this._team;
  set team(Team team) => _$this._team = team;

  ListBuilder<Player> _battingOrder;
  ListBuilder<Player> get battingOrder =>
      _$this._battingOrder ??= new ListBuilder<Player>();
  set battingOrder(ListBuilder<Player> battingOrder) =>
      _$this._battingOrder = battingOrder;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  ListBuilder<int> _scores;
  ListBuilder<int> get scores => _$this._scores ??= new ListBuilder<int>();
  set scores(ListBuilder<int> scores) => _$this._scores = scores;

  Player _pitcher;
  Player get pitcher => _$this._pitcher;
  set pitcher(Player pitcher) => _$this._pitcher = pitcher;

  Player _catcher;
  Player get catcher => _$this._catcher;
  set catcher(Player catcher) => _$this._catcher = catcher;

  Player _first;
  Player get first => _$this._first;
  set first(Player first) => _$this._first = first;

  Player _second;
  Player get second => _$this._second;
  set second(Player second) => _$this._second = second;

  Player _shortStop;
  Player get shortStop => _$this._shortStop;
  set shortStop(Player shortStop) => _$this._shortStop = shortStop;

  Player _third;
  Player get third => _$this._third;
  set third(Player third) => _$this._third = third;

  Player _left;
  Player get left => _$this._left;
  set left(Player left) => _$this._left = left;

  Player _center;
  Player get center => _$this._center;
  set center(Player center) => _$this._center = center;

  Player _right;
  Player get right => _$this._right;
  set right(Player right) => _$this._right = right;

  TeamStateBuilder();

  TeamStateBuilder get _$this {
    if (_$v != null) {
      _team = _$v.team;
      _battingOrder = _$v.battingOrder?.toBuilder();
      _score = _$v.score;
      _scores = _$v.scores?.toBuilder();
      _pitcher = _$v.pitcher;
      _catcher = _$v.catcher;
      _first = _$v.first;
      _second = _$v.second;
      _shortStop = _$v.shortStop;
      _third = _$v.third;
      _left = _$v.left;
      _center = _$v.center;
      _right = _$v.right;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TeamState;
  }

  @override
  void update(void Function(TeamStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamState build() {
    _$TeamState _$result;
    try {
      _$result = _$v ??
          new _$TeamState._(
              team: team,
              battingOrder: battingOrder.build(),
              score: score,
              scores: scores.build(),
              pitcher: pitcher,
              catcher: catcher,
              first: first,
              second: second,
              shortStop: shortStop,
              third: third,
              left: left,
              center: center,
              right: right);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'battingOrder';
        battingOrder.build();

        _$failedField = 'scores';
        scores.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TeamState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
