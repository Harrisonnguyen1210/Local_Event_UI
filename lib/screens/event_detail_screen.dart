import 'package:flutter/material.dart';
import 'package:local_event/models/event.dart';
import 'package:local_event/widgets/detail_curved_background.dart';
import 'package:local_event/widgets/event_gallery.dart';
import 'package:local_event/widgets/guest_carousel.dart';

class EventDetailScreen extends StatelessWidget {
  static const route = '/event_detail';

  @override
  Widget build(BuildContext context) {
    final loadedEvent = ModalRoute.of(context).settings.arguments as Event;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            DetailCurvedBackground(
                screenHeight: MediaQuery.of(context).size.height, imagePath: loadedEvent.imagePath,),
            ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    padding: EdgeInsets.only(top: 24, left: 16),
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
                      right: MediaQuery.of(context).size.width / 6,
                      top: 24),
                  child: Column(
                    children: <Widget>[
                      Text(
                        loadedEvent.title,
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
                            loadedEvent.location,
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 48, left: 24),
                  child: Text(
                    'GUESTS',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                ),
                GuestCarousel(loadedEvent.guests),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 36),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: loadedEvent.punchLine1,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            TextSpan(text: ' '),
                            TextSpan(
                              text: loadedEvent.punchLine2,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(loadedEvent.description),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 24),
                        child: Text(
                          'GALLERY',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      EventGallery(loadedEvent.galleryImages)
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
