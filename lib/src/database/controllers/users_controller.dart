import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:to_do_app_community/src/database/models/user.dart';

/// This class is responsible for the users CRUD operations.
class UsersController {
  FirebaseFirestore db = FirebaseFirestore.instance;

  /// Register user in the database.

  Future<void> createUser(User user) async {
    await db.collection('users').doc(user.id).set({
      'id': user.id,
      'email': user.email,
      'full_name': user.fullName,
    });
  }

  /// Get user by id from the database.

  Future<User> getUser(String id) async {
    final doc = await db.collection('users').doc(id).get();
    return User.fromMap(doc.data()!);
  }

  /// Update user in the database.

  Future<void> updateUser(User user) async {
    await db.collection('users').doc(user.id).update(user.toMap());
  }

  /// Delete user from the database.

  Future<void> deleteUser(String email) async {
    await db.collection('users').doc(email).delete();
  }

  /// Get DocumentReference of the user from the database.

  Future<DocumentReference> getUserDocumentReference(String uuid) async {
    final doc = await db.collection('users').doc(uuid).get();
    return doc.reference;
  }
}
