import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:to_do_app_community/src/database/models/task.dart';

/// This class is responsible for the tasks CRUD operations.
class TaksController {
  FirebaseFirestore db = FirebaseFirestore.instance;

  /// Register a new task in the database.

  Future<void> createTask(Task task) async {
    await db.collection('tasks').doc(task.id).set(task.toMap());
  }

  /// Get tasks by user id from the database.

  Future<List<Task>> getTasksFromUserId(String userId) async {
    final query = await db.collection('tasks').where('user_id', isEqualTo: userId).get();
    return query.docs.map((doc) => Task.fromMap(doc.data())).toList();
  }

  /// Update a task in the database.

  Future<void> updateTask(Task task) async {
    await db.collection('tasks').doc(task.id).update(task.toMap());
  }

  /// Delete a task from the database.

  Future<void> deleteTask(String id) async {
    await db.collection('tasks').doc(id).delete();
  }
}
