import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study/Screen/Detail_Table.dart';

class HomePages extends StatefulWidget {
  final String accesstoken;

  const HomePages({Key? key, required this.accesstoken}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            GridView_Home(),
            SizedBox(
              height: 20,
            ),
            Table_Parameter()
          ],
        ));
  }
}

/// Table Parameter

class Table_Parameter extends StatelessWidget {
  const Table_Parameter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  height: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.green[300],
                          child: Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(70, 3, 0, 0),
                                  child: Container(
                                    width: 200,
                                    child: Text(("greenhouses") +
                                        ("-") +
                                        ("25/5/2022")),
                                  )),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 3, 0, 0),
                                    child: Container(
                                      child: GestureDetector(
                                        /// Push data here
                                        onTap: (() {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Detail_Table()));
                                        }),
                                        child: Icon(
                                          Icons.details_sharp,
                                          color: Colors.blue,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 70,
                            width: 100,
                            color: Colors.grey[200],
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text("Tempareture"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text("Humidity"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text("O2"),
                                ),
                              ],
                            ),
                          ),

                          ///Container Data -

                          Container(
                            height: 70,
                            width: 295,
                            color: Colors.grey[200],
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    "50.11",
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    "56.78",
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    "29.00",
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}

/// Grid view home

class GridView_Home extends StatelessWidget {
  const GridView_Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      children: [
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //icon
                  Icon(
                    Icons.now_wallpaper,
                    color: Colors.green,
                    size: 50,
                  ),
                  Text(
                      style: GoogleFonts.robotoMono(
                          fontSize: 18, color: Colors.black87),
                      "NOW")
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 1,
                        offset: Offset(0, 3))
                  ]),
              // child: Icon,
            ),
          ),
        ),
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //icon
                  Icon(
                    Icons.calendar_view_month_sharp,
                    color: Colors.blue,
                    size: 50,
                  ),
                  Text(
                      style: GoogleFonts.robotoMono(
                          fontSize: 18, color: Colors.black87),
                      "CALENDAR")
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 1,
                        offset: Offset(0, 3))
                  ]),
              // child: Icon,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //icon
                Icon(
                  Icons.filter_vintage_rounded,
                  size: 50,
                  color: Colors.orange,
                ),
                Text(
                    style: GoogleFonts.robotoMono(
                        fontSize: 18, color: Colors.black87),
                    "GUESS")
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 1,
                      offset: Offset(0, 3))
                ]),
            // child: Icon,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //icon
                Icon(
                  Icons.view_list,
                  size: 50,
                  color: Colors.blue[200],
                ),
                Text(
                    style: GoogleFonts.robotoMono(
                        fontSize: 18, color: Colors.black87),
                    "LIST")
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 1,
                      offset: Offset(0, 3))
                ]),
            // child: Icon,
          ),
        ),
      ],
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 10),
    );
  }
}
