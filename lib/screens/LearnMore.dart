import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animations/animations.dart';
import 'package:finance_app/styles/AnimationInfo.dart';
import 'package:finance_app/styles/app_style.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/learn_more_page.dart';
export '../models/learn_more_page.dart';

class LearnMoreWidget extends StatefulWidget {
  const LearnMoreWidget({super.key});

  @override
  State<LearnMoreWidget> createState() => _LearnMoreWidgetState();
}

class _LearnMoreWidgetState extends State<LearnMoreWidget>
    with TickerProviderStateMixin {
  late LearnMoreModel _model;

  // final Uri _urlcard1 = Uri.parse(
  //     'https://www.investor.gov/introduction-investing/investing-basics/investment-products/mutual-funds-and-exchange-traded-1');

  // Future<void> _launchcard1() async {
  //   if (!await launchUrl(_urlcard1)) {
  //     throw Exception('Could not launch $_urlcard1');
  //   }
  // }

  // final Uri _urlcard2 = Uri.parse(
  //     'https://hbr.org/2023/10/how-fintech-is-making-smaller-suppliers-more-resilient');

  // Future<void> _launchcard2() async {
  //   if (!await launchUrl(_urlcard2)) {
  //     throw Exception('Could not launch $_urlcard2');
  //   }
  // }

  final List<Map<String, String>> cards = [
    {
      'text': 'Mutual Funds',
      'url':
          'https://www.investor.gov/introduction-investing/investing-basics/investment-products/mutual-funds-and-exchange-traded-1'
    },
    {
      'text': 'Credit Score',
      'url': 'https://www.investopedia.com/terms/c/credit_score.asp'
    },
    {
      'text': 'Personal Loan',
      'url': 'https://www.investopedia.com/personal-loan-5076027'
    },
    {
      'text': 'Insurance',
      'url': 'https://www.investopedia.com/terms/i/insurance.asp'
    },
    {'text': 'Basics', 'url': 'https://www.youtube.com/watch?v=qIw-yFC-HNU'},
    {
      'text': 'Budgeting',
      'url':
          'https://www.nerdwallet.com/article/finance/budgeting-for-college-students'
    },
    {
      'text': 'Gold Investment',
      'url': 'https://www.cbsnews.com/news/investing-gold-pros-cons/'
    },
    {
      'text': 'Improve Credit Score',
      'url':
          'https://www.consumerfinance.gov/ask-cfpb/how-do-i-get-and-keep-a-good-credit-score-en-318/'
    },
    {
      'text': 'Future of Finance',
      'url':
          'https://www.worldbank.org/en/publication/fintech-and-the-future-of-finance'
    },
    {
      'text': 'Supply Chain',
      'url':
          'https://hbr.org/2023/10/how-fintech-is-making-smaller-suppliers-more-resilient'
    },
    {
      'text': 'Blockchain',
      'url':
          'https://www.pwc.com/us/en/industries/financial-services/fintech/bitcoin-blockchain-cryptocurrency.html'
    },
    {
      'text': 'RegTech',
      'url': 'https://www.ascentregtech.com/what-is-regtech/'
    },
  ];

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
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
          begin: const Offset(0, 110),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
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
          begin: const Offset(0, 110),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
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
          begin: const Offset(0, 110),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
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
          begin: const Offset(0, 110),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation5': AnimationInfo(
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
          begin: const Offset(0, 110),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation6': AnimationInfo(
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
          begin: const Offset(0, 110),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation7': AnimationInfo(
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
          begin: const Offset(0, 110),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation8': AnimationInfo(
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
          begin: const Offset(0, 110),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation9': AnimationInfo(
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
          begin: const Offset(0, 110),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation10': AnimationInfo(
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
          begin: const Offset(0, 110),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation11': AnimationInfo(
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
          begin: const Offset(0, 110),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation12': AnimationInfo(
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
          begin: const Offset(0, 110),
          end: const Offset(0, 0),
        ),
      ],
    ),
  };

  // @override
  // void initState() {
  //   super.initState();
  //   _model = LearnMoreModel(context, () => LearnMoreModel());

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
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF181818),
        appBar: AppBar(
          backgroundColor: const Color(0xFF181818),
          automaticallyImplyLeading: false,
          title: const Align(
            alignment: AlignmentDirectional(0, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 20, 5, 10),
              child: Text(
                'Learn More',
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 32,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFFF1BCEF),
                ),
              ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 5),
                    child: Text(
                      'Finance Basics',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 16, 10, 0),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () =>
                                    _launchUrl(Uri.parse(cards[0]['url']!)),
                                child: Container(
                                  width: 120,
                                  height: 110,
                                  constraints: const BoxConstraints(
                                    maxWidth: 500,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1CBEF),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Color(0xFFF1CBEF),
                                      width: 2,
                                    ),
                                  ),
                                  child: const Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Text(
                                      'Mutual Funds',
                                      style: TextStyle(
                                        fontFamily: 'Lexend',
                                        color: Color(0xFF181818),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 16, 10, 0),
                            child: GestureDetector(
                              onTap: () =>
                                  _launchUrl(Uri.parse(cards[1]['url']!)),
                              child: Container(
                                width: 120,
                                height: 110,
                                constraints: const BoxConstraints(
                                  maxWidth: 500,
                                ),
                                decoration: BoxDecoration(
                                  color: AppStyle.componentColor,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: AppStyle.componentColor,
                                    width: 2,
                                  ),
                                ),
                                child: const Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    'Credit Score',
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      color: Color(0xFF181818),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () =>
                                _launchUrl(Uri.parse(cards[2]['url']!)),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 16, 10, 0),
                              child: Container(
                                width: 120,
                                height: 110,
                                constraints: const BoxConstraints(
                                  maxWidth: 500,
                                ),
                                decoration: BoxDecoration(
                                  color: AppStyle.componentColor,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: AppStyle.componentColor,
                                    width: 2,
                                  ),
                                ),
                                child: const Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    'Personal Loan',
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      color: Color(0xFF181818),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () =>
                                _launchUrl(Uri.parse(cards[3]['url']!)),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 16, 10, 0),
                              child: Container(
                                width: 120,
                                height: 110,
                                constraints: const BoxConstraints(
                                  maxWidth: 500,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF1BCEF),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: AppStyle.componentColor,
                                    width: 2,
                                  ),
                                ),
                                child: const Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    'Insurance',
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      color: Color(0xFF181818),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                // ).animateOnPageLoad(animationsMap[
                                //     'containerOnPageLoadAnimation4']!),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 5),
                    child: Text(
                      'How To Invest?',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 16, 10, 0),
                            child: GestureDetector(
                              onTap: () =>
                                  _launchUrl(Uri.parse(cards[4]['url']!)),
                              child: Container(
                                width: 120,
                                height: 110,
                                constraints: const BoxConstraints(
                                  maxWidth: 500,
                                ),
                                decoration: BoxDecoration(
                                  color: AppStyle.componentColor,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: AppStyle.componentColor,
                                    width: 2,
                                  ),
                                ),
                                child: const Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    'Basics',
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      color: Color(0xFF181818),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 16, 10, 0),
                            child: GestureDetector(
                              onTap: () =>
                                  _launchUrl(Uri.parse(cards[5]['url']!)),
                              child: Container(
                                width: 120,
                                height: 110,
                                constraints: const BoxConstraints(
                                  maxWidth: 500,
                                ),
                                decoration: BoxDecoration(
                                  color: AppStyle.componentColor,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: AppStyle.componentColor,
                                    width: 2,
                                  ),
                                ),
                                child: const Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    'Budgeting',
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      color: Color(0xFF181818),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 16, 10, 0),
                            child: GestureDetector(
                              onTap: () =>
                                  _launchUrl(Uri.parse(cards[6]['url']!)),
                              child: Container(
                                width: 120,
                                height: 110,
                                constraints: const BoxConstraints(
                                  maxWidth: 500,
                                ),
                                decoration: BoxDecoration(
                                  color: AppStyle.componentColor,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: AppStyle.componentColor,
                                    width: 2,
                                  ),
                                ),
                                child: const Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    'Gold Investment',
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      color: Color(0xFF181818),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 16, 10, 0),
                            child: GestureDetector(
                              onTap: () =>
                                  _launchUrl(Uri.parse(cards[7]['url']!)),
                              child: Container(
                                width: 120,
                                height: 110,
                                constraints: const BoxConstraints(
                                  maxWidth: 500,
                                ),
                                decoration: BoxDecoration(
                                  color: AppStyle.componentColor,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: AppStyle.componentColor,
                                    width: 2,
                                  ),
                                ),
                                child: const Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    'Improve Credit score',
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      color: Color(0xFF181818),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 5),
                    child: Text(
                      'FinTech',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 16, 10, 0),
                            child: GestureDetector(
                              onTap: () =>
                                  _launchUrl(Uri.parse(cards[8]['url']!)),
                              child: Container(
                                width: 120,
                                height: 110,
                                constraints: const BoxConstraints(
                                  maxWidth: 500,
                                ),
                                decoration: BoxDecoration(
                                  color: AppStyle.componentColor,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: AppStyle.componentColor,
                                    width: 2,
                                  ),
                                ),
                                child: const Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    'Future of Finance',
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      color: Color(0xFF181818),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 16, 10, 0),
                            child: GestureDetector(
                              onTap: () =>
                                  _launchUrl(Uri.parse(cards[9]['url']!)),
                              child: Container(
                                width: 120,
                                height: 110,
                                constraints: const BoxConstraints(
                                  maxWidth: 500,
                                ),
                                decoration: BoxDecoration(
                                  color: AppStyle.componentColor,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: AppStyle.componentColor,
                                    width: 2,
                                  ),
                                ),
                                child: const Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Center(
                                    child: Text(
                                      'Supply Chain',
                                      style: TextStyle(
                                        fontFamily: 'Lexend',
                                        color: Color(0xFF181818),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 16, 10, 0),
                            child: GestureDetector(
                              onTap: () =>
                                  _launchUrl(Uri.parse(cards[10]['url']!)),
                              child: Container(
                                width: 120,
                                height: 110,
                                constraints: const BoxConstraints(
                                  maxWidth: 500,
                                ),
                                decoration: BoxDecoration(
                                  color: AppStyle.componentColor,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: AppStyle.componentColor,
                                    width: 2,
                                  ),
                                ),
                                child: const Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    'Blockchain',
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      color: Color(0xFF181818),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                1, 16, 10, 0),
                            child: GestureDetector(
                              onTap: () =>
                                  _launchUrl(Uri.parse(cards[11]['url']!)),
                              child: Container(
                                width: 120,
                                height: 110,
                                constraints: const BoxConstraints(
                                  maxWidth: 500,
                                ),
                                decoration: BoxDecoration(
                                  color: AppStyle.componentColor,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: AppStyle.componentColor,
                                    width: 2,
                                  ),
                                ),
                                child: const Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    'RegTech',
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      color: Color(0xFF181818),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
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
      ),
    );
  }
}

void setupAnimations(Iterable<AnimationInfo> where,
    _LearnMoreWidgetState _learnMoreWidgetState) {}

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
