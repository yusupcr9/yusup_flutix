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
      YUser yuser = result.user!.convertToYUser(
          name: name,
          selectedGenres: selectedGenres,
          selectedLanguage: selectedLanguage);

      await UserServices.updateUser(yuser);

      return SignInSignUpResult(user: yuser);
    } catch (e) {
      return SignInSignUpResult(message: e.toString());
    }
  }
}

class SignInSignUpResult {
  final YUser? user;
  final String? message;

  SignInSignUpResult({this.user, this.message});
}
