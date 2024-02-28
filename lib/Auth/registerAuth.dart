import 'package:finance_app/screens/DefaultPage.dart';
import 'package:finance_app/styles/AnimationInfo.dart' as effect;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '../styles/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/register_page_model.dart';

class RegisterAccountWidget extends StatefulWidget {
  const RegisterAccountWidget({super.key});

  @override
  State<RegisterAccountWidget> createState() => _RegisterAccountWidgetState();
}

class _RegisterAccountWidgetState extends State<RegisterAccountWidget>
    with TickerProviderStateMixin {
  late RegisterAccountModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': effect.AnimationInfo(
      trigger: effect.AnimationTrigger.onPageLoad,
      effects: [
        effect.MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0, 0),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation': effect.AnimationInfo(
      trigger: effect.AnimationTrigger.onPageLoad,
      effects: [
        effect.MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0, 0),
          end: const Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = RegisterAccountModel(context);

    _model.emailAddressController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordCreateController ??= TextEditingController();
    _model.passwordCreateFocusNode ??= FocusNode();

    _model.passwordConfirmController ??= TextEditingController();
    _model.passwordConfirmFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFF181818),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 1,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24, 54, 0, 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                if (!(Theme.of(context).brightness ==
                                    Brightness.dark))
                                  Image.asset(
                                    'assets\\images\\Color logo - no background.png',
                                    width: 70,
                                    height: 30,
                                    fit: BoxFit.cover,
                                  ),
                                if (Theme.of(context).brightness ==
                                    Brightness.dark)
                                  Image.asset(
                                    'assets\\images\\Color logo - no background.png',
                                    width: 70,
                                    height: 30,
                                    fit: BoxFit.cover,
                                  ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24, 0, 24, 0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {},
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Center(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Get Started',
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.white,
                                                fontFamily: 'Lexend'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Create your account below',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xFFF1BCEF)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 20, 0, 0),
                                      child: TextFormField(
                                        // controller:
                                        //     _model.emailAddressController,
                                        // focusNode: _model.emailAddressFocusNode,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Name',
                                          labelStyle: const TextStyle(
                                              fontSize: 16,
                                              color: Color.fromARGB(
                                                  255, 116, 114, 114)),
                                          hintText: 'Enter your name... ',
                                          hintStyle: const TextStyle(
                                            fontSize: 16,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFFF1BCEF),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 200, 12, 12),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 200, 12, 12),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Colors.black,
                                          contentPadding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(20, 24, 20, 24),
                                        ),
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(
                                              220, 255, 255, 255),
                                        ),
                                        // validator: (value) => _model
                                        //         .emailAddressControllerValidator!(
                                        //     context, value),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 20, 0, 0),
                                      child: TextFormField(
                                        // controller:
                                        //     _model.emailAddressController,
                                        // focusNode: _model.emailAddressFocusNode,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Mobile no.',
                                          labelStyle: const TextStyle(
                                              fontSize: 16,
                                              color: Color.fromARGB(
                                                  255, 116, 114, 114)),
                                          hintText: 'Enter your mobile no... ',
                                          hintStyle: const TextStyle(
                                            fontSize: 16,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFFF1BCEF),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 200, 12, 12),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 200, 12, 12),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Colors.black,
                                          contentPadding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(20, 24, 20, 24),
                                        ),
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(
                                              220, 255, 255, 255),
                                        ),
                                        // validator: (value) => _model
                                        //         .emailAddressControllerValidator!(
                                        //     context, value),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 20, 0, 0),
                                      child: TextFormField(
                                        controller:
                                            _model.emailAddressController,
                                        focusNode: _model.emailAddressFocusNode,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: ' Email Address',
                                          labelStyle: const TextStyle(
                                              fontSize: 16,
                                              color: Color.fromARGB(
                                                  255, 116, 114, 114)),
                                          hintText: 'Enter your email... ',
                                          hintStyle: const TextStyle(
                                            fontSize: 16,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFFF1BCEF),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 200, 12, 12),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 200, 12, 12),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Colors.black,
                                          contentPadding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(20, 24, 20, 24),
                                        ),
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(
                                              220, 255, 255, 255),
                                        ),
                                        validator: (value) => _model
                                                .emailAddressControllerValidator!(
                                            context, value),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 12, 0, 0),
                                      child: TextFormField(
                                        controller:
                                            _model.passwordCreateController,
                                        focusNode:
                                            _model.passwordCreateFocusNode,
                                        textInputAction: TextInputAction.done,
                                        obscureText:
                                            !_model.passwordCreateVisibility,
                                        decoration: InputDecoration(
                                          labelText: 'Password',
                                          labelStyle: const TextStyle(
                                              fontSize: 16,
                                              color: Color.fromARGB(
                                                  255, 116, 114, 114)),
                                          alignLabelWithHint: true,
                                          hintText: 'Enter your password... ',
                                          hintStyle: const TextStyle(
                                            fontSize: 16,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFFF1BCEF),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Colors.black,
                                          contentPadding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(20, 24, 20, 24),
                                          suffixIcon: InkWell(
                                            onTap: () => setState(
                                              () => _model
                                                      .passwordCreateVisibility =
                                                  !_model
                                                      .passwordCreateVisibility,
                                            ),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: Icon(
                                              _model.passwordCreateVisibility
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(
                                              220, 255, 255, 255),
                                        ),
                                        maxLength: 10,
                                        validator: (value) => _model
                                                .passwordCreateControllerValidator!(
                                            context, value),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 12, 0, 0),
                                      child: TextFormField(
                                        controller:
                                            _model.passwordConfirmController,
                                        focusNode:
                                            _model.passwordConfirmFocusNode,
                                        obscureText:
                                            !_model.passwordConfirmVisibility,
                                        decoration: InputDecoration(
                                          labelText: 'Confirm Password',
                                          labelStyle: const TextStyle(
                                              fontSize: 16,
                                              color: Color.fromARGB(
                                                  255, 116, 114, 114)),
                                          hintText: 'Enter your password...',
                                          hintStyle:
                                              const TextStyle(fontSize: 16),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFFF1BCEF),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Colors.black,
                                          contentPadding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(20, 24, 20, 24),
                                          suffixIcon: InkWell(
                                            onTap: () => setState(
                                              () => _model
                                                      .passwordConfirmVisibility =
                                                  !_model
                                                      .passwordConfirmVisibility,
                                            ),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: Icon(
                                              _model.passwordConfirmVisibility
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(
                                              220, 255, 255, 255),
                                        ),
                                        validator: (value) => _model
                                                .passwordConfirmControllerValidator!(
                                            context, value),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 24, 0, 24),
                                      child: ElevatedButton(
                                        onPressed: () async {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              backgroundColor:
                                                  Color(0xFF181818),
                                              content: Text(
                                                'Successfully Registered',
                                                style: TextStyle(
                                                    color: Color(0xFFF1BCEF)),
                                              ),
                                            ),
                                          );
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const DefaultPage()));
                                          /*GoRouter.of(context).prepareAuthEvent();
                                          final user = await authManager
                                              .signInWithGoogle(context);
                                          if (user == null) {
                                            return;
                                          }
                              
                                          await RegistrationsDetailsRecord
                                              .collection
                                              .doc()
                                              .set(
                                                createRegistrationsDetailsRecordData(
                                                  email: '',
                                                  password: '',
                                                ),
                                              );
                              
                                          if (Navigator.of(context).canPop()) {
                                            Navigator.of(context).pop();
                                          }
                              
                                          Navigator.of(context).pushNamed(
                                            'loginPage',
                                            arguments: <String, dynamic>{
                                              kTransitionInfoKey: TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.rightToLeft,
                                                duration:
                                                    const Duration(milliseconds: 2),
                                              ),
                                            },
                                          );*/
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFFF1BCEF),
                                          fixedSize: const Size(150,
                                              40), // Set width and height here
                                          textStyle: const TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Lexend',
                                            color:
                                                Color.fromARGB(255, 40, 40, 40),
                                          ),
                                          elevation: 3,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            side: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                          ),
                                          padding: EdgeInsets.zero,
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                        ),
                                        child: const Text(
                                          'Create Account',
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.8,
                                          height: 44,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              Navigator.of(context).pushNamed(
                                                './loginAuth',
                                                arguments: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType
                                                            .leftToRight,
                                                    duration: const Duration(
                                                        milliseconds: 220),
                                                  ),
                                                },
                                              );
                                            },
                                            child: const Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.arrow_back_rounded,
                                                  color: Color(0xFFF1BCEF),
                                                  size: 24,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(4, 0, 24, 0),
                                                  child: Text(
                                                    'Login',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Lexend',
                                                        color:
                                                            Color(0xFFF1BCEF)),
                                                  ),
                                                ),
                                                Text(
                                                  'Already have an account?',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
