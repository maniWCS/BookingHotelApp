import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'hotel_card.dart';

const k_green = Color(0xFF00cccc);

class HotelSection extends StatelessWidget {
  final List hotelList = [
    {
      'title': 'Grand Royl Hotel',
      'place': 'Webley, London',
      'distance': 2,
      'review': 36,
      'picture': 'images/hotel1.jpg',
      'price': '180',
    },
    {
      'title': 'Queen Hotel',
      'place': 'Webley, London',
      'distance': 3,
      'review': 13,
      'picture': 'images/hotel2.jpg',
      'price': '220',
    },
    {
      'title': 'Grand Flight Hotel',
      'place': 'Webley, London',
      'distance': 6,
      'review': 88,
      'picture': 'images/hotel3.jpg',
      'price': '275',
    },
    {
      'title': 'Hilton',
      'place': 'Webley, London',
      'distance': 2,
      'review': 36,
      'picture': 'images/hotel4.jpg',
      'price': '530',
    },
  ];

  @override
  Widget build(BuildContext context) {
    var nombreHotel = hotelList.length;
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$nombreHotel hotels founded',
                  style: GoogleFonts.nunito(color: Colors.black, fontSize: 15),
                ),
                Row(
                  children: [
                    Text(
                      'Filter',
                      style:
                          GoogleFonts.nunito(color: Colors.black, fontSize: 15),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.filter_list_outlined,
                        color: k_green,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: hotelList.map((hotel) {
              return HotelCard(hotel);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
