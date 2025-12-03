import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _searchText = '';
  String get searchText => _searchText;
  set searchText(String value) {
    _searchText = value;
  }

  String _selectedCategory = 'All';
  String get selectedCategory => _selectedCategory;
  set selectedCategory(String value) {
    _selectedCategory = value;
  }

  double _fontScale = 2.0;
  double get fontScale => _fontScale;
  set fontScale(double value) {
    _fontScale = value;
  }

  String _language = 'English';
  String get language => _language;
  set language(String value) {
    _language = value;
  }

  String _themeMode = 'Light';
  String get themeMode => _themeMode;
  set themeMode(String value) {
    _themeMode = value;
  }
}
