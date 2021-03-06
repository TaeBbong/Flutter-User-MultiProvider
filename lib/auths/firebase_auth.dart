import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseAuthService with ChangeNotifier {
  FirebaseAuthService({auth}) : _auth = auth ?? FirebaseAuth.instance;
  FirebaseAuth _auth;
  User _currentUser;

  User getCurrentUser() {
    return _currentUser;
  }

  Future<User> signInEmailPW(
      {@required String email, @required String password}) async {
    final credential = EmailAuthProvider.credential(
      email: email,
      password: password,
    );
    final authResult = await _auth.signInWithCredential(credential);
    _currentUser = authResult.user;
    return authResult.user;
  }

  Future<User> signUpEmailPW(
      {@required String email, @required String password}) async {
    final authResult = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    return authResult.user;
  }
}
