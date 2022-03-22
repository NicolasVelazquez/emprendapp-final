import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'suppliers_record.g.dart';

abstract class SuppliersRecord
    implements Built<SuppliersRecord, SuppliersRecordBuilder> {
  static Serializer<SuppliersRecord> get serializer =>
      _$suppliersRecordSerializer;

  @nullable
  String get name;

  @nullable
  int get telephone;

  @nullable
  String get email;

  @nullable
  String get uid;

  @nullable
  String get description;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SuppliersRecordBuilder builder) => builder
    ..name = ''
    ..telephone = 0
    ..email = ''
    ..uid = ''
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('suppliers');

  static Stream<SuppliersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SuppliersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SuppliersRecord._();
  factory SuppliersRecord([void Function(SuppliersRecordBuilder) updates]) =
      _$SuppliersRecord;

  static SuppliersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSuppliersRecordData({
  String name,
  int telephone,
  String email,
  String uid,
  String description,
}) =>
    serializers.toFirestore(
        SuppliersRecord.serializer,
        SuppliersRecord((s) => s
          ..name = name
          ..telephone = telephone
          ..email = email
          ..uid = uid
          ..description = description));
