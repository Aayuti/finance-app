// import '/auth/firebase_auth/auth_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:finance_app/styles/app_style.dart';
import 'package:finance_app/login_page_model.dart' as model;
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  _launchSite() async {
    Uri url = Uri.parse('https://www.google.com');
    if (await launchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.mainColor,
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height * 1,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 70, 24, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Align(
                                alignment: AlignmentDirectional(0, -1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 50),
                                  child: Text(
                                    'Welcome' /* Welcome */,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'mainText',
                                      color: Color(0xFFF1CBEF),
                                      letterSpacing: 3,
                                      fontSize: 34,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Text(
                              'Login to access your account',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontSize: 18,
                                color: Color(0xFFF1CBEF),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: 350,
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "email",
                        // border: InputBorder.none,
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 109, 105, 109),
                            fontStyle: FontStyle.italic,
                            fontSize: 16),
                        fillColor: const Color(0xFFF1CBEF),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFFF1CBEF), width: 1.0),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 171, 23, 23),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 20, 223, 223),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsetsDirectional.fromSTEB(
                            20, 24, 20, 24),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: 350,
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "password",
                        // border: InputBorder.none,
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 109, 105, 109),
                            fontStyle: FontStyle.italic,
                            fontSize: 16),
                        fillColor: const Color(0xfff1cbef),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFFF1CBEF), width: 1.0),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 171, 23, 23),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 20, 223, 223),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsetsDirectional.fromSTEB(
                            20, 24, 20, 24),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20, 54, 20, 44),
                      child: InkWell(
                        onTap: _launchSite,
                        child: const Text('Forgot Password?',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 109, 105, 109),
                              decoration: TextDecoration.underline,
                            )),
                      ),
                    ),
                    //   onPressed: () async {
                    //     context.pushNamed('forgotPassword');
                    //   },
                    //   text: FFLocalizations.of(context).getText(
                    //     'm2xyjvuf' /* Forgot Password? */,
                    //   ),
                    //   options: FFButtonOptions(
                    //     width: 170,
                    //     height: 40,
                    //     padding: EdgeInsetsDirectional.fromSTEB(
                    //         0, 0, 0, 0),
                    //     iconPadding: EdgeInsetsDirectional.fromSTEB(
                    //         0, 0, 0, 0),
                    //     color: Color(0x001A1F24),
                    //     textStyle:
                    //         FlutterFlowTheme.of(context).bodySmall,
                    //     elevation: 0,
                    //     borderSide: BorderSide(
                    //       color: Colors.transparent,
                    //       width: 1,
                    //     ),
                    //     borderRadius: BorderRadius.circular(8),
                    //   ),
                    // ),

                    ElevatedButton(
                      onPressed: () async {
                        // Your button logic here...
                        print('Button was pressed');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFFF1CBEF), // Set your button color
                        foregroundColor:
                            const Color(0xFF181818), // Set your text color
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 9, horizontal: 20),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 18,
                        ),
                      ),
                    ),

                    // FFButtonWidget(
                    //   onPressed: () async {
                    //     GoRouter.of(context).prepareAuthEvent();
                    //     final user = await authManager.signInWithEmail(
                    //       context,
                    //       _model.emailAddressLoginController.text,
                    //       _model.passwordLoginController.text,
                    //     );
                    //     if (user == null) {
                    //       return;
                    //     }
                    //     context.goNamedAuth('MY_Card', context.mounted);
                    //   },
                    //   text: FFLocalizations.of(context).getText(
                    //     'qbmoi1av' /* Login */,
                    //   ),
                    //   options: FFButtonOptions(
                    //     width: 120,
                    //     height: 50,
                    //     padding:
                    //         EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    //     iconPadding:
                    //         EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    //     color: Color(0xFFF1CBEF),
                    //     textStyle: FlutterFlowTheme.of(context)
                    //         .titleSmall
                    //         .override(
                    //           fontFamily: 'Lexend',
                    //           color: Color(0xFF181818),
                    //         ),
                    //     elevation: 3,
                    //     borderSide: BorderSide(
                    //       color: Colors.transparent,
                    //       width: 1,
                    //     ),
                    //     borderRadius: BorderRadius.circular(30),
                    //   ),
                    // ),
                  ], //children
                ),
                GestureDetector(
                  onTap: () async {
                    Navigator.of(context).pushNamed('registerAccount');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 44,
                    // decoration: BoxDecoration(
                    //   color: Colors.grey, // Set your background color
                    //   borderRadius: BorderRadius.circular(8),
                    // ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily:
                                'Roboto', // Replace with your font family
                            color: Color.fromARGB(
                                255, 253, 250, 250), // Set your text color
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            'Create',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily:
                                  'Lexend', // Replace with your font family
                              color: Color.fromARGB(
                                  255, 234, 227, 227), // Set your text color
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: Color(0xFFF1CBEF), // Set your icon color
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
