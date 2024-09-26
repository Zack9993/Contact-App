
class Contact {
  String name;
  String email;
  dynamic phoneNumber;
  bool isFavorite;

  Contact({
    required this.name,
    required this.email,
    required this.phoneNumber,
    this.isFavorite = false,
  });
}
