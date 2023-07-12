import 'package:flutter/material.dart';
import 'package:seat_finder/data/seats_data.dart';
import 'package:seat_finder/new_widgets/lower_single_seat.dart';

class LowerSeats extends StatelessWidget {
  const LowerSeats({super.key, required this.start});

  final int start;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          // color: Colors.amber,
          border: Border(
            bottom: BorderSide(
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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            LowerSingleSeat(seat: seatsData[start]),
            const Spacer(),
            LowerSingleSeat(seat: seatsData[start + 1]),
            const Spacer(),
            LowerSingleSeat(
              seat: seatsData[start + 2],
            ),
          ],
        ),
      ),
    );
  }
}
