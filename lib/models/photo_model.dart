class Photo {
  final String id;
  final String altDescription;
  final String rawUrl;
  final String username;
  final String name;
  final String avatar;
  final int countSub;

  Photo({
      required this.id,
      required this.altDescription,
      required this.rawUrl,
      required this.username,
      required this.name,
      required this.avatar,
      required this.countSub
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      id: json["id"],
      altDescription: json["alt_description"] ?? "",
      rawUrl: json["urls"]["raw"],
      name: json["user"]["name"],
      username: json["user"]["username"],
      avatar: json["user"]["profile_image"]["medium"],
      countSub: json["user"]["total_likes"]
    );
  }
}