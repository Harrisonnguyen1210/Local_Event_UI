import 'package:flutter/material.dart';
import 'package:local_event/models/event.dart';
import 'package:local_event/screens/event_detail_screen.dart';

class EventCard extends StatelessWidget {
  EventCard({
    @required this.loadedFilterEvents,
    @required this.loadedFilterEvent,
  });

  final Event loadedFilterEvent;

  final List<Event> loadedFilterEvents;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(EventDetailScreen.route, arguments: loadedFilterEvent);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        elevation: 10,
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  loadedFilterEvent.imagePath,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    flex: 5,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 8, bottom: 4),
                          child: Text(
                            loadedFilterEvent.title,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                loadedFilterEvent.location,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            backgroundColor: Colors.black87,
                            value: 0.25,
                          ),
                        ),
                        Positioned(
                          child: Text(
                            loadedFilterEvent.duration,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
