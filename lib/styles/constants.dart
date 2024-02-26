import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

const kTransitionInfoKey = 'transitionInfo';

class TransitionInfo {
  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;

  TransitionInfo({
    required this.hasTransition,
    required this.transitionType,
    required this.duration,
  });
}
