import 'package:flutter/widgets.dart';
import 'package:seat_finder/data/seats_data.dart';
import 'package:seat_finder/models/seat.dart';

class LowerSingleSeat extends StatelessWidget {
  const LowerSingleSeat({super.key, required this.seat});

  final Seat seat;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 169, 215, 237),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        height: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              seatsData[seat.seatNumber].cateory.name.toUpperCase(),
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              seatsData[seat.seatNumber].seatNumber.toString(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
