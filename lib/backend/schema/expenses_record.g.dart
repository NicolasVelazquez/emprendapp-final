// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenses_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExpensesRecord> _$expensesRecordSerializer =
    new _$ExpensesRecordSerializer();

class _$ExpensesRecordSerializer
    implements StructuredSerializer<ExpensesRecord> {
  @override
  final Iterable<Type> types = const [ExpensesRecord, _$ExpensesRecord];
  @override
  final String wireName = 'ExpensesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ExpensesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  ExpensesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExpensesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$ExpensesRecord extends ExpensesRecord {
  @override
  final String uid;
  @override
  final DateTime date;
  @override
  final String description;
  @override
  final double amount;
  @override
  final DocumentReference<Object> reference;

  factory _$ExpensesRecord([void Function(ExpensesRecordBuilder) updates]) =>
      (new ExpensesRecordBuilder()..update(updates)).build();

  _$ExpensesRecord._(
      {this.uid, this.date, this.description, this.amount, this.reference})
      : super._();

  @override
  ExpensesRecord rebuild(void Function(ExpensesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpensesRecordBuilder toBuilder() =>
      new ExpensesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpensesRecord &&
        uid == other.uid &&
        date == other.date &&
        description == other.description &&
        amount == other.amount &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, uid.hashCode), date.hashCode), description.hashCode),
            amount.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExpensesRecord')
          ..add('uid', uid)
          ..add('date', date)
          ..add('description', description)
          ..add('amount', amount)
          ..add('reference', reference))
        .toString();
  }
}

class ExpensesRecordBuilder
    implements Builder<ExpensesRecord, ExpensesRecordBuilder> {
  _$ExpensesRecord _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  double _amount;
  double get amount => _$this._amount;
  set amount(double amount) => _$this._amount = amount;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ExpensesRecordBuilder() {
    ExpensesRecord._initializeBuilder(this);
  }

  ExpensesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _date = $v.date;
      _description = $v.description;
      _amount = $v.amount;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpensesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExpensesRecord;
  }

  @override
  void update(void Function(ExpensesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExpensesRecord build() {
    final _$result = _$v ??
        new _$ExpensesRecord._(
            uid: uid,
            date: date,
            description: description,
            amount: amount,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
