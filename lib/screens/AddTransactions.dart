import 'package:finance_app/styles/AnimationInfo.dart';
import 'package:flutter/gestures.dart';

// import '/auth/firebase_auth/auth_util.dart';
// import '/backend/backend.dart';
// import '/flutter_flow/flutter_flow_animations.dart';
// import '/flutter_flow/flutter_flow_drop_down.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../models/add_transactions_model.dart';
export '../models/add_transactions_model.dart';

class TransactionADDWidget extends StatefulWidget {
  const TransactionADDWidget({super.key});

  @override
  State<TransactionADDWidget> createState() => _TransactionADDWidgetState();
}

class _TransactionADDWidgetState extends State<TransactionADDWidget>
    with TickerProviderStateMixin {
  late TransactionADDModel _model;

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

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF181818),
      body: Form(
        key: _model.formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Material(
              color: Colors.transparent,
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
                height: MediaQuery.sizeOf(context).height * 0.8,
                decoration: const BoxDecoration(
                  color: Colors.red,
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
                      Align(
                        alignment: AlignmentDirectional(-1, -1),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                'Add Transaction' /* Add Transaction */,
                              style: ,
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
      controller: _model.textController1,
      focusNode: _model.textFieldFocusNode,
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
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue, // Your color
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 24, 24, 24),
        prefixIcon: Icon(
          Icons.attach_money_rounded,
          color: Colors.black, // Your color
          size: 32,
        ),
      ),
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      validator: _textController1Validator,
    ).animateOnPageLoad(
      animationsMap['textFieldOnPageLoadAnimation1']!,
    ),
  ),
),

                      //-------------------------------------------------
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: TextFormField(
                          controller: _model.spentAtController,
                          focusNode: _model.spentAtFocusNode,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'ohewrgsv' /* Spent At */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context).bodySmall,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 24, 24),
                          ),
                          style: FlutterFlowTheme.of(context).bodySmall,
                          validator: _model.spentAtControllerValidator
                              .asValidator(context),
                        ).animateOnPageLoad(
                            animationsMap['textFieldOnPageLoadAnimation2']!),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: StreamBuilder<List<BudgetListRecord>>(
                          stream: queryBudgetListRecord(
                            queryBuilder: (budgetListRecord) =>
                                budgetListRecord.where(
                              'budgetUser',
                              isEqualTo: currentUserReference,
                            ),
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: SpinKitCircle(
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 40,
                                  ),
                                ),
                              );
                            }
                            List<BudgetListRecord> budgetBudgetListRecordList =
                                snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final budgetBudgetListRecord =
                                budgetBudgetListRecordList.isNotEmpty
                                    ? budgetBudgetListRecordList.first
                                    : null;
                            return FlutterFlowDropDown<String>(
                              controller: _model.budgetValueController ??=
                                  FormFieldController<String>(null),
                              options: [
                                FFLocalizations.of(context).getText(
                                  '3170k9n1' /* Office Budget */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'abz6nm8z' /* External Transfer */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '3y95vtb6' /* Food and Bev */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '5rnz1i00' /* Travel */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'p8pw8r2m' /* Recharge */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'xdailp9x' /* Subscription */,
                                )
                              ],
                              onChanged: (val) =>
                                  setState(() => _model.budgetValue = val),
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: 60,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: FFLocalizations.of(context).getText(
                                '861el4k4' /* Select Category */,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: FlutterFlowTheme.of(context).grayLight,
                                size: 15,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2,
                              borderRadius: 8,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 12, 20),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ).animateOnPageLoad(
                                animationsMap['dropDownOnPageLoadAnimation']!);
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: TextFormField(
                          controller: _model.reasonController,
                          focusNode: _model.reasonFocusNode,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context).bodyMedium,
                            hintText: FFLocalizations.of(context).getText(
                              'swxms7ln' /* Comment */,
                            ),
                            hintStyle: FlutterFlowTheme.of(context).bodySmall,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 40, 24, 0),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          textAlign: TextAlign.start,
                          maxLines: 4,
                          validator: _model.reasonControllerValidator
                              .asValidator(context),
                        ).animateOnPageLoad(
                            animationsMap['textFieldOnPageLoadAnimation3']!),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: FFLocalizations.of(context).getText(
                            'y3xaka0l' /* Add */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 38,
                            padding:
                                EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                            iconPadding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Lexend',
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
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
  })
}
