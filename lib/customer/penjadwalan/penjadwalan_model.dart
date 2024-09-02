import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'penjadwalan_widget.dart' show PenjadwalanWidget;
import 'package:flutter/material.dart';

class PenjadwalanModel extends FlutterFlowModel<PenjadwalanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (create schedule)] action in Button widget.
  ApiCallResponse? createschedule;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
