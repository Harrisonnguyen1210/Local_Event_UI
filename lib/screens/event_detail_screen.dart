import 'package:flutter/material.dart';
import 'package:local_event/widgets/detail_curved_background.dart';

class EventDetailScreen extends StatelessWidget {
  static const route = '/event_detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            DetailCurvedBackground(
                screenHeight: MediaQuery.of(context).size.height),
            ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 24, left: 24),
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 4,
                      right: MediaQuery.of(context).size.width / 6),
                  child: Column(
                    children: <Widget>[
                      Text(
                        '5 Kilometer Downtown Run',
                        style: TextStyle(
                          fontSize: 36,
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 2,
                            width: 20,
                            color: Theme.of(context).accentColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.location_on,
                            color: Theme.of(context).accentColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Pleasant Park',
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
