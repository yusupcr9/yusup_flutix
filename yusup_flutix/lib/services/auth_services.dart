part of 'services.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future signUp({
    required String email,
    required String password,
    required String name,
    required List<String> selectedGenres,
    required String selectedLanguage,
  }) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {}
  }
}
