import 'package:bulletseed/charts/model/attempt.dart';
import 'package:bulletseed/charts/round/widget/round.dart';
import 'package:bulletseed/charts/map/widget/map.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

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
            child: Column(
              spacing: 20,
              children: [
                RoundChart(
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
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northeast),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northeast),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: true,
                        // reaction: 3,
                        direction: Direction.northwest),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: false,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northeast),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northwest),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northeast),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northeast),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northwest),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: false,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northeast),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northwest),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northeast),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northeast),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: true,
                        // reaction: 3,
                        direction: Direction.northwest),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: false,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northeast),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northwest),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northeast),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northeast),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northwest),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: false,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northeast),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: true,
                        // reaction: 3,
                        direction: Direction.northwest),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northeast),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: false,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northeast),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northwest),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.northeast),
                    Attempt(
                        x: 5,
                        y: 6,
                        hit: true,
                        secondCartBridge: false,
                        // reaction: 3,
                        direction: Direction.south),
                  ],
                  isFarenheight: false,
                  overviewHitColor: Colors.teal,
                  overviewLostColor: Colors.red,
                  overviewSecondShotColor: Colors.amber,
                  headerBackgroundColor: Colors.transparent,
                  headerForegroundColor: Colors.blueGrey,
                  overviewSubtitleColor: Colors.blueGrey,
                ),
                MapChart(
                  shootingAreaStartColor: Colors.teal,
                  attempt: Attempt(
                      x: 20,
                      y: 30,
                      hit: true,
                      secondCartBridge: false,
                      direction: Direction.northeast),
                  fieldWidthX: 25,
                  fieldHeightY: 45,
                  shootingAreaStart: 15,
                  subtitleColor: Colors.blueGrey.shade600,
                  borderColor: Colors.blueGrey.shade600,
                  width: double.infinity,
                  height: 300,
                  pathColor: Colors.blueGrey.shade600,
                  targetColor: Colors.teal,
                  backgroundColor: Colors.white,
                  targetSize: 12,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
