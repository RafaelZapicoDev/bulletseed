import 'package:bulletseed/charts/round/model/attempt.dart';
import 'package:bulletseed/charts/round/widget/round.dart';
import 'package:flutter/material.dart';

class WidgetTest extends StatelessWidget {
  const WidgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 241, 243, 245),
        body: Center(
          child: SizedBox(
            width: 500,
            height: 600,
            child: RoundChart(
              title: "Treinamento Competição",
              weather: Weather.clear,
              temperature: 22,
              humidity: 82,
              windVelocity: 11,
              athlete: "Ygona Moura Silva",
              location: "Juiz de Fora - Minas Gerais",
              modality: "trap",
              id: "1",
              uid: "213",
              datetime: DateTime.now(),
              attempts: <Attempt>[
                Attempt(
                    hit: true,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northeast),
                Attempt(
                    hit: true,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northeast),
                Attempt(
                    hit: true,
                    secondCartBridge: true,
                    // reaction: 3,
                    direction: Direction.northwest),
                Attempt(
                    hit: false,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northeast),
                Attempt(
                    hit: true,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northwest),
                Attempt(
                    hit: true,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northeast),
                Attempt(
                    hit: true,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northeast),
                Attempt(
                    hit: true,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northwest),
                Attempt(
                    hit: false,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northeast),
                Attempt(
                    hit: true,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northwest),
                Attempt(
                    hit: true,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northeast),
                Attempt(
                    hit: true,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northeast),
                Attempt(
                    hit: true,
                    secondCartBridge: true,
                    // reaction: 3,
                    direction: Direction.northwest),
                Attempt(
                    hit: false,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northeast),
                Attempt(
                    hit: true,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northwest),
                Attempt(
                    hit: true,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northeast),
                Attempt(
                    hit: true,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northeast),
                Attempt(
                    hit: true,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northwest),
                Attempt(
                    hit: false,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northeast),
                Attempt(
                    hit: true,
                    secondCartBridge: true,
                    // reaction: 3,
                    direction: Direction.northwest),
                Attempt(
                    hit: true,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northeast),
                Attempt(
                    hit: false,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northeast),
                Attempt(
                    hit: true,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northwest),
                Attempt(
                    hit: true,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.northeast),
                Attempt(
                    hit: true,
                    secondCartBridge: false,
                    // reaction: 3,
                    direction: Direction.south),
              ],
              isFarenheight: false,
            ),
          ),
        ),
      ),
    );
  }
}
