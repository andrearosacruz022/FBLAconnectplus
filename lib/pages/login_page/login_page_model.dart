import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for LoginEmailTextField widget.
  FocusNode? loginEmailTextFieldFocusNode;
  TextEditingController? loginEmailTextFieldTextController;
  String? Function(BuildContext, String?)?
      loginEmailTextFieldTextControllerValidator;
  String? _loginEmailTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'gl5bu1vy' /* Email is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for LoginPasswordTextField widget.
  FocusNode? loginPasswordTextFieldFocusNode;
  TextEditingController? loginPasswordTextFieldTextController;
  late bool loginPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      loginPasswordTextFieldTextControllerValidator;
  String? _loginPasswordTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'f38cf3h7' /* Password is required */,
      );
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    if (!RegExp('^(/=.*[A-Z])(?=.*\\d).+\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    loginEmailTextFieldTextControllerValidator =
        _loginEmailTextFieldTextControllerValidator;
    loginPasswordTextFieldVisibility = false;
    loginPasswordTextFieldTextControllerValidator =
        _loginPasswordTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    loginEmailTextFieldFocusNode?.dispose();
    loginEmailTextFieldTextController?.dispose();

    loginPasswordTextFieldFocusNode?.dispose();
    loginPasswordTextFieldTextController?.dispose();
  }
}
