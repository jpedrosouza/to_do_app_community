import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:to_do_app_community/src/database/models/task.dart';

class TaksController {
  FirebaseFirestore db = FirebaseFirestore.instance;

  Future<void> createTask(Task task) async {
    await db.collection('tasks').doc(task.id).set(task.toMap());
  }

  Future<List<Task>> getTasksFromUserId(String userId) async {
    final query = await db.collection('tasks').where('user_id', isEqualTo: userId).get();
    return query.docs.map((doc) => Task.fromMap(doc.data())).toList();
  }

  Future<void> deleteTask(String id) async {
    await db.collection('tasks').doc(id).delete();
  }
}
