class User {
  final int id;
  final String name;
  final String lastname;
  final String email;
  final String photo;
  final List<String> favoriteArtists;

  User({
    required this.id,
    required this.name,
    required this.lastname,
    required this.email,
    required this.photo,
    required this.favoriteArtists,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"],
      name: json["name"],
      lastname: json["lastname"],
      email: json["email"],
      photo: json["photo"],
      favoriteArtists: List<String>.from(json["favoriteArtists"]),
    );
  }
}
