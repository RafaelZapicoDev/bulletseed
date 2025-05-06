// [Attempt] é o model para tentativas

import 'package:flutter/material.dart';

part 'direction.dart';

class Attempt {
  final bool hit;
  final bool secondCartBridge;
  // final DateTime reaction;
  final Direction direction;

  Attempt({
    required this.hit,
    required this.secondCartBridge,
    // required this.reaction,
    required this.direction,
  });
}
