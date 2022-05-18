import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:yusup_flutix/bloc/blocs.dart';
import 'package:yusup_flutix/services/services.dart';
import 'package:yusup_flutix/ui/pages/pages.dart';

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
    return StreamProvider.value(
      value: AuthServices.userStream,
      initialData: FirebaseAuth.instance.currentUser,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => PageBloc()),
          BlocProvider(create: (_) => UserBloc()),
        ],
        child: MaterialApp(
            title: 'Yusup Flutix',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: Wrapper()),
      ),
    );
  }
}
