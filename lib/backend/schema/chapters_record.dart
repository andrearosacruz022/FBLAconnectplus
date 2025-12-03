import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChaptersRecord extends FirestoreRecord {
  ChaptersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "chapterName" field.
  String? _chapterName;
  String get chapterName => _chapterName ?? '';
  bool hasChapterName() => _chapterName != null;

  // "facebook" field.
  String? _facebook;
  String get facebook => _facebook ?? '';
  bool hasFacebook() => _facebook != null;

  // "instagram" field.
  String? _instagram;
  String get instagram => _instagram ?? '';
  bool hasInstagram() => _instagram != null;

  // "tiktok" field.
  String? _tiktok;
  String get tiktok => _tiktok ?? '';
  bool hasTiktok() => _tiktok != null;

  // "YouTube" field.
  String? _youTube;
  String get youTube => _youTube ?? '';
  bool hasYouTube() => _youTube != null;

  void _initializeFields() {
    _chapterName = snapshotData['chapterName'] as String?;
    _facebook = snapshotData['facebook'] as String?;
    _instagram = snapshotData['instagram'] as String?;
    _tiktok = snapshotData['tiktok'] as String?;
    _youTube = snapshotData['YouTube'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chapters');

  static Stream<ChaptersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChaptersRecord.fromSnapshot(s));

  static Future<ChaptersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChaptersRecord.fromSnapshot(s));

  static ChaptersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChaptersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChaptersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChaptersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChaptersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChaptersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChaptersRecordData({
  String? chapterName,
  String? facebook,
  String? instagram,
  String? tiktok,
  String? youTube,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'chapterName': chapterName,
      'facebook': facebook,
      'instagram': instagram,
      'tiktok': tiktok,
      'YouTube': youTube,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChaptersRecordDocumentEquality implements Equality<ChaptersRecord> {
  const ChaptersRecordDocumentEquality();

  @override
  bool equals(ChaptersRecord? e1, ChaptersRecord? e2) {
    return e1?.chapterName == e2?.chapterName &&
        e1?.facebook == e2?.facebook &&
        e1?.instagram == e2?.instagram &&
        e1?.tiktok == e2?.tiktok &&
        e1?.youTube == e2?.youTube;
  }

  @override
  int hash(ChaptersRecord? e) => const ListEquality()
      .hash([e?.chapterName, e?.facebook, e?.instagram, e?.tiktok, e?.youTube]);

  @override
  bool isValidKey(Object? o) => o is ChaptersRecord;
}
