import 'package:flutter/material.dart';
import 'package:seat_finder/data/seats_data.dart';
import 'package:seat_finder/new_widgets/upper_single_seat.dart';

class UpperSeats extends StatelessWidget {
  const UpperSeats({super.key, required this.start});

  final int start;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          // color: Colors.amber,
          border: Border(
            top: BorderSide(
              color: Colors.blue,
              width: 6.0,
              style: BorderStyle.solid,
            ),
            left: BorderSide(
              color: Colors.blue,
              width: 6.0,
              style: BorderStyle.solid,
            ),
            right: BorderSide(
              color: Colors.blue,
              width: 6.0,
              style: BorderStyle.solid,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UpperSingleSeat(
              seat: seatsData[start],
            ),
            const Spacer(),
            UpperSingleSeat(
              seat: seatsData[start + 1],
            ),
            const Spacer(),
            UpperSingleSeat(
              seat: seatsData[start + 2],
            ),
          ],
        ),
      ),
    );
  }
}
