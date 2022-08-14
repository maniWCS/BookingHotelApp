import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

const k_green = Color(0xFF00cccc);

class SearchSection extends StatefulWidget {
  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  // const SearchSection({Key? key}) : super(key: key);
  String dropdownvalue_room = '1';
  static var today = DateTime.now();
  static var fiftyDaysFromNow = today.add(new Duration(days: 2));
  static final DateFormat formatter = DateFormat('MMM-dd');
  late String formattedCheckIn = formatter.format(today);
  late String formattedCheckOut = formatter.format(fiftyDaysFromNow);
  String date = "";
  DateTime selectedDateCheckIn = today;
  DateTime selectedDateCheckOut = fiftyDaysFromNow;
  var items = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];

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
                      hintText: 'London',
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
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Check-in',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          _selectDateCheckIn(context);
                        },
                        child: Text(formattedCheckIn,
                            style: GoogleFonts.nunito(
                                color: Colors.black, fontSize: 17))),
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
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Check-out',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // Text(
                    //   '12 Dec - 22 Dec',
                    //   style:
                    //       GoogleFonts.nunito(color: Colors.black, fontSize: 17),
                    // ),
                    TextButton(
                        onPressed: () {
                          _selectDateCheckOut(context);
                          // formattedCheckOut = selectedDateCheckOut.toString();
                        },
                        child: Text(formattedCheckOut,
                            style: GoogleFonts.nunito(
                                color: Colors.black, fontSize: 17))),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _selectDateCheckIn(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDateCheckIn,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDateCheckIn)
      setState(() {
        selectedDateCheckIn = selected;
        formattedCheckIn = formatter.format(selected).toString();
      });
  }

  _selectDateCheckOut(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDateCheckOut,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDateCheckOut)
      setState(() {
        selectedDateCheckOut = selected;
        formattedCheckOut = formatter.format(selected).toString();
      });
  }
}
