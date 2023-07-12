import 'package:flutter/material.dart';
import 'package:seat_finder/new_widgets/main_compartment.dart';
import 'package:seat_finder/new_widgets/side_compaertment.dart';

class Compartment extends StatelessWidget {
  const Compartment(
      {super.key,
      required this.upperStart,
      required this.lowerStart,
      required this.sideStart});

  final int upperStart;
  final int lowerStart;
  final int sideStart;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 1),
      width: double.infinity,
      height: 130,
      child: Row(
        children: [
          MainCompartment(
            lowerSeatsStart: lowerStart,
            upperSeatsStart: upperStart,
          ),
          const Spacer(),
          SideComparatment(
            sideLower: sideStart - 1,
          )
        ],
      ),
    );
  }
}
