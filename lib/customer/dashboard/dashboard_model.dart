import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (create schedule one click)] action in Container widget.
  ApiCallResponse? apiResultbro;
  // Stores action output result for [Backend Call - API (logout customer)] action in keluar widget.
  ApiCallResponse? logout;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
