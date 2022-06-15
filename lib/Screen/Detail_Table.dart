import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Detail_Table extends StatelessWidget {
  const Detail_Table({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "DETAIL",
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: Colors.black26, width: 2.0)),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  /// Name green house
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            child: Text(
                              "NAME GREENHOUSE",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Text(
                              "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  /// Date
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            child: Text(
                              "DATE",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Text(
                              "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  /// Temp
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            child: Text(
                              "TEMPARETURE",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Text(
                              "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  /// HUMI
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            child: Text(
                              "HUMIDITY",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Text(
                              "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  /// O2
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            child: Text(
                              "O2",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Text(
                              "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  /// Loaction
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            child: Text(
                              "LOCATION",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Text(
                              "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  /// Guess
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border:
                              Border.all(color: Colors.black26, width: 1.0)),
                      height: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            child: Text(
                              "GUESS",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Text(
                              "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
