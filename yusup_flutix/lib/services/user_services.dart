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

  static Future<YUser> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.doc(id).get();
    return YUser(
      id,
      snapshot['email'],
      name: snapshot['name'],
      profilePicture: snapshot['profilePicture'],
      selectedGenres: (snapshot['selectedGenres'] as List)
          .map((e) => e.toString())
          .toList(),
      selectedLanguage: snapshot['selectedLanguage'],
      balance: snapshot['balance'],
    );
  }
}
