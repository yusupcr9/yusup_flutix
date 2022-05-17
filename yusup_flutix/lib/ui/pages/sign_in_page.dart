part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In Page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              SignInSignUpResult _result = await AuthServices.signIn(
                  email: "jennie@blackpink.com", password: "123456");
              if (_result.user == null) {
                print(_result.message);
              } else {
                print(_result.user.toString());
              }
            },
            child: Text("Sign In")),
      ),
    );
  }
}
