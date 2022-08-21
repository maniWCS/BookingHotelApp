import 'package:flutter/material.dart';
import 'package:hotel_reservation/londonList.dart';

class HotelSearch extends StatelessWidget {
  const HotelSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: MyAppBar(),
      body: Column(
        children: const [
          // SearchSection(),
          Expanded(child: LondonList()),
        ],
      ),
    );
  }
}
