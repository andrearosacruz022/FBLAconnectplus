import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CalendarRecord extends FirestoreRecord {
  CalendarRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "event_date" field.
  DateTime? _eventDate;
  DateTime? get eventDate => _eventDate;
  bool hasEventDate() => _eventDate != null;

  // "event_name" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "event_location" field.
  String? _eventLocation;
  String get eventLocation => _eventLocation ?? '';
  bool hasEventLocation() => _eventLocation != null;

  // "event_description" field.
  String? _eventDescription;
  String get eventDescription => _eventDescription ?? '';
  bool hasEventDescription() => _eventDescription != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "reminder" field.
  int? _reminder;
  int get reminder => _reminder ?? 0;
  bool hasReminder() => _reminder != null;

  void _initializeFields() {
    _eventDate = snapshotData['event_date'] as DateTime?;
    _eventName = snapshotData['event_name'] as String?;
    _eventLocation = snapshotData['event_location'] as String?;
    _eventDescription = snapshotData['event_description'] as String?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _reminder = castToType<int>(snapshotData['reminder']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('calendar');

  static Stream<CalendarRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CalendarRecord.fromSnapshot(s));

  static Future<CalendarRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CalendarRecord.fromSnapshot(s));

  static CalendarRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CalendarRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CalendarRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CalendarRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CalendarRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CalendarRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCalendarRecordData({
  DateTime? eventDate,
  String? eventName,
  String? eventLocation,
  String? eventDescription,
  DocumentReference? userRef,
  int? reminder,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'event_date': eventDate,
      'event_name': eventName,
      'event_location': eventLocation,
      'event_description': eventDescription,
      'user_ref': userRef,
      'reminder': reminder,
    }.withoutNulls,
  );

  return firestoreData;
}

class CalendarRecordDocumentEquality implements Equality<CalendarRecord> {
  const CalendarRecordDocumentEquality();

  @override
  bool equals(CalendarRecord? e1, CalendarRecord? e2) {
    return e1?.eventDate == e2?.eventDate &&
        e1?.eventName == e2?.eventName &&
        e1?.eventLocation == e2?.eventLocation &&
        e1?.eventDescription == e2?.eventDescription &&
        e1?.userRef == e2?.userRef &&
        e1?.reminder == e2?.reminder;
  }

  @override
  int hash(CalendarRecord? e) => const ListEquality().hash([
        e?.eventDate,
        e?.eventName,
        e?.eventLocation,
        e?.eventDescription,
        e?.userRef,
        e?.reminder
      ]);

  @override
  bool isValidKey(Object? o) => o is CalendarRecord;
}
