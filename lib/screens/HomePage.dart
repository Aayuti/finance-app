// import '/flutter_flow/flutter_flow_animations.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'home_page_model.dart';
// export 'home_page_model.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
//-----------------------------------------------------------------------------

import 'package:finance_app/screens/Graph.dart';
import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181818),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Column(
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Container(
                            width: 60,
                            height: 60,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/profile_image.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // -----------------------------------------------------------------------------
            // Add the rest of your UI components here
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Welcome,',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfff1cbef),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                        child: Text(
                          'Aayuti',
                          style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 18,
                            color: Color(
                                0xfff1cbef), // Replace with the color you want
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                    child: Text(
                      'Your latest updates are below.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 250, 250,
                            250), // Replace with the color you want
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // -------------------------------------------------------------------------

            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.92,
                    height: 190,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 6,
                          color: Color(0x4B1A1F24),
                          offset: Offset(0, 2),
                        )
                      ],
                      gradient: const LinearGradient(
                        colors: [Color(0xFF00968A), Color(0xFFF2A384)],
                        stops: [0, 1],
                        begin: AlignmentDirectional(0.94, -1),
                        end: AlignmentDirectional(-0.94, 1),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsetsDirectional.fromSTEB(
                        //       20, 20, 20, 0),
                        //   child: Row(
                        //     mainAxisSize: MainAxisSize.max,
                        //     children: [
                        //       Image.asset(
                        //         '',
                        //         width: 44,
                        //         height: 14,
                        //         fit: BoxFit.cover,
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 36, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Balance',
                                style: TextStyle(
                                  fontFamily: 'Lexend',
                                  fontSize: 16,
                                  color: Colors
                                      .black, // Replace with the color you want
                                ),
                              ),
                            ],
                          ),
                        ),

                        // --------------------------------------------------------------------- --------------------------
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'INR 200',
                                  style: TextStyle(
                                    fontFamily: 'Lexend',
                                    color: Colors
                                        .black, // Replace with the color you want
                                    fontSize: 32,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '**** 0149',
                                style: TextStyle(
                                  fontFamily: 'Roboto Mono',
                                  color: Colors
                                      .black, // Replace with the color you want
                                ),
                              ),
                              Text(
                                '05/25',
                                style: TextStyle(
                                  fontFamily: 'Roboto Mono',
                                  color: Colors
                                      .black, // Replace with the color you want
                                ),
                              ),
                            ],
                          ),
                        ),
                        // -----------------------------------------
                        //everything correct
                      ], //children
                    ),
                  ),
                ],
              ) //.animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!),
              ,
            ),

            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 800,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(
                      255, 19, 18, 18), // Replace with the color you want
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x34000000),
                      offset: Offset(0, -2),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Quick Service',
                            style: TextStyle(
                              fontFamily: 'Lexend',
                              color: Color.fromARGB(255, 218, 210,
                                  210), // Replace with the color you want
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 110,
                            height: 100,
                            decoration: BoxDecoration(
                              color: const Color(
                                  0xFFF1CBEF), // Replace with the color you want
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.swap_horiz_rounded,
                                  color: Colors
                                      .black, // Replace with the color you want
                                  size: 40,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Text(
                                    'Transfer',
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      color: Colors
                                          .black, // Replace with the color you want
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // ---------------------------------------------------
                          Container(
                            width: 110,
                            height: 100,
                            decoration: BoxDecoration(
                              color: const Color(
                                  0xFFF1CBEF), // Replace with your desired color
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.stacked_line_chart_rounded,
                                  color: Color(
                                      0xFF272525), // Replace with your desired color
                                  size: 40,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ChartWidget())),
                                    child: const Text(
                                      'Activity', // Replace with your desired text
                                      style: TextStyle(
                                        fontFamily: 'Lexend',
                                        color: Color.fromARGB(255, 41, 37,
                                            37), // Replace with your desired color
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
//---------------------------------------------------------------------------------
                          Container(
                            width: 110,
                            height: 100,
                            decoration: BoxDecoration(
                              color: const Color(
                                  0xFFF1CBEF), // Replace with your desired color
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.account_balance_outlined,
                                  color: Color(
                                      0xFF272525), // Replace with your desired color
                                  size: 40,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Text(
                                    'My Bank', // Replace with your desired text
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      color: Colors
                                          .black, // Replace with your desired color
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //---------------------------------------------------------------------------------------------------
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 12),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Transaction', // Replace with your desired text
                            style: TextStyle(
                              fontFamily: 'Lexend',
                              color: Color.fromARGB(255, 241, 232,
                                  232), // Replace with your desired color
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //----------------------------------------------------------------------------------------------
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.92,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color(
                              0xFFF1CBEF), // Replace with your desired color
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            //
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8, 0, 0, 0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: const Color(0x6639D2C0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.monetization_on_rounded,
                                    color: Color(0xFF272525),
                                    size: 24,
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Netflix', // Replace with your desired text
                                      style: TextStyle(
                                        fontFamily: 'Lexend',
                                        color: Colors
                                            .black, // Replace with your desired color
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: Text(
                                        'Expense', // Replace with your desired text
                                        style: TextStyle(
                                          fontFamily: 'Lexend',
                                          color: Color.fromARGB(66, 27, 26,
                                              26), // Replace with your desired color
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Rs. 200', // Replace with your text
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      color: Colors
                                          .black, // Replace with your desired color
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ), // Text
                                  // Padding(
                                  //   padding: EdgeInsetsDirectional.fromSTEB(
                                  //       0, 4, 0, 0),
                                  //   child: Text(
                                  //     'Hello World', // Replace with your text
                                  //     textAlign: TextAlign.end,
                                  //     style: TextStyle(
                                  //       fontFamily: 'Lexend',
                                  //       color: Color.fromARGB(255, 17, 19,
                                  //           20), // Replace with your desired color
                                  //       fontSize: 12,
                                  //     ), // Replace with your custom text style
                                  //   ),
                                  // ), // padding
                                ], // children
                              ), // column
                            ), //padding
                          ],
                        ),
                      ),
                    ),
                    //       ],
                    //     ),
                    //   ),
                    // ),

                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.92,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color(
                              0xFFF1CBEF), // Replace with your desired color
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            //
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8, 0, 0, 0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: const Color(0x6639D2C0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.monetization_on_rounded,
                                    color: Color(
                                        0xFF272525), // Replace with your desired color
                                    size: 24,
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Shopping', // Replace with your desired text
                                      style: TextStyle(
                                        fontFamily: 'Lexend',
                                        color: Colors
                                            .black, // Replace with your desired color
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: Text(
                                        'Expense', // Replace with your desired text
                                        style: TextStyle(
                                          fontFamily: 'Lexend',
                                          color: Color.fromARGB(66, 27, 26,
                                              26), // Replace with your desired color
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Rs. 1500', // Replace with your text
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      color: Colors
                                          .black, // Replace with your desired color
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ), // Text
                                  // padding
                                ], // children
                              ), // column
                            ), //padding
                          ],
                        ),
                      ),
                    ),

