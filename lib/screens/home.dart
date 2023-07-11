// This is the main screen where user can search for a seat number
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seat_finder/data/seats_data.dart';
import 'package:seat_finder/models/seat.dart';
import 'package:seat_finder/new_widgets/compartment.dart';
import 'package:tuple/tuple.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<Seat> upperSeats = [];
    for (var i = 0; i < 72; i += 8) {
      upperSeats.add(seatsData[i]);
    }

    List<Seat> lowerSeats = [];
    for (var i = 3; i < 72; i += 8) {
      lowerSeats.add(seatsData[i]);
    }

    List<Seat> sideSeats = [];
    for (int i = 1; i <= 72; i++) {
      if (i % 8 == 0) {
        sideSeats.add(seatsData[i]);
      }
    }

    List<Tuple3<Seat, Seat, Seat>> seatPairs = [];
    for (var i = 0; i < upperSeats.length; i++) {
      seatPairs.add(Tuple3(upperSeats[i], lowerSeats[i], sideSeats[i]));
    }

    return Scaffold(
        // body
        body: SafeArea(
      top: true,
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Seat Finder',
                textAlign: TextAlign.start,
                style: GoogleFonts.lilitaOne(
                    fontSize: 30,
                    color: const Color.fromARGB(255, 169, 215, 237),
                    letterSpacing: 1.5),
              ),
            ),

            // search bar
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(6.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Seat Number...',
                          hintStyle: TextStyle(
                            color: Colors.lightBlue,
                          ),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.white,
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
                        child: Text(
                          'Find',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      )),
                ],
              ),
            ),

            // seats
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, childAspectRatio: 2),
                  children: seatPairs
                      .map((e) => Compartment(
                            upperStart: e.item1.seatNumber + 1,
                            lowerStart: e.item2.seatNumber + 1,
                            sideStart: e.item3.seatNumber,
                          ))
                      .toList()),
            ),
          ],
        ),
      ),
    ));
  }
}
