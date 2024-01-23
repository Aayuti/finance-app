import 'package:flutter/material.dart';
// import 'home_page.dart';
import 'package:provider/provider.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // late HomePageModel _model;
  bool isiOS = Platform.isIOS;
  final babyPink = const Color(0xFFF1CBEF);
  final black = const Color(0xFF181818);
  final white = const Color(0xFFF1F5F7);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  _launchURL() async {
    try {
      Uri url = Uri.parse('https://xaviers.ac/');
      await launchUrl(url);
    } catch (e) {
      print('Error launching URL: $e');
    }
  }

  // @override
  // void initState() {
  //   super.initState();
  //   _model = Provider.of<HomePageModel>(context, listen: false);
  // }

  @override
  void dispose() {
    // _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Replace the following line with the actual widget or layout for your splash screen
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        if (FocusScope.of(context).hasPrimaryFocus) {
          FocusScope.of(context).unfocus();
        } else {
          FocusScope.of(context).requestFocus(FocusNode());
        }
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: black,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Align(
                alignment: AlignmentDirectional(0, -1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                  child: Text(
                    'Expense Tracker',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color(0xFFF1F5F7),
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              /* if (responsiveVisibility(
                context: context,
                phone: false,
              ))
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Button',
                    options: FFButtonOptions(
                      height: 55,
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ), */
              Flexible(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 350, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(350, 50),
                      backgroundColor: babyPink,
                      // textStyle: const TextStyle(
                      //   fontFamily: 'Ubuntu',
                      //   color: Colors.black,
                      //   fontSize: 22,
                      //   letterSpacing: 3,
                      //   fontWeight: FontWeight.w600,
                      // ),
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Ubuntu',
                        fontSize: 22,
                        letterSpacing: 3,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: InkWell(
                  onTap: _launchURL,
                  child: const Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Work Sans',
                      color: Color(0xFFF1F5F7),
                      fontSize: 20,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
