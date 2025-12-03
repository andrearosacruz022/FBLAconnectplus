import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sign_up_page_widget.dart' show SignUpPageWidget;
import 'package:flutter/material.dart';

class SignUpPageModel extends FlutterFlowModel<SignUpPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey4 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for NameTextField widget.
  FocusNode? nameTextFieldFocusNode;
  TextEditingController? nameTextFieldTextController;
  String? Function(BuildContext, String?)? nameTextFieldTextControllerValidator;
  String? _nameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '96zeimxs' /* Name is required */,
      );
    }

    return null;
  }

  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  String? _emailTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '6wy87szl' /* Email is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'ku9mb7gz' /* Email must contain  @ and .com */,
      );
    }
    return null;
  }

  // State field(s) for PasswordTextField widget.
  FocusNode? passwordTextFieldFocusNode;
  TextEditingController? passwordTextFieldTextController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextControllerValidator;
  String? _passwordTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8v604zmk' /* Password is required */,
      );
    }

    if (val.length < 8) {
      return FFLocalizations.of(context).getText(
        '4nkel9md' /* Minimum 8 characters, one uppe... */,
      );
    }

    if (!RegExp('^(?=.*[A-Z])(?=.*\\d).{8,}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '1mkh5p1f' /* Password must contain at least... */,
      );
    }
    return null;
  }

  // State field(s) for ChapterTextField widget.
  FocusNode? chapterTextFieldFocusNode;
  TextEditingController? chapterTextFieldTextController;
  String? Function(BuildContext, String?)?
      chapterTextFieldTextControllerValidator;
  String? _chapterTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ualcdlo1' /* Chapter is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;

  @override
  void initState(BuildContext context) {
    nameTextFieldTextControllerValidator =
        _nameTextFieldTextControllerValidator;
    emailTextFieldTextControllerValidator =
        _emailTextFieldTextControllerValidator;
    passwordTextFieldVisibility = false;
    passwordTextFieldTextControllerValidator =
        _passwordTextFieldTextControllerValidator;
    chapterTextFieldTextControllerValidator =
        _chapterTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    nameTextFieldFocusNode?.dispose();
    nameTextFieldTextController?.dispose();

    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    passwordTextFieldFocusNode?.dispose();
    passwordTextFieldTextController?.dispose();

    chapterTextFieldFocusNode?.dispose();
    chapterTextFieldTextController?.dispose();
  }
}
