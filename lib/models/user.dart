class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 002,
        name: "Jamil U",
      username: "Jamil20",
      email: "jamil20@gmail.com",
      profilePhoto: "https://pbs.twimg.com/media/E0c2DxNUUAMpYAF.jpg",
      phoneNumber: "08999999999",
    );
  }
}
