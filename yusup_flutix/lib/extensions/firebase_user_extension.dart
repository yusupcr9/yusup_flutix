part of 'extensions.dart';

extension FirebaseUserExtension on UserCredential {
  YUser convertToUser(
    {
      String name = 'No Name',
      List<String> selectedGenres = const [],
      String selectedLanguage = 'English',
      int balance = 50000
    }
  ) => YUser(id: this.credential., email: this.)
}