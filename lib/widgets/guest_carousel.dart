import 'package:flutter/material.dart';

class GuestCarousel extends StatelessWidget {
  final List<String> guests;

  GuestCarousel(this.guests);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 24, right: 24),
        scrollDirection: Axis.horizontal,
        itemCount: guests.length,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.only(right: 8),
          child: Center(
            child: CircleAvatar(
              backgroundColor: Theme.of(context).accentColor,
              radius: 50,
              backgroundImage: NetworkImage(
                  guests[index]),
            ),
          ),
        ),
      ),
    );
  }
}
