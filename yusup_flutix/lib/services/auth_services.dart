part of 'services.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<SignInSignUpResult> signUp({
    required String email,
    required String password,
    required String name,
    required List<String> selectedGenres,
    required String selectedLanguage,
  }) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FlutixUser yuser = result.user!.convertToFlutixUser(
          name: name,
          selectedGenres: selectedGenres,
          selectedLanguage: selectedLanguage);

      await UserServices.updateUser(yuser);

      return SignInSignUpResult(user: yuser);
    } catch (e) {
      return SignInSignUpResult(message: e.toString().split('] ')[1]);
    }
  }

  static Future<SignInSignUpResult> signIn(
      {required String email, required String password}) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FlutixUser yuser = await result.user!.fromFireStore();
      return SignInSignUpResult(user: yuser);
    } catch (e) {
      return SignInSignUpResult(message: e.toString().split('] ')[1]);
    }
  }

  static Future<void> signOut() async {
    await _auth.signOut();
  }

  static Stream<User?> get userStream {
    return _auth.authStateChanges();
  }
}

class SignInSignUpResult {
  final FlutixUser? user;
  final String? message;

  SignInSignUpResult({this.user, this.message});
}
