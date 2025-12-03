import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'resources_widget.dart' show ResourcesWidget;
import 'package:flutter/material.dart';

class ResourcesModel extends FlutterFlowModel<ResourcesWidget> {
  ///  Local state fields for this page.

  String? searchText1 = '';

  String selectedCategory1 = 'All';

  ///  State fields for stateful widgets in this page.

  // State field(s) for SearchField widget.
  FocusNode? searchFieldFocusNode;
  TextEditingController? searchFieldTextController;
  String? Function(BuildContext, String?)? searchFieldTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchFieldFocusNode?.dispose();
    searchFieldTextController?.dispose();
  }
}
