part of 'models.dart';

class YUser extends Equatable {
  final String id;
  final String email;
  final String? name;
  final String? profilePicture;
  final List<String>? selectedGenres;
  final String? selectedLanguage;
  final int? balance;

  YUser(
      {required this.id,
      required this.email,
      this.name,
      this.profilePicture,
      this.selectedGenres,
      this.selectedLanguage,
      this.balance});
  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        email,
        name,
        profilePicture,
        selectedGenres,
        selectedLanguage,
        balance,
      ];
}
