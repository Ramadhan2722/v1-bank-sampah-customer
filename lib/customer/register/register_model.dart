import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for nik widget.
  FocusNode? nikFocusNode;
  TextEditingController? nikTextController;
  String? Function(BuildContext, String?)? nikTextControllerValidator;
  String? _nikTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Wajib disi';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Wajib diisi';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  String? _usernameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Wajib diisi';
    }

    if (val.length < 8) {
      return 'Kata sandi minimal 8 karakter';
    }

    return null;
  }

  // State field(s) for confirmpassword widget.
  FocusNode? confirmpasswordFocusNode;
  TextEditingController? confirmpasswordTextController;
  late bool confirmpasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmpasswordTextControllerValidator;
  String? _confirmpasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Wajib diisi';
    }

    if (val.length < 8) {
      return 'Kata sandi minimal 8 karakter';
    }

    return null;
  }

  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  String? _addressTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Wajib diisi';
    }

    return null;
  }

  // State field(s) for nowa widget.
  FocusNode? nowaFocusNode;
  TextEditingController? nowaTextController;
  String? Function(BuildContext, String?)? nowaTextControllerValidator;
  String? _nowaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Wajib diisi';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (register customer)] action in Button widget.
  ApiCallResponse? registercustomer;

  @override
  void initState(BuildContext context) {
    nikTextControllerValidator = _nikTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    usernameTextControllerValidator = _usernameTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    confirmpasswordVisibility = false;
    confirmpasswordTextControllerValidator =
        _confirmpasswordTextControllerValidator;
    addressTextControllerValidator = _addressTextControllerValidator;
    nowaTextControllerValidator = _nowaTextControllerValidator;
  }

  @override
  void dispose() {
    nikFocusNode?.dispose();
    nikTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    confirmpasswordFocusNode?.dispose();
    confirmpasswordTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();

    nowaFocusNode?.dispose();
    nowaTextController?.dispose();
  }
}
