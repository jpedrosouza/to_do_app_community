class User {
  late final String id;
  late final String email;
  late final String fullName;

  User(this.id, this.email, this.fullName);

  @override
  String toString() => 'User(id: $id, email: $email, fullName: $fullName)';

  static User fromMap(Map<String, dynamic> map) {
    return User(map['id'], map['email'], map['full_name']);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'full_name': fullName,
    };
  }
}
