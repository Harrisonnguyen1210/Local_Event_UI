import 'package:flutter/material.dart';
import 'package:local_event/providers/category_provider.dart';
import 'package:local_event/providers/event_provider.dart';
import 'package:local_event/widgets/event_card.dart';
import 'package:provider/provider.dart';

class EventList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final eventProvider = Provider.of<EventProvider>(context);
    final categoryProvider = Provider.of<CategoryProvider>(context);
    final loadedFilterEvents =
        eventProvider.filterEvent(categoryProvider.selectedCategoryId);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: loadedFilterEvents.length,
        itemBuilder: (context, index) => EventCard(
          loadedFilterEvents: loadedFilterEvents,
          loadedFilterEvent: loadedFilterEvents[index],
        ),
      ),
    );
  }
}