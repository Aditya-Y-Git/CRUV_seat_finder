enum Category { lower, middle, upper, sideLower, sideUpper }

class Seat {
  const Seat({required this.seatNumber, required this.cateory});

  final int seatNumber;
  final Category cateory;
}
