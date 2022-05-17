part of 'extensions.dart';

extension FirebaseUserExtension on User {
  FlutixUser convertToFlutixUser(
          {String name = "No Name",
          List<String> selectedGenres = const [],
          String selectedLanguage = "English",
          String profilePicture = "",
          int balance = 50000}) =>
      FlutixUser(uid, email!,
          name: name,
          selectedGenres: selectedGenres,
          selectedLanguage: selectedLanguage,
          profilePicture: profilePicture,
          balance: balance);

  Future<FlutixUser> fromFireStore() async => await UserServices.getUser(uid);
}
