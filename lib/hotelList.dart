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
      title: 'Haven Hall',
      place: '5 Howard Rd, Shanklin ',
      distance: 2,
      review: 36,
      picture: 'images/hotel1.jpg',
      price: '180',
      description:
          'Haven Hall in Shanklin provides adults only accommodations with a bar, a shared lounge and a terrace.\nThe property is located a 13-minute walk from Olympic Stadium, 3.9 km from Victoria Park and 5.3 km from Brick Lane.\nThe property provides a 24-hour front desk and free WiFi is available throughout the property. Each room comes with air conditioning and a flat-screen TV, and certain rooms at the hotel have a safety deposit box.\nGuest rooms include a private bathroom, free toiletries and bed linen.\nO2 Arena is 6.8 km from Snoozebox Olympic Park. The nearest airport is London City Airport, 8 km from the accommodation.\nCouples in particular like the location – they rated it 8.8 for a two-person trip.',
      photo1: 'images/hotel2.jpg',
      photo2: 'images/hotel3.jpg',
      photo3: 'images/hotel4.jpg',
    ),
    Hotel(
      title: 'Safestay Holland Park',
      place: 'Holland Park Ave, London',
      distance: 4.5,
      review: 61,
      picture: 'images/hotel7.jpg',
      price: '380',
      description:
          'Safestay Holland Park in London provides adults only accommodations with a bar, a shared lounge and a terrace.\nThe property is located a 13-minute walk from Olympic Stadium, 3.9 km from Victoria Park and 5.3 km from Brick Lane.\nThe property provides a 24-hour front desk and free WiFi is available throughout the property. Each room comes with air conditioning and a flat-screen TV, and certain rooms at the hotel have a safety deposit box.\nGuest rooms include a private bathroom, free toiletries and bed linen.\nO2 Arena is 6.8 km from Snoozebox Olympic Park. The nearest airport is London City Airport, 8 km from the accommodation.\nCouples in particular like the location – they rated it 8.8 for a two-person trip.',
      photo1: 'images/hotel3.jpg',
      photo2: 'images/hotel1.jpg',
      photo3: 'images/hotel6.jpg',
    ),
    Hotel(
      title: 'Grand Flight Hotel',
      place: 'Portland, Manchester',
      distance: 216,
      review: 88,
      picture: 'images/hotel3.jpg',
      price: '275',
      description:
          'Grand Flight Hotel in Manchester provides adults only accommodations with a bar, a shared lounge and a terrace.\nThe property is located a 13-minute walk from Olympic Stadium, 3.9 km from Victoria Park and 5.3 km from Brick Lane.\nThe property provides a 24-hour front desk and free WiFi is available throughout the property. Each room comes with air conditioning and a flat-screen TV, and certain rooms at the hotel have a safety deposit box.\nGuest rooms include a private bathroom, free toiletries and bed linen.\nO2 Arena is 6.8 km from Snoozebox Olympic Park. The nearest airport is London City Airport, 8 km from the accommodation.\nCouples in particular like the location – they rated it 8.8 for a two-person trip.',
      photo1: 'images/hotel1.jpg',
      photo2: 'images/hotel2.jpg',
      photo3: 'images/hotel4.jpg',
    ),
    Hotel(
      title: 'The Gregory',
      place: 'Eglantine, Belfast',
      distance: 250,
      review: 36,
      picture: 'images/hotel4.jpg',
      price: '530',
      description:
          'The Gregory in Belfast provides adults only accommodations with a bar, a shared lounge and a terrace.\nThe property is located a 13-minute walk from Olympic Stadium, 3.9 km from Victoria Park and 5.3 km from Brick Lane.\nThe property provides a 24-hour front desk and free WiFi is available throughout the property. Each room comes with air conditioning and a flat-screen TV, and certain rooms at the hotel have a safety deposit box.\nGuest rooms include a private bathroom, free toiletries and bed linen.\nO2 Arena is 6.8 km from Snoozebox Olympic Park. The nearest airport is London City Airport, 8 km from the accommodation.\nCouples in particular like the location – they rated it 8.8 for a two-person trip.',
      photo1: 'images/hotel1.jpg',
      photo2: 'images/hotel2.jpg',
      photo3: 'images/hotel3.jpg',
    ),
    Hotel(
      title: 'Dubai Marina',
      place: 'Dubai',
      distance: 355,
      review: 47,
      picture: 'images/hotel8.jpg',
      price: '730',
      description:
          'Dubai Marin in Dubai provides adults only accommodations with a bar, a shared lounge and a terrace.\nThe property is located a 13-minute walk from Olympic Stadium, 3.9 km from Victoria Park and 5.3 km from Brick Lane.\nThe property provides a 24-hour front desk and free WiFi is available throughout the property. Each room comes with air conditioning and a flat-screen TV, and certain rooms at the hotel have a safety deposit box.\nGuest rooms include a private bathroom, free toiletries and bed linen.\nO2 Arena is 6.8 km from Snoozebox Olympic Park. The nearest airport is London City Airport, 8 km from the accommodation.\nCouples in particular like the location – they rated it 8.8 for a two-person trip.',
      photo1: 'images/hotel5.jpg',
      photo2: 'images/hotel9.jpg',
      photo3: 'images/hotel1.jpg',
    ),
    Hotel(
      title: 'Mandalay Picton',
      place: '65 Union St, London',
      distance: 8,
      review: 21,
      picture: 'images/hotel6.jpg',
      price: '560',
      description:
          'Mandalay Picton in London provides adults only accommodations with a bar, a shared lounge and a terrace.\nThe property is located a 13-minute walk from Olympic Stadium, 3.9 km from Victoria Park and 5.3 km from Brick Lane.\nThe property provides a 24-hour front desk and free WiFi is available throughout the property. Each room comes with air conditioning and a flat-screen TV, and certain rooms at the hotel have a safety deposit box.\nGuest rooms include a private bathroom, free toiletries and bed linen.\nO2 Arena is 6.8 km from Snoozebox Olympic Park. The nearest airport is London City Airport, 8 km from the accommodation.\nCouples in particular like the location – they rated it 8.8 for a two-person trip.',
      photo1: 'images/hotel3.jpg',
      photo2: 'images/hotel5.jpg',
      photo3: 'images/hotel6.jpg',
    ),
    Hotel(
      title: 'Queen Hotel',
      place: 'Tyburnia, London',
      distance: 3,
      review: 13,
      picture: 'images/hotel2.jpg',
      price: '220',
      description:
          'Queen Hotel in London provides adults only accommodations with a bar, a shared lounge and a terrace.\nThe property is located a 13-minute walk from Olympic Stadium, 3.9 km from Victoria Park and 5.3 km from Brick Lane.\nThe property provides a 24-hour front desk and free WiFi is available throughout the property. Each room comes with air conditioning and a flat-screen TV, and certain rooms at the hotel have a safety deposit box.\nGuest rooms include a private bathroom, free toiletries and bed linen.\nO2 Arena is 6.8 km from Snoozebox Olympic Park. The nearest airport is London City Airport, 8 km from the accommodation.\nCouples in particular like the location – they rated it 8.8 for a two-person trip.',
      photo1: 'images/hotel1.jpg',
      photo2: 'images/hotel3.jpg',
      photo3: 'images/hotel4.jpg',
    ),
    Hotel(
      title: 'Britania',
      place: 'Marsh Wall, London',
      distance: 5,
      review: 47,
      picture: 'images/hotel5.jpg',
      price: '495',
      description:
          'Britania in London provides adults only accommodations with a bar, a shared lounge and a terrace.\nThe property is located a 13-minute walk from Olympic Stadium, 3.9 km from Victoria Park and 5.3 km from Brick Lane.\nThe property provides a 24-hour front desk and free WiFi is available throughout the property. Each room comes with air conditioning and a flat-screen TV, and certain rooms at the hotel have a safety deposit box.\nGuest rooms include a private bathroom, free toiletries and bed linen.\nO2 Arena is 6.8 km from Snoozebox Olympic Park. The nearest airport is London City Airport, 8 km from the accommodation.\nCouples in particular like the location – they rated it 8.8 for a two-person trip.',
      photo1: 'images/hotel4.jpg',
      photo2: 'images/hotel1.jpg',
      photo3: 'images/hotel3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
              'Top Destinations',
              style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
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
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(18),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              spreadRadius: 4,
                              blurRadius: 6,
                              offset: const Offset(0, 3)),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 140,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: const Radius.circular(18),
                                topRight: const Radius.circular(18),
                              ),
                              // color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(hotel.picture),
                                fit: BoxFit.cover,
                              ),
                            ),
                            // child: Stack(
                            //   children: [
                            //     Positioned(
                            //         top: 5,
                            //         right: -15,
                            //         child: MaterialButton(
                            //           color: Colors.white,
                            //           shape: CircleBorder(),
                            //           onPressed: () {
                            //             // setState(() {
                            //             //   _iconColor = k_green;
                            //             // });
                            //           },
                            //           child: IconButton(
                            //             icon: (_isFavorited
                            //                 ? const Icon(Icons.favorite)
                            //                 : const Icon(
                            //                     Icons.favorite_border)),
                            //             color: k_green,
                            //             onPressed: () {
                            //               _toggleFavorite();
                            //             },
                            //           ),
                            //         ))
                            //   ],
                            // ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                            margin: const EdgeInsets.symmetric(horizontal: 10),
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
                                    const Icon(
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
                            margin: const EdgeInsets.fromLTRB(10, 3, 10, 0),
                            child: Row(
                              children: [
                                Row(
                                  children: const [
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
                                const SizedBox(
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
