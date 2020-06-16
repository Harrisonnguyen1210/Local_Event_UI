class Event {
  final String imagePath,
      title,
      description,
      location,
      duration,
      punchLine1,
      punchLine2;
  final List<int> categoryIds;
  final List<String> guests, galleryImages;

  Event({
    this.imagePath,
    this.title,
    this.description,
    this.location,
    this.duration,
    this.punchLine1,
    this.punchLine2,
    this.categoryIds,
    this.galleryImages,
    this.guests
  });
}
