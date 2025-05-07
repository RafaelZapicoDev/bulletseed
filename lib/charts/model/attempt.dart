// [Attempt] é o model para tentativas .
// [Ideia] adicionar tempo de reação ?

part 'direction.dart';

class Attempt {
  final bool hit;
  final bool secondCartBridge;
  final double? x;
  final double? y;
  final Direction direction;

  Attempt({
    required this.hit,
    required this.secondCartBridge,
    required this.direction,
    this.x,
    this.y,
  });
}
