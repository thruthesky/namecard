import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class NameCardFirebaseUser {
  NameCardFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

NameCardFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<NameCardFirebaseUser> nameCardFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<NameCardFirebaseUser>(
            (user) => currentUser = NameCardFirebaseUser(user));
