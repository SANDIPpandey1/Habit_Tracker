import 'package:flutter/material.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';

class HabitTile extends StatelessWidget {
  final String title;

  const HabitTile({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(10),

          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  // color: Colors.red[100],
                  child: Stack(
                    children: [
                      //Progress indicator
                      CircularPercentIndicator(
                        radius: 30,
                        percent: 0.7,
                        lineWidth: 7.0,
                        progressColor: Colors.green,
                      ),
                      //play and pause button
                      Center(
                        child: Icon(
                          Icons.play_arrow,
                          size: 30,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Habit title
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    //Progress
                    Text(
                      '2:00 / 10 = 20%',
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.settings),
          ],
        ),
      ),
    );
  }
}
