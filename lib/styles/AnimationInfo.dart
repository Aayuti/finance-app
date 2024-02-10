import 'package:flutter/animation.dart';

class AnimationInfo {
  final AnimationTrigger trigger;
  final List<AnimationEffect> effects;

  AnimationInfo({
    required this.trigger,
    required this.effects,
  });
}

enum AnimationTrigger {
  onPageLoad,
  // Add other animation triggers as needed
}

abstract class AnimationEffect {
  // Define common properties or methods for animation effects
}

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
