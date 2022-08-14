import 'package:flutter/material.dart';
import 'package:hotel_reservation/hotels_details.dart';
import 'package:hotel_reservation/models/hotel.dart';
import 'package:google_fonts/google_fonts.dart';

const k_green = Color(0xFF00cccc);

class HotelList extends StatefulWidget {
  const HotelList({Key? key}) : super(key: key);

  @override
  State<HotelList> createState() => _HotelListState();
}

class _HotelListState extends State<HotelList> {
  List<Hotel> hotels = [
    Hotel(
      title: 'Grand Royal Hotel',
      place: 'Webley, London',
      distance: 2,
      review: 36,
      picture: 'images/hotel1.jpg',
      price: '180',
      description:
          'Snoozebox Olympic Park in London provides adults only accommodations with a bar, a shared lounge and a terrace.\nThe property is located a 13-minute walk from Olympic Stadium, 3.9 km from Victoria Park and 5.3 km from Brick Lane.\nThe property provides a 24-hour front desk and free WiFi is available throughout the property. Each room comes with air conditioning and a flat-screen TV, and certain rooms at the hotel have a safety deposit box.\nGuest rooms include a private bathroom, free toiletries and bed linen.\nO2 Arena is 6.8 km from Snoozebox Olympic Park. The nearest airport is London City Airport, 8 km from the accommodation.\nCouples in particular like the location – they rated it 8.8 for a two-person trip.',
      photo1: 'images/hotel2.jpg',
      photo2: 'images/hotel3.jpg',
      photo3: 'images/hotel4.jpg',
    ),
    Hotel(
      title: 'Queen Hotel',
      place: 'Webley, London',
      distance: 3,
      review: 13,
      picture: 'images/hotel2.jpg',
      price: '220',
      description:
          'Snoozebox Olympic Park in London provides adults only accommodations with a bar, a shared lounge and a terrace.\nThe property is located a 13-minute walk from Olympic Stadium, 3.9 km from Victoria Park and 5.3 km from Brick Lane.\nThe property provides a 24-hour front desk and free WiFi is available throughout the property. Each room comes with air conditioning and a flat-screen TV, and certain rooms at the hotel have a safety deposit box.\nGuest rooms include a private bathroom, free toiletries and bed linen.\nO2 Arena is 6.8 km from Snoozebox Olympic Park. The nearest airport is London City Airport, 8 km from the accommodation.\nCouples in particular like the location – they rated it 8.8 for a two-person trip.',
      photo1: 'images/hotel1.jpg',
      photo2: 'images/hotel3.jpg',
      photo3: 'images/hotel4.jpg',
    ),
    Hotel(
      title: 'Grand Flight Hotel',
      place: 'Webley, London',
      distance: 6,
      review: 88,
      picture: 'images/hotel3.jpg',
      price: '275',
      description:
          'Snoozebox Olympic Park in London provides adults only accommodations with a bar, a shared lounge and a terrace.\nThe property is located a 13-minute walk from Olympic Stadium, 3.9 km from Victoria Park and 5.3 km from Brick Lane.\nThe property provides a 24-hour front desk and free WiFi is available throughout the property. Each room comes with air conditioning and a flat-screen TV, and certain rooms at the hotel have a safety deposit box.\nGuest rooms include a private bathroom, free toiletries and bed linen.\nO2 Arena is 6.8 km from Snoozebox Olympic Park. The nearest airport is London City Airport, 8 km from the accommodation.\nCouples in particular like the location – they rated it 8.8 for a two-person trip.',
      photo1: 'images/hotel1.jpg',
      photo2: 'images/hotel2.jpg',
      photo3: 'images/hotel4.jpg',
    ),
    Hotel(
      title: 'Hilton',
      place: 'Webley, London',
      distance: 2,
      review: 36,
      picture: 'images/hotel4.jpg',
      price: '530',
      description:
          'Snoozebox Olympic Park in London provides adults only accommodations with a bar, a shared lounge and a terrace.\nThe property is located a 13-minute walk from Olympic Stadium, 3.9 km from Victoria Park and 5.3 km from Brick Lane.\nThe property provides a 24-hour front desk and free WiFi is available throughout the property. Each room comes with air conditioning and a flat-screen TV, and certain rooms at the hotel have a safety deposit box.\nGuest rooms include a private bathroom, free toiletries and bed linen.\nO2 Arena is 6.8 km from Snoozebox Olympic Park. The nearest airport is London City Airport, 8 km from the accommodation.\nCouples in particular like the location – they rated it 8.8 for a two-person trip.',
      photo1: 'images/hotel1.jpg',
      photo2: 'images/hotel2.jpg',
      photo3: 'images/hotel3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var nombreHotel = hotels.length;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Hotels'),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$nombreHotel hotels founded',
              style: GoogleFonts.nunito(color: Colors.black, fontSize: 15),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: hotels.length,
                itemBuilder: (context, index) {
                  final hotel = hotels[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HotelsDetails(hotel: hotel)));
                    },
                    child: Container(
                      height: 230,
                      width: double.infinity,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(18),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              spreadRadius: 4,
                              blurRadius: 6,
                              offset: Offset(0, 3)),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(18),
                                topRight: Radius.circular(18),
                              ),
                              // color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(hotel.picture),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                    top: 5,
                                    right: -15,
                                    child: MaterialButton(
                                      color: Colors.white,
                                      shape: CircleBorder(),
                                      onPressed: () {},
                                      child: Icon(
                                        Icons.favorite_outline,
                                        color: k_green,
                                        size: 20,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  hotel.title,
                                  style: GoogleFonts.nunito(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  hotel.price + '\€',
                                  style: GoogleFonts.nunito(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  hotel.place,
                                  style: GoogleFonts.nunito(
                                      fontSize: 15,
                                      color: Colors.grey.shade500),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.place,
                                      color: k_green,
                                      size: 14,
                                    ),
                                    Text(
                                      hotel.distance.toString() + ' km to city',
                                      style: GoogleFonts.nunito(
                                          fontSize: 15,
                                          color: Colors.grey.shade500),
                                    ),
                                  ],
                                ),
                                Text(
                                  'per night',
                                  style: GoogleFonts.nunito(
                                      fontSize: 15,
                                      color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 3, 10, 0),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star_rate,
                                      color: k_green,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star_rate,
                                      color: k_green,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star_rate,
                                      color: k_green,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star_rate,
                                      color: k_green,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: k_green,
                                      size: 14,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  hotel.review.toString() + ' reviews',
                                  style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      color: Colors.grey.shade500,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
