import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResourcesRecord extends FirestoreRecord {
  ResourcesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "document_description" field.
  String? _documentDescription;
  String get documentDescription => _documentDescription ?? '';
  bool hasDocumentDescription() => _documentDescription != null;

  // "document_title" field.
  String? _documentTitle;
  String get documentTitle => _documentTitle ?? '';
  bool hasDocumentTitle() => _documentTitle != null;

  // "document_url" field.
  String? _documentUrl;
  String get documentUrl => _documentUrl ?? '';
  bool hasDocumentUrl() => _documentUrl != null;

  // "category" field.
  List<String>? _category;
  List<String> get category => _category ?? const [];
  bool hasCategory() => _category != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  bool hasTags() => _tags != null;

  void _initializeFields() {
    _documentDescription = snapshotData['document_description'] as String?;
    _documentTitle = snapshotData['document_title'] as String?;
    _documentUrl = snapshotData['document_url'] as String?;
    _category = getDataList(snapshotData['category']);
    _tags = getDataList(snapshotData['tags']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('resources');

  static Stream<ResourcesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResourcesRecord.fromSnapshot(s));

  static Future<ResourcesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResourcesRecord.fromSnapshot(s));

  static ResourcesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResourcesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResourcesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResourcesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResourcesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResourcesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResourcesRecordData({
  String? documentDescription,
  String? documentTitle,
  String? documentUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'document_description': documentDescription,
      'document_title': documentTitle,
      'document_url': documentUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResourcesRecordDocumentEquality implements Equality<ResourcesRecord> {
  const ResourcesRecordDocumentEquality();

  @override
  bool equals(ResourcesRecord? e1, ResourcesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.documentDescription == e2?.documentDescription &&
        e1?.documentTitle == e2?.documentTitle &&
        e1?.documentUrl == e2?.documentUrl &&
        listEquality.equals(e1?.category, e2?.category) &&
        listEquality.equals(e1?.tags, e2?.tags);
  }

  @override
  int hash(ResourcesRecord? e) => const ListEquality().hash([
        e?.documentDescription,
        e?.documentTitle,
        e?.documentUrl,
        e?.category,
        e?.tags
      ]);

  @override
  bool isValidKey(Object? o) => o is ResourcesRecord;
}
