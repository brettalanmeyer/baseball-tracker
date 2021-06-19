// GENERATED CODE - DO NOT MODIFY BY HAND

part of history;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HistoryState extends HistoryState {
  @override
  final BuiltList<History> past;
  @override
  final History present;
  @override
  final BuiltList<History> future;
  bool __hasUndos;
  bool __hasRedos;

  factory _$HistoryState([void Function(HistoryStateBuilder) updates]) =>
      (new HistoryStateBuilder()..update(updates)).build();

  _$HistoryState._({this.past, this.present, this.future}) : super._() {
    if (past == null) {
      throw new BuiltValueNullFieldError('HistoryState', 'past');
    }
    if (future == null) {
      throw new BuiltValueNullFieldError('HistoryState', 'future');
    }
  }

  @override
  bool get hasUndos => __hasUndos ??= super.hasUndos;

  @override
  bool get hasRedos => __hasRedos ??= super.hasRedos;

  @override
  HistoryState rebuild(void Function(HistoryStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryStateBuilder toBuilder() => new HistoryStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryState &&
        past == other.past &&
        present == other.present &&
        future == other.future;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, past.hashCode), present.hashCode), future.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HistoryState')
          ..add('past', past)
          ..add('present', present)
          ..add('future', future))
        .toString();
  }
}

class HistoryStateBuilder
    implements Builder<HistoryState, HistoryStateBuilder> {
  _$HistoryState _$v;

  ListBuilder<History> _past;
  ListBuilder<History> get past => _$this._past ??= new ListBuilder<History>();
  set past(ListBuilder<History> past) => _$this._past = past;

  History _present;
  History get present => _$this._present;
  set present(History present) => _$this._present = present;

  ListBuilder<History> _future;
  ListBuilder<History> get future =>
      _$this._future ??= new ListBuilder<History>();
  set future(ListBuilder<History> future) => _$this._future = future;

  HistoryStateBuilder();

  HistoryStateBuilder get _$this {
    if (_$v != null) {
      _past = _$v.past?.toBuilder();
      _present = _$v.present;
      _future = _$v.future?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoryState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HistoryState;
  }

  @override
  void update(void Function(HistoryStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HistoryState build() {
    _$HistoryState _$result;
    try {
      _$result = _$v ??
          new _$HistoryState._(
              past: past.build(), present: present, future: future.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'past';
        past.build();

        _$failedField = 'future';
        future.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HistoryState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
