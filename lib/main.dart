import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const k_green = Color(0xFF00cccc);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Réservation Hotels',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchSection(),
            HotelSection(),
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[800],
        ),
        onPressed: null,
      ),
      title: Text(
        'Explorer',
        style: GoogleFonts.nunito(
            color: Colors.black, fontSize: 22, fontWeight: FontWeight.w800),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.favorite_outline,
            color: Colors.grey[800],
          ),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(
            Icons.place_rounded,
            color: Colors.grey[800],
          ),
          onPressed: null,
        ),
      ],
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}

class SearchSection extends StatelessWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                padding: const EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 5,
                        offset: Offset(1, 1),
                      ),
                    ]),
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: 'Paris',
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none),
                ),
              )),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 4,
                        offset: Offset(0, 4)),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.search,
                    size: 26,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10),
                    primary: k_green,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose Date',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '12 Dec - 22 Dec',
                      style:
                          GoogleFonts.nunito(color: Colors.black, fontSize: 17),
                    ),
                  ],
                ),
              ),
              Container(
                height: 30,
                child: VerticalDivider(
                  indent: 5,
                  endIndent: 0,
                  color: Colors.black12,
                  thickness: 3,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Number of Rooms',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '1 Room - 2 Adults',
                      style:
                          GoogleFonts.nunito(color: Colors.black, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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
                  '550 hotels founded',
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

class HotelCard extends StatelessWidget {
  final Map hotelData;
  HotelCard(this.hotelData);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage(hotelData['picture']),
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
                  hotelData['title'],
                  style: GoogleFonts.nunito(
                      fontSize: 18, fontWeight: FontWeight.w800),
                ),
                Text(
                  hotelData['price'] + '\€',
                  style: GoogleFonts.nunito(
                      fontSize: 18, fontWeight: FontWeight.w800),
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
                  hotelData['place'],
                  style: GoogleFonts.nunito(
                      fontSize: 15, color: Colors.grey.shade500),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.place,
                      color: k_green,
                      size: 14,
                    ),
                    Text(
                      hotelData['distance'].toString() + ' km to city',
                      style: GoogleFonts.nunito(
                          fontSize: 15, color: Colors.grey.shade500),
                    ),
                  ],
                ),
                Text(
                  'per night',
                  style: GoogleFonts.nunito(
                      fontSize: 15, color: Colors.grey.shade500),
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
                  hotelData['review'].toString() + ' reviews',
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
    );
  }
}
