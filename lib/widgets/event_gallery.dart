import 'package:flutter/material.dart';

class EventGallery extends StatelessWidget {
  final List<String> galleryImages;

  const EventGallery(this.galleryImages);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: galleryImages.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => Container(
        height: 200,
        width: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            galleryImages[index],
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
