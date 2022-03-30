import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'expenses_record.g.dart';

abstract class ExpensesRecord
    implements Built<ExpensesRecord, ExpensesRecordBuilder> {
  static Serializer<ExpensesRecord> get serializer =>
      _$expensesRecordSerializer;

  @nullable
  String get uid;

  @nullable
  DateTime get date;

  @nullable
  String get description;

  @nullable
  double get amount;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ExpensesRecordBuilder builder) => builder
    ..uid = ''
    ..description = ''
    ..amount = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('expenses');

  static Stream<ExpensesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ExpensesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ExpensesRecord._();
  factory ExpensesRecord([void Function(ExpensesRecordBuilder) updates]) =
      _$ExpensesRecord;

  static ExpensesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createExpensesRecordData({
  String uid,
  DateTime date,
  String description,
  double amount,
}) =>
    serializers.toFirestore(
        ExpensesRecord.serializer,
        ExpensesRecord((e) => e
          ..uid = uid
          ..date = date
          ..description = description
          ..amount = amount));
