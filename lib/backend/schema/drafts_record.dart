import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'drafts_record.g.dart';

abstract class DraftsRecord
    implements Built<DraftsRecord, DraftsRecordBuilder> {
  static Serializer<DraftsRecord> get serializer => _$draftsRecordSerializer;

  @nullable
  String get uid;

  @nullable
  String get title;

  @nullable
  String get description;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DraftsRecordBuilder builder) => builder
    ..uid = ''
    ..title = ''
    ..description = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('drafts');

  static Stream<DraftsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DraftsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DraftsRecord._();
  factory DraftsRecord([void Function(DraftsRecordBuilder) updates]) =
      _$DraftsRecord;

  static DraftsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDraftsRecordData({
  String uid,
  String title,
  String description,
  String image,
}) =>
    serializers.toFirestore(
        DraftsRecord.serializer,
        DraftsRecord((d) => d
          ..uid = uid
          ..title = title
          ..description = description
          ..image = image));
