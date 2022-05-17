part of 'extensions.dart';

extension FirebaseUserExtension on User {
  YUser convertToYUser(
          {String name = "No Name",
          List<String> selectedGenres = const [],
          String selectedLanguage = "English",
          String profilePicture = "",
          int balance = 50000}) =>
      YUser(uid, email!,
          name: name,
          selectedGenres: selectedGenres,
          selectedLanguage: selectedLanguage,
          profilePicture: profilePicture,
          balance: balance);

  Future<YUser> fromFireStore() async => await UserServices.getUser(uid);
}
