part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<UserBloc, UserState>(
              builder: (_, userState) => (userState is UserLoaded)
                  ? Text(userState.user.name!)
                  : const SizedBox(),
            ),
            ElevatedButton(
                onPressed: () {
                  AuthServices.signOut();
                },
                child: const Text("Sign Out")),
          ],
        ),
      ),
    );
  }
}
