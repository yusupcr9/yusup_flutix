part of 'services.dart';

class UserServices {
  static CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> updateUser(YUser user) async {
    String genres = "";
    _userCollection.doc(user.id).set({
      'name': user.name,
      'email': user.email,
      'profilePicture': user.profilePicture,
      'selectedGenres': user.selectedGenres,
      'selectedLanguage': user.selectedLanguage,
      'balance': user.balance,
    });
  }
}
