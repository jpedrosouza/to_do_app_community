import 'package:cloud_firestore/cloud_firestore.dart';

class Task {
  late final String id;
  late final String userId;
  late final String name;
  late final String frequency;
  late final DocumentReference user;

  Task(this.id, this.name, this.frequency, this.userId, this.user);

  @override
  String toString() => 'Task(id: $id, userId: $userId, name: $name, frequency: $frequency, user: $user)';

  static Task fromMap(Map<String, dynamic> map) {
    return Task(
      map['id'],
      map['userId'],
      map['name'],
      map['frequency'],
      map['user'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'user_id': userId,
      'name': name,
      'frequency': frequency,
      'user': user,
    };
  }
}