import 'package:flutter/material.dart';
import 'package:local_event/providers/category_provider.dart';
import 'package:local_event/providers/event_provider.dart';
import 'package:local_event/routes.dart';
import 'package:local_event/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CategoryProvider()),
        ChangeNotifierProvider(create: (context) => EventProvider()),
      ],
      child: MaterialApp(
        title: 'Local Event',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xff8549a7),
          accentColor: Colors.white,
        ),
        home: HomeScreen(),
        routes: routes,
      ),
    );
  }
}
