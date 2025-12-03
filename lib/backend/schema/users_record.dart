import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Chapter" field.
  String? _chapter;
  String get chapter => _chapter ?? '';
  bool hasChapter() => _chapter != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "fcm_tokens" field.
  List<String>? _fcmTokens;
  List<String> get fcmTokens => _fcmTokens ?? const [];
  bool hasFcmTokens() => _fcmTokens != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "font_scale" field.
  String? _fontScale;
  String get fontScale => _fontScale ?? '';
  bool hasFontScale() => _fontScale != null;

  // "language" field.
  String? _language;
  String get language => _language ?? '';
  bool hasLanguage() => _language != null;

  // "notifications_push" field.
  bool? _notificationsPush;
  bool get notificationsPush => _notificationsPush ?? false;
  bool hasNotificationsPush() => _notificationsPush != null;

  // "theme_mode" field.
  String? _themeMode;
  String get themeMode => _themeMode ?? '';
  bool hasThemeMode() => _themeMode != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _name = snapshotData['Name'] as String?;
    _chapter = snapshotData['Chapter'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _fcmTokens = getDataList(snapshotData['fcm_tokens']);
    _bio = snapshotData['bio'] as String?;
    _fontScale = snapshotData['font_scale'] as String?;
    _language = snapshotData['language'] as String?;
    _notificationsPush = snapshotData['notifications_push'] as bool?;
    _themeMode = snapshotData['theme_mode'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _password = snapshotData['password'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? uid,
  DateTime? createdTime,
  String? name,
  String? chapter,
  String? displayName,
  String? bio,
  String? fontScale,
  String? language,
  bool? notificationsPush,
  String? themeMode,
  String? photoUrl,
  String? phoneNumber,
  String? password,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'uid': uid,
      'created_time': createdTime,
      'Name': name,
      'Chapter': chapter,
      'display_name': displayName,
      'bio': bio,
      'font_scale': fontScale,
      'language': language,
      'notifications_push': notificationsPush,
      'theme_mode': themeMode,
      'photo_url': photoUrl,
      'phone_number': phoneNumber,
      'password': password,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.name == e2?.name &&
        e1?.chapter == e2?.chapter &&
        e1?.displayName == e2?.displayName &&
        listEquality.equals(e1?.fcmTokens, e2?.fcmTokens) &&
        e1?.bio == e2?.bio &&
        e1?.fontScale == e2?.fontScale &&
        e1?.language == e2?.language &&
        e1?.notificationsPush == e2?.notificationsPush &&
        e1?.themeMode == e2?.themeMode &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.password == e2?.password;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.uid,
        e?.createdTime,
        e?.name,
        e?.chapter,
        e?.displayName,
        e?.fcmTokens,
        e?.bio,
        e?.fontScale,
        e?.language,
        e?.notificationsPush,
        e?.themeMode,
        e?.photoUrl,
        e?.phoneNumber,
        e?.password
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
