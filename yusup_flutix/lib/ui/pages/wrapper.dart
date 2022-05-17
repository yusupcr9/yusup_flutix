part of 'pages.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User? firebaseUser = Provider.of<User?>(context);
    if (firebaseUser == null) {
      return SignInPage();
    } else {
      return MainPage();
    }
  }
}
