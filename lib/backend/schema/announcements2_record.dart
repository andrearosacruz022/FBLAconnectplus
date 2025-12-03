import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Announcements2Record extends FirestoreRecord {
  Announcements2Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "posted_date" field.
  DateTime? _postedDate;
  DateTime? get postedDate => _postedDate;
  bool hasPostedDate() => _postedDate != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "liked_by" field.
  List<DocumentReference>? _likedBy;
  List<DocumentReference> get likedBy => _likedBy ?? const [];
  bool hasLikedBy() => _likedBy != null;

  // "content2" field.
  String? _content2;
  String get content2 => _content2 ?? '';
  bool hasContent2() => _content2 != null;

  void _initializeFields() {
    _postedDate = snapshotData['posted_date'] as DateTime?;
    _title = snapshotData['title'] as String?;
    _content = snapshotData['content'] as String?;
    _link = snapshotData['link'] as String?;
    _likedBy = getDataList(snapshotData['liked_by']);
    _content2 = snapshotData['content2'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('announcements2');

  static Stream<Announcements2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Announcements2Record.fromSnapshot(s));

  static Future<Announcements2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Announcements2Record.fromSnapshot(s));

  static Announcements2Record fromSnapshot(DocumentSnapshot snapshot) =>
      Announcements2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Announcements2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Announcements2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Announcements2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Announcements2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnnouncements2RecordData({
  DateTime? postedDate,
  String? title,
  String? content,
  String? link,
  String? content2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'posted_date': postedDate,
      'title': title,
      'content': content,
      'link': link,
      'content2': content2,
    }.withoutNulls,
  );

  return firestoreData;
}

class Announcements2RecordDocumentEquality
    implements Equality<Announcements2Record> {
  const Announcements2RecordDocumentEquality();

  @override
  bool equals(Announcements2Record? e1, Announcements2Record? e2) {
    const listEquality = ListEquality();
    return e1?.postedDate == e2?.postedDate &&
        e1?.title == e2?.title &&
        e1?.content == e2?.content &&
        e1?.link == e2?.link &&
        listEquality.equals(e1?.likedBy, e2?.likedBy) &&
        e1?.content2 == e2?.content2;
  }

  @override
  int hash(Announcements2Record? e) => const ListEquality().hash(
      [e?.postedDate, e?.title, e?.content, e?.link, e?.likedBy, e?.content2]);

  @override
  bool isValidKey(Object? o) => o is Announcements2Record;
}
