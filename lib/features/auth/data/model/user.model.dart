class AppUser {
  final String id;
  final String name;
  final String email;
  final String? phoneNumber;
  final String? role;
  final bool? isEmailVerified;
  final String? token;

  AppUser({
    required this.id,
    required this.name,
    required this.email,
    this.phoneNumber,
    this.role,
    this.isEmailVerified,
    this.token,
  });

  factory AppUser.fromJson(Map<String, dynamic> json) {
    return AppUser(
      id: json['_id'],
      name: json['username'] ?? json['name'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      role: json['role'],
      isEmailVerified: json['isEmailVerified'],
      token: json['token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'username': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'role': role,
      'isEmailVerified': isEmailVerified,
      'token': token,
    };
  }
}