//-------------------------------------------------added here ----------------------------------------------------------------------
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.92,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF1CBEF),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize
                              .max, //extends to the full width of the row
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  //padding from start, top, end and bottom
                                  8,
                                  0,
                                  0,
                                  0),
                              child: Card(
                                clipBehavior: Clip
                                    .antiAliasWithSaveLayer, //if there is an image overlaid on a very different background color. In these cases, this property helps to avoid overlapping multiple colors in one spot
                                color: const Color(0x6639D2C0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      40), //shape and border radius for the card
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.monetization_on_rounded, //rupee icon
                                    color:
                                        Color(0xFF272525), //color for the icon
                                    size: 24,
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Disney Plus Hotstar', // Replace with your desired text
                                      style: TextStyle(
                                        fontFamily: 'Lexend',
                                        color: Colors
                                            .black, // Replace with your desired color
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: Text(
                                        'Expense', // Replace with your desired text
                                        style: TextStyle(
                                          fontFamily: 'Lexend',
                                          color: Color.fromARGB(66, 27, 26,
                                              26), // Replace with your desired color
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Rs. 1000', // Replace with your text
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      color: Colors
                                          .black, // Replace with your desired color
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ), // Text
                                  // padding
                                ], // children
                              ), // column
                            ), //padding
                          ],
                        ),
                      ),
                    ),
                    //       ],
                    //     ),
                    //   ),
                    // ),

                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.92,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color(
                              0xFFF1CBEF), // Replace with your desired color
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            //
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8, 0, 0, 0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: const Color(0x6639D2C0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.monetization_on_rounded,
                                    color: Color(
                                        0xFF272525), // Replace with your desired color
                                    size: 24,
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Amazon Prime Membership', // Replace with your desired text
                                      style: TextStyle(
                                        fontFamily: 'Lexend',
                                        color: Colors
                                            .black, // Replace with your desired color
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: Text(
                                        'expense', // Replace with your desired text
                                        style: TextStyle(
                                          fontFamily: 'Lexend',
                                          color: Color.fromARGB(66, 27, 26,
                                              26), // Replace with your desired color
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Rs. 699', // Replace with your text
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      color: Colors
                                          .black, // Replace with your desired color
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ), // Text
                                  // padding
                                ], // children
                              ), // column
                            ), //padding
                          ],
                        ),
                      ),
                    ),

//---------------------------------------------------added here ---------------------------------------------------------------------------
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.92,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color(
                              0xFFF1CBEF), // Replace with your desired color
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            //
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8, 0, 0, 0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: const Color(0x6639D2C0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.monetization_on_rounded,
                                    color: Color(
                                        0xFF272525), // Replace with your desired color
                                    size: 24,
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Go Far Rewards', // Replace with your desired text
                                      style: TextStyle(
                                        fontFamily: 'Lexend',
                                        color: Colors
                                            .black, // Replace with your desired color
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: Text(
                                        'Income', // Replace with your desired text
                                        style: TextStyle(
                                          fontFamily: 'Lexend',
                                          color: Color.fromARGB(66, 27, 26,
                                              26), // Replace with your desired color
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Rs. 20', // Replace with your text
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      color: Colors
                                          .black, // Replace with your desired color
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ), // Text
                                  // padding
                                ], // children
                              ), // column
                            ), //padding
                          ],
                        ),
                      ),
                    ),
                    //       ],
                    //     ),
                    //   ),
                    // ),

                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.92,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color(
                              0xFFF1CBEF), // Replace with your desired color
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            //
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8, 0, 0, 0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: const Color(0x6639D2C0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.monetization_on_rounded,
                                    color: Color(
                                        0xFF272525), // Replace with your desired color
                                    size: 24,
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Go Far Rewards', // Replace with your desired text
                                      style: TextStyle(
                                        fontFamily: 'Lexend',
                                        color: Colors
                                            .black, // Replace with your desired color
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: Text(
                                        'Income', // Replace with your desired text
                                        style: TextStyle(
                                          fontFamily: 'Lexend',
                                          color: Color.fromARGB(66, 27, 26,
                                              26), // Replace with your desired color
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Rs. 500', // Replace with your text
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontFamily: 'Lexend',
                                      color: Colors
                                          .black, // Replace with your desired color
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ), // Text
                                  // padding
                                ], // children
                              ), // column
                            ), //padding
                          ],
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
      // ),
    );
    //main padding line 430
    //------------------------------------------------------------------------
  }
}
