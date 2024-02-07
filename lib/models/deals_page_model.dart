// import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:finance_app/screens/DealsPage.dart' show OffersWidget;
// import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OffersModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
  // static Map<String, Map<String, String>> localizedValues = {
  //   'en': {
  //     'offers_and_deals': 'OFFERS & DEALS FOR YOU',
  //     'find_exclusive_offers': 'Find new exclusive offers',
  //   },
  //   // Add translations for other languages as needed
  // };

  // static String of(BuildContext context, String key) {
  //   return localizedValues[Localizations.localeOf(context).languageCode]![
  //           key] ??
  //       key; // Return the key if the translation is not found
  // }
}
