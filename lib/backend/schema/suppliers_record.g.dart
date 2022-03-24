// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suppliers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SuppliersRecord> _$suppliersRecordSerializer =
    new _$SuppliersRecordSerializer();

class _$SuppliersRecordSerializer
    implements StructuredSerializer<SuppliersRecord> {
  @override
  final Iterable<Type> types = const [SuppliersRecord, _$SuppliersRecord];
  @override
  final String wireName = 'SuppliersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, SuppliersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telephone;
    if (value != null) {
      result
        ..add('telephone')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  SuppliersRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SuppliersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'telephone':
          result.telephone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$SuppliersRecord extends SuppliersRecord {
  @override
  final String name;
  @override
  final int telephone;
  @override
  final String email;
  @override
  final String uid;
  @override
  final String description;
  @override
  final String address;
  @override
  final DocumentReference<Object> reference;

  factory _$SuppliersRecord([void Function(SuppliersRecordBuilder) updates]) =>
      (new SuppliersRecordBuilder()..update(updates)).build();

  _$SuppliersRecord._(
      {this.name,
      this.telephone,
      this.email,
      this.uid,
      this.description,
      this.address,
      this.reference})
      : super._();

  @override
  SuppliersRecord rebuild(void Function(SuppliersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuppliersRecordBuilder toBuilder() =>
      new SuppliersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuppliersRecord &&
        name == other.name &&
        telephone == other.telephone &&
        email == other.email &&
        uid == other.uid &&
        description == other.description &&
        address == other.address &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), telephone.hashCode),
                        email.hashCode),
                    uid.hashCode),
                description.hashCode),
            address.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SuppliersRecord')
          ..add('name', name)
          ..add('telephone', telephone)
          ..add('email', email)
          ..add('uid', uid)
          ..add('description', description)
          ..add('address', address)
          ..add('reference', reference))
        .toString();
  }
}

class SuppliersRecordBuilder
    implements Builder<SuppliersRecord, SuppliersRecordBuilder> {
  _$SuppliersRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _telephone;
  int get telephone => _$this._telephone;
  set telephone(int telephone) => _$this._telephone = telephone;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  SuppliersRecordBuilder() {
    SuppliersRecord._initializeBuilder(this);
  }

  SuppliersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _telephone = $v.telephone;
      _email = $v.email;
      _uid = $v.uid;
      _description = $v.description;
      _address = $v.address;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuppliersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SuppliersRecord;
  }

  @override
  void update(void Function(SuppliersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SuppliersRecord build() {
    final _$result = _$v ??
        new _$SuppliersRecord._(
            name: name,
            telephone: telephone,
            email: email,
            uid: uid,
            description: description,
            address: address,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
