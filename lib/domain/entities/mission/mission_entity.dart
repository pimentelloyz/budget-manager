class MissionEntity {
  final int id;
  final String? urlImage;
  final String createdAt;
  final String title;
  final String description;
  final String? releaseDate;
  final String? subtitle;
  final String? url;
  final int entityId;

  MissionEntity({
    required this.id,
    this.urlImage,
    required this.createdAt,
    required this.title,
    required this.description,
    this.subtitle,
    this.url,
    this.releaseDate,
    required this.entityId,
  });
}
