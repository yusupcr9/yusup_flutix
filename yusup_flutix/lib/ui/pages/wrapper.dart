part of 'pages.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User? firebaseUser = Provider.of<User?>(context);
    if (firebaseUser == null) {
      if (!(preventPageEvent is GoToSplashPage)) {
        preventPageEvent = GoToSplashPage();
        context.read<PageBloc>().add(preventPageEvent!);
      }
    } else {
      if (!(preventPageEvent is GoToMainPage)) {
        preventPageEvent = GoToMainPage();
        context.read<PageBloc>().add(preventPageEvent!);
      }
    }

    return BlocBuilder<PageBloc, PageState>(
        builder: (_, pageState) => (pageState is OnSplashPage)
            ? SplashPage()
            : (pageState is OnLoginPage)
                ? SignInPage()
                : MainPage());
  }
}
