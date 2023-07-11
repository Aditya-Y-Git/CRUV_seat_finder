import 'package:flutter/material.dart';
import 'package:seat_finder/new_widgets/lower_seats.dart';
import 'package:seat_finder/new_widgets/upper_seats.dart';

class MainCompartment extends StatelessWidget {
  const MainCompartment(
      {super.key,
      required this.lowerSeatsStart,
      required this.upperSeatsStart});

  final int upperSeatsStart;
  final int lowerSeatsStart;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      // padding: const EdgeInsets.all(16),
      // decoration: const BoxDecoration(color: Colors.yellow),
      child: Column(
        children: [
          UpperSeats(start: upperSeatsStart),
          const SizedBox(
            height: 40,
          ),
          LowerSeats(
            start: lowerSeatsStart,
          )
        ],
      ),
    );
  }
}
