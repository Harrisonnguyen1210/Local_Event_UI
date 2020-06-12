import 'package:flutter/material.dart';
import 'package:local_event/widgets/category_carousel.dart';
import 'package:local_event/widgets/curved_background.dart';
import 'package:local_event/widgets/event_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            CurvedBackground(screenHeight: MediaQuery.of(context).size.height),
            ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24, vertical: 36),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('LOCAL EVENTS',
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                              )),
                          Icon(
                            Icons.person_outline,
                            color: Theme.of(context).accentColor,
                          ),
                        ],
                      ),
                      Text(
                        "What's up",
                        style: TextStyle(
                          fontSize: 36,
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                CategoryCarousel(),
                EventList(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
