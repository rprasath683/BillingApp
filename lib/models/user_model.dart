class User {
  final String id;
  final String name;
  final String firstname;
  final String address;
  final int pincode;
  final int mobile_number;
  final String password;
  final String email;

  User({
    required this.id,
    required this.name,
    required this.firstname,
    required this.address,
    required this.pincode,
    required this.mobile_number,
    required this.password,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['_id'],
      name: json['name'],
      firstname: json['firstname'],
      address: json['address'],
      pincode: json['pincode'],
      mobile_number: json['mobile_number'],
      password: json['password'],
      email: json['email'],
    );
  }
}
