import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
// import '/Auth/LoginScreen.dart' show LoginScreen;
import 'Auth/loginAuth.dart';


//Auth
class login_page_model extends State<LoginScreen> {
  //  State fields for stateful widgets in this page.
  // State field(s) for emailAddress-login widget.
  FocusNode? emailAddressLoginFocusNode;
  TextEditingController? emailAddressLoginController;
  String? Function(BuildContext, String?)? emailAddressLoginControllerValidator;
  // State field(s) for password-login widget.
  FocusNode? passwordLoginFocusNode;
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginControllerValidator;

  /// Initialization and disposal methods.

  // void initState(BuildContext context) {
  //   passwordLoginVisibility = false;
  // }

  void dispose() {
    emailAddressLoginFocusNode?.dispose();
    emailAddressLoginController?.dispose();

    passwordLoginFocusNode?.dispose();
    passwordLoginController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
