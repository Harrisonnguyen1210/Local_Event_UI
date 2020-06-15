import 'package:flutter/material.dart';
import 'package:local_event/screens/event_detail_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  EventDetailScreen.route: (context) => EventDetailScreen(),
};