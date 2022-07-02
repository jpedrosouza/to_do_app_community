import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:to_do_app_community/src/database/models/user.dart';

class UsersController {
  FirebaseFirestore db = FirebaseFirestore.instance;

  Future<void> createUser(User user) async {
    await db.collection('users').doc(user.id).set({
      'id': user.id,
      'email': user.email,
      'full_name': user.fullName,
    });
  }

  Future<User> getUser(String id) async {
    final doc = await db.collection('users').doc(id).get();
    return User.fromMap(doc.data()!);
  }

  Future<void> deleteUser(String email) async {
    await db.collection('users').doc(email).delete();
  }
}
