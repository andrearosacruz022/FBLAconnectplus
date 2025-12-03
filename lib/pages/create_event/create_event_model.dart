import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'create_event_widget.dart' show CreateEventWidget;
import 'package:flutter/material.dart';

class CreateEventModel extends FlutterFlowModel<CreateEventWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EventName widget.
  FocusNode? eventNameFocusNode;
  TextEditingController? eventNameTextController;
  String? Function(BuildContext, String?)? eventNameTextControllerValidator;
  // State field(s) for Location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for ReminderDropDown widget.
  int? reminderDropDownValue;
  FormFieldController<int>? reminderDropDownValueController;
  // Stores action output result for [Backend Call - Create Document] action in CreateEventButton widget.
  CalendarRecord? newEventRef;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    eventNameFocusNode?.dispose();
    eventNameTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
