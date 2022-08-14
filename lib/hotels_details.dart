import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_reservation/models/hotel.dart';
import 'package:expandable_text/expandable_text.dart';

const k_green = Color(0xFF00cccc);

class HotelsDetails extends StatefulWidget {
  final Hotel hotel;
  const HotelsDetails({Key? key, required this.hotel}) : super(key: key);

  @override
  State<HotelsDetails> createState() => _HotelsDetailsState();
}

class _HotelsDetailsState extends State<HotelsDetails> {
  String dropdownvalue_adults = '1';
  String dropdownvalue_children = '1';

  var items = [
    '1',
    '2',
    '3',
    '4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          widget.hotel.title,
          style: GoogleFonts.nunito(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w800),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset(widget.hotel.picture),
            // const SizedBox(
            //   height: 10,
            // ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: ListView(
                // padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    child: Image.asset(widget.hotel.photo1),
                    width: 160,
                  ),
                  Container(
                    child: Image.asset(widget.hotel.photo2),
                    width: 160,
                  ),
                  Container(
                    child: Image.asset(widget.hotel.photo3),
                    width: 160,
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 60,
            // ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Description',
                        style: GoogleFonts.nunito(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      // Text(widget.hotel.description,
                      //     style: GoogleFonts.nunito(
                      //         color: Colors.black, fontSize: 15)),
                      ExpandableText(widget.hotel.description,
                          expandText: 'show more',
                          collapseText: 'show less',
                          maxLines: 3,
                          style: GoogleFonts.nunito(
                              color: Colors.black, fontSize: 15)),
                      const SizedBox(
                        height: 15,
                      ),
                      Text('Your stay will include:',
                          style: GoogleFonts.nunito(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 25,
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                FaIcon(FontAwesomeIcons.wifi),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Free WiFi'),
                                SizedBox(
                                  width: 60,
                                ),
                                FaIcon(FontAwesomeIcons.umbrellaBeach),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Sun Deck'),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            FaIcon(FontAwesomeIcons.solidSun),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Terrace'),
                            SizedBox(
                              width: 70,
                            ),
                            FaIcon(FontAwesomeIcons.tv),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Frat-screen TV'),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   width: 60,
                      // ),
                      Container(
                        width: double.infinity,
                        // padding:
                        //     const EdgeInsets.only(top: 20, left: 10, right: 10),
                        margin: EdgeInsets.only(
                          top: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Select Number of adults',
                                  style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            // const SizedBox(
                            //   width: 80,
                            // ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                DropdownButton(
                                  value: dropdownvalue_adults,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  elevation: 16,
                                  style:
                                      const TextStyle(color: Colors.deepPurple),
                                  underline: Container(
                                    height: 2,
                                    color: Colors.deepPurpleAccent,
                                  ),
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue_adults = newValue!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Select Number of children (< 4 yrs)',
                              style: GoogleFonts.nunito(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            DropdownButton(
                              // Initial Value
                              value: dropdownvalue_children,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              elevation: 16,
                              style: const TextStyle(color: Colors.deepPurple),
                              underline: Container(
                                height: 2,
                                color: Colors.deepPurpleAccent,
                              ),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue_children = newValue!;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        // width: 100,
        width: MediaQuery.of(context).size.width,
        height: 50,
        // alignment: Alignment.bottomCenter,
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Book Now',
            style: TextStyle(fontSize: 18),
          ),
          style: ElevatedButton.styleFrom(
            primary: k_green,
            // minimumSize: const Size.fromHeight(50),
          ),
        ),
      ),
    );
  }
}
