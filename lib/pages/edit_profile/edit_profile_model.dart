import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChangeNameTextField widget.
  FocusNode? changeNameTextFieldFocusNode;
  TextEditingController? changeNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      changeNameTextFieldTextControllerValidator;
  // State field(s) for ChangeBioTextField widget.
  FocusNode? changeBioTextFieldFocusNode;
  TextEditingController? changeBioTextFieldTextController;
  String? Function(BuildContext, String?)?
      changeBioTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    changeNameTextFieldFocusNode?.dispose();
    changeNameTextFieldTextController?.dispose();

    changeBioTextFieldFocusNode?.dispose();
    changeBioTextFieldTextController?.dispose();
  }
}
