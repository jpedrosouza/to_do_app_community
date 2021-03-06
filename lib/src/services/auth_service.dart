import 'package:firebase_auth/firebase_auth.dart';

/// This class is responsible to communicate with FirebaseAuth.

class AuthService {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  /// Check if user is logged in.
  Future<bool> checkIfLoggedIn() async {
    return firebaseAuth.currentUser != null;
  }

  /// Authenticate user with email and password.

  Future<UserCredential> signInWithEmailAndPassword(String email, String password) async {
    return await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
  }

  /// Create user account with email and password.

  Future<UserCredential> createUserWithEmailAndPassword(String email, String password) async {
    return await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
  }

  /// Get authenticated user id.

  Future<String> getUserId() async {
    return firebaseAuth.currentUser!.uid;
  }

  /// Get authenticated user email.
  
  Future<String> getUserEmail() async {
    return firebaseAuth.currentUser!.email!;
  }

  /// Sign out user.

  Future<void> signOut() async {
    return await firebaseAuth.signOut();
  }
}