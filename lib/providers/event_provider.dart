import 'package:flutter/cupertino.dart';
import 'package:local_event/models/event.dart';

class EventProvider extends ChangeNotifier {
  final List<Event> _events = [
    Event(
      imagePath: "https://cdn.tgdd.vn/Files/2019/06/19/1174302/duongchaycolormerun_800x450.jpg",
      title: "5 Kilometer Downtown Run",
      description: "",
      location: "Pleasant Park",
      duration: "3h",
      punchLine1: "Marathon!",
      punchLine2: "The latest fad in foodology, get the inside scoup.",
      galleryImages: [],
      categoryIds: [0, 1],
    ),
    Event(
      imagePath: "https://whatsnewindonesia.com/wp-content/uploads/2020/03/Cooking-IG_2.jpg",
      title: "Granite Cooking Class",
      description:
          "Guest list fill up fast so be sure to apply before handto secure a spot.",
      location: "Food Court Avenue",
      duration: "4h",
      punchLine1: "Granite Cooking",
      punchLine2: "The latest fad in foodology, get the inside scoup.",
      categoryIds: [0, 2],
      galleryImages: [
        "assets/event_images/cooking_1.jpeg",
        "assets/event_images/cooking_2.jpeg",
        "assets/event_images/cooking_3.jpeg"
      ],
    ),
    Event(
      imagePath: "https://blog.radissonblu.com/wp-content/uploads/2019/03/Crowd-At-Music-Concert-copenhagen.jpg",
      title: "Arijit Music Concert",
      description: "Listen to Arijit's latest compositions.",
      location: "D.Y. Patil Stadium, Mumbai",
      duration: "5h",
      punchLine1: "Music Lovers!",
      punchLine2: "The latest fad in foodology, get the inside scoup.",
      galleryImages: [
        "assets/event_images/cooking_1.jpeg",
        "assets/event_images/cooking_2.jpeg",
        "assets/event_images/cooking_3.jpeg"
      ],
      categoryIds: [0, 1],
    ),
    Event(
      imagePath: "https://static1.squarespace.com/static/572a1a4e8259b5cad2ac0fca/t/5b031e6f1ae6cf4792f21554/1526931067643/golf.jpg?format=1500w",
      title: "Season 2 Golf Estate",
      description: "",
      location: "NSIC Ground, Okhla",
      duration: "1d",
      punchLine1: "Golf!",
      punchLine2: "The latest fad in foodology, get the inside scoup.",
      galleryImages: [
        "assets/event_images/cooking_1.jpeg",
        "assets/event_images/cooking_2.jpeg",
        "assets/event_images/cooking_3.jpeg"
      ],
      categoryIds: [0, 3],
    ),
  ];

  List<Event> get events {
    return _events;
  }

  List<Event> filterEvent(int categoryId) {
    return _events.where((event) => event.categoryIds.contains(categoryId)).toList();
  }
}
