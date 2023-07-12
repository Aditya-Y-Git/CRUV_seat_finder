import 'package:flutter/material.dart';
import 'package:seat_finder/data/seats_data.dart';

import 'package:seat_finder/new_widgets/upper_single_seat.dart';
import 'package:seat_finder/new_widgets/Lower_single_seat.dart';

class SideComparatment extends StatelessWidget {
  const SideComparatment({super.key, required this.sideLower});

  final int sideLower;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 67,
      // padding: const EdgeInsets.all(8),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            decoration: const BoxDecoration(
              // color: Colors.yellow,
              border: Border(
                top: BorderSide(
                  color: Colors.blue,
                  style: BorderStyle.solid,
                  width: 6,
                ),
                right: BorderSide(
                  color: Colors.blue,
                  style: BorderStyle.solid,
                  width: 6,
                ),
                left: BorderSide(
                  color: Colors.blue,
                  style: BorderStyle.solid,
                  width: 6,
                ),
              ),
            ),
            child: UpperSingleSeat(seat: seatsData[sideLower]),
          ),
          const Spacer(),
          Container(
            decoration: const BoxDecoration(
              // color: Colors.yellow,
              border: Border(
                bottom: BorderSide(
                  color: Colors.blue,
                  style: BorderStyle.solid,
                  width: 6,
                ),
                right: BorderSide(
                  color: Colors.blue,
                  style: BorderStyle.solid,
                  width: 6,
                ),
                left: BorderSide(
                  color: Colors.blue,
                  style: BorderStyle.solid,
                  width: 6,
                ),
              ),
            ),
            child: LowerSingleSeat(
              seat: seatsData[sideLower + 1],
            ),
          )
        ],
      ),
    );
  }
}
