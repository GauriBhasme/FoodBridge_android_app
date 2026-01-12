class UserModel {
  final String id;
  final String name;
  final String email;
  final String role;
  final int reputationPoints;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.reputationPoints,
  });

  factory UserModel.fromMap(Map<String, dynamic> data, String id) {
    return UserModel(
      id: id,
      name: data['name'],
      email: data['email'],
      role: data['role'],
      reputationPoints: data['reputationPoints'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'role': role,
      'reputationPoints': reputationPoints,
    };
  }
}
