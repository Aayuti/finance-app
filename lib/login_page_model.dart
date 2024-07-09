import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'Auth/loginAuth.dart';

class LoginPageModel extends State<LoginScreen> {
  FocusNode? emailAddressLoginFocusNode;
  TextEditingController? emailAddressLoginController;
  String? Function(BuildContext, String?)? emailAddressLoginControllerValidator;
  
  FocusNode? passwordLoginFocusNode;
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginControllerValidator;

//FocusNode? confirmPasswordFocusNode;
//TextEditingController? confirmPasswordController;
//late bool confirmPasswordVisibility;
//String? Function(BuildContext, String?)? confirmPasswordControllerValidator;

// void initState(BuildContext context) {
  //   passwordLoginVisibility = false;
  // }

  void dispose() {
    emailAddressLoginFocusNode?.dispose();
    emailAddressLoginController?.dispose();
    passwordLoginFocusNode?.dispose();
    passwordLoginController?.dispose();
    //super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
