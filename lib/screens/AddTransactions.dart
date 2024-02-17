import 'package:finance_app/styles/AnimationInfo.dart';
import 'package:flutter/gestures.dart';

// import '/auth/firebase_auth/auth_util.dart';
// import '/backend/backend.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../models/BudgetList.dart';

import '../models/add_transactions_model.dart';
export '../models/add_transactions_model.dart';

class TransactionADDWidget extends StatefulWidget {
  const TransactionADDWidget({super.key});

  @override
  State<TransactionADDWidget> createState() => _TransactionADDWidgetState();
}

class _TransactionADDWidgetState extends State<TransactionADDWidget>
    with TickerProviderStateMixin {
  // late TransactionADDModel _model;
  String currentUserReference = 'user123';

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textFieldOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 40),
          end: Offset(0, 0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1, 0),
          end: Offset(1, 1),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 170.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 170.ms,
          duration: 600.ms,
          begin: Offset(0, 80),
          end: Offset(0, 0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 170.ms,
          duration: 600.ms,
          begin: Offset(1, 0),
          end: Offset(1, 1),
        ),
      ],
    ),
    'dropDownOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: Offset(0, 100),
          end: Offset(0, 0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: Offset(1, 0),
          end: Offset(1, 1),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 230.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 230.ms,
          duration: 600.ms,
          begin: Offset(0, 120),
          end: Offset(0, 0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 230.ms,
          duration: 600.ms,
          begin: Offset(1, 0),
          end: Offset(1, 1),
        ),
      ],
    ),
  };

  // @override
  // void initState() {
  //   super.initState();
  //   _model = TransactionADDModel(context, () => TransactionADDModel());

  //   _model.textController1 ??= TextEditingController();
  //   _model.textFieldFocusNode ??= FocusNode();

  //   _model.spentAtController ??= TextEditingController();
  //   _model.spentAtFocusNode ??= FocusNode();

  //   _model.reasonController ??= TextEditingController();
  //   _model.reasonFocusNode ??= FocusNode();

  //   setupAnimations(
  //     animationsMap.values.where((anim) =>
  //         anim.trigger == AnimationTrigger.onActionTrigger ||
  //         !anim.applyInitialState),
  //     this,
  //   );
  // }

  // @override
  // void dispose() {
  //   _model.dispose();

  //   super.dispose();
  // }

  Stream<List<BudgetListRecord>> queryBudgetListRecord(
      {required String budgetUser}) {
    // Your implementation to fetch budget records goes here
    // For example, if you're using Firebase Firestore:
    // return FirebaseFirestore.instance.collection('budgets').snapshots().map((snapshot) =>
    //   snapshot.docs.map((doc) => BudgetListRecord.fromSnapshot(doc)).toList()
    // );

    // If you don't have data to return yet, return an empty stream:
    return Stream.value([]);
  }

  @override
  Widget build(BuildContext context) {
    // if (isiOS) {
    //   SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(
    //       statusBarBrightness: Theme.of(context).brightness,
    //       systemStatusBarContrastEnforced: true,
    //     ),
    //   );
    // }

    final subtitleStyle = Theme.of(context).textTheme.titleMedium;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF181818),
      body: Form(
        // key: _model.formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Material(
              color: Color(0XFFF1BCEF),
              elevation: 3,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
              ),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 1,
                decoration: const BoxDecoration(
                  color: Color(0xFF181818),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 44, 20, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Align(
                        alignment: AlignmentDirectional(-1, -1),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Add Transaction' /* Add Transaction */,
                              style: TextStyle(
                                color: Color(0XFFF1BCEF),
                                fontWeight: FontWeight.w500,
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 100,
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.8,
                        ),
                        decoration: BoxDecoration(),
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                            child: TextFormField(
                              // controller: _model.textController1,
                              // focusNode: _model.textFieldFocusNode,
                              obscureText: false,

                              decoration: InputDecoration(
                                labelText: 'Amount',
                                labelStyle: TextStyle(
                                  fontFamily: 'Lexend',
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.w300,
                                ),
                                hintText: 'Enter amount',
                                hintStyle: TextStyle(
                                  fontFamily: 'Lexend',
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.w300,
                                  // fontSize: 28,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0XFFF1BCEF), // Your color
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0XFFF1BCEF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0XFFF1BCEF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0XFFF1BCEF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 24, 24, 24),
                                prefixIcon: Icon(
                                  Icons.attach_money_rounded,
                                  color: Colors.white, // Your color
                                  size: 32,
                                ),
                              ),
                              style: const TextStyle(
                                color: Color(0XFFF1BCEF),
                                fontSize: 24,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              // validator: textController1Validator,
                            )
                            // .animateOnPageLoad(
                            //   animationsMap['textFieldOnPageLoadAnimation1']!,
                            // ),
                            ),
                      ),

                      //-------------------------------------------------
                      Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: TextFormField(
                            // controller: _model.spentAtController,
                            // focusNode: _model.spentAtFocusNode,
                            obscureText: false,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              labelText: 'Spent At',
                              // labelStyle: FlutterFlowTheme.of(context).bodySmall,
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 118, 116, 116),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0XFFF1BCEF),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0XFFF1BCEF),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0XFFF1BCEF),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20, 24, 24, 24),
                            ),
                            // style: FlutterFlowTheme.of(context).bodySmall,
                            // validator: _model.spentAtControllerValidator
                            //     .asValidator(context),
                          )
                          // .animateOnPageLoad(
                          //     animationsMap['textFieldOnPageLoadAnimation2']!),
                          ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: StreamBuilder<List<BudgetListRecord>>(
                          stream: queryBudgetListRecord(
                              budgetUser: currentUserReference),
                          builder: (context, snapshot) {
                            if (!snapshot.hasData) {
                              return const Center(
                                child:
                                    CircularProgressIndicator(), // Use any loading indicator here
                              );
                            }

                            List<BudgetListRecord> budgetList = snapshot.data!;

                            return DropdownButtonFormField<String>(
                              items: budgetList.map((record) {
                                return DropdownMenuItem(
                                  value: record.itemName,
                                  child: Text(record.itemName),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                // Handle onChanged event
                              },
                            );
                          },
                        ),
                      ),
                      // .animateOnPageLoad(
                      //                               animationsMap['dropDownOnPageLoadAnimation']!);
                      // },
                      // ),
                      // ),
                      Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: TextFormField(
                            // controller: _model.reasonController,
                            // focusNode: _model.reasonFocusNode,
                            obscureText: false,
                            decoration: InputDecoration(
                              // labelStyle: FlutterFlowTheme.of(context).bodyMedium,
                              hintText: 'Comment',
                              hintStyle: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 118, 116, 116)),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFF1BCEF),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0XFFF1BCEF),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0XFFF1BCEF),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0XFFF1BCEF),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(20, 40, 24, 0),
                            ),
                            style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                            textAlign: TextAlign.start,
                            maxLines: 4,
                            // validator: _model.reasonControllerValidator
                            //     .asValidator(context),
                          )
                          // .animateOnPageLoad(
                          //     animationsMap['textFieldOnPageLoadAnimation3']!),
                          ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                        child: TextButton(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0XFFF1BCEF),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 48,
                            padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                            child: Center(
                              child: Text(
                                'Add', // You can replace 'Add' with your desired button text
                                style: subtitleStyle != null
                                    ? subtitleStyle.copyWith(
                                        fontFamily: 'Lexend',
                                        color: Color.fromARGB(255, 10, 10, 10),
                                        fontWeight: FontWeight.bold,
                                      )
                                    : TextStyle(), // Handle case where subtitleStyle is null
                              ),
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
      ),
    );
  }
}

class FormFieldController {}

void setupAnimations(Iterable<AnimationInfo> where,
    _TransactionADDWidgetState transactionADDWidgetState) {}

class FadeEffect implements AnimationEffect {
  final Curve curve;
  final Duration delay;
  final Duration duration;
  final double begin;
  final double end;

  const FadeEffect({
    required this.curve,
    required this.delay,
    required this.duration,
    required this.begin,
    required this.end,
  });
}

class MoveEffect implements AnimationEffect {
  final Curve curve;
  final Duration delay;
  final Duration duration;
  final Offset begin;
  final Offset end;

  MoveEffect({
    required this.curve,
    required this.delay,
    required this.duration,
    required this.begin,
    required this.end,
  });
}

class ScaleEffect implements AnimationEffect {
  final Curve curve;
  final Duration delay;
  final Duration duration;
  final Offset begin;
  final Offset end;

  ScaleEffect({
    required this.curve,
    required this.delay,
    required this.duration,
    required this.begin,
    required this.end,
  });
}
