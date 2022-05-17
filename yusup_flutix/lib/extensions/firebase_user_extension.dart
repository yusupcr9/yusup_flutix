part of 'extensions.dart';

extension FirebaseUserExtension on User {
  YUser convertToYUser(
          {String name = "No Name",
          List<String> selectedGenres = const [],
          String selectedLanguage = "English",
          String profilePicture = "",
          int balance = 50000}) =>
      YUser(this.uid, this.email!,
          name: name,
          selectedGenres: selectedGenres,
          selectedLanguage: selectedLanguage,
          profilePicture: profilePicture,
          balance: balance);
}
