// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drafts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DraftsRecord> _$draftsRecordSerializer =
    new _$DraftsRecordSerializer();

class _$DraftsRecordSerializer implements StructuredSerializer<DraftsRecord> {
  @override
  final Iterable<Type> types = const [DraftsRecord, _$DraftsRecord];
  @override
  final String wireName = 'DraftsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, DraftsRecord object,
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
    value = object.title;
    if (value != null) {
      result
        ..add('title')
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
    value = object.image;
    if (value != null) {
      result
        ..add('image')
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
  DraftsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DraftsRecordBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
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

class _$DraftsRecord extends DraftsRecord {
  @override
  final String uid;
  @override
  final String title;
  @override
  final String description;
  @override
  final String image;
  @override
  final DocumentReference<Object> reference;

  factory _$DraftsRecord([void Function(DraftsRecordBuilder) updates]) =>
      (new DraftsRecordBuilder()..update(updates)).build();

  _$DraftsRecord._(
      {this.uid, this.title, this.description, this.image, this.reference})
      : super._();

  @override
  DraftsRecord rebuild(void Function(DraftsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DraftsRecordBuilder toBuilder() => new DraftsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DraftsRecord &&
        uid == other.uid &&
        title == other.title &&
        description == other.description &&
        image == other.image &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, uid.hashCode), title.hashCode),
                description.hashCode),
            image.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DraftsRecord')
          ..add('uid', uid)
          ..add('title', title)
          ..add('description', description)
          ..add('image', image)
          ..add('reference', reference))
        .toString();
  }
}

class DraftsRecordBuilder
    implements Builder<DraftsRecord, DraftsRecordBuilder> {
  _$DraftsRecord _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  DraftsRecordBuilder() {
    DraftsRecord._initializeBuilder(this);
  }

  DraftsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _title = $v.title;
      _description = $v.description;
      _image = $v.image;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DraftsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DraftsRecord;
  }

  @override
  void update(void Function(DraftsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DraftsRecord build() {
    final _$result = _$v ??
        new _$DraftsRecord._(
            uid: uid,
            title: title,
            description: description,
            image: image,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
