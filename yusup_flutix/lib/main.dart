import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yusup_flutix/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Yusup Flutix',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      SignInSignUpResult result = await AuthServices.signUp(
                          email: "jennie@blackpink.com",
                          password: "123456",
                          name: "Jennie",
                          selectedGenres: [
                            'Action',
                            'Horror',
                            'Music',
                            'Drama'
                          ],
                          selectedLanguage: "Korean");
                      if (result.user == null) {
                        print(result.message);
                      } else {
                        print(result.user.toString());
                      }
                    },
                    child: Text("Sign Up"))
              ],
            ),
          ),
        ));
  }
}
