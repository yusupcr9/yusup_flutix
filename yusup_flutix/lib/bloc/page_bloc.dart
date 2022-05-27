import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yusup_flutix/bloc/blocs.dart';
import 'package:yusup_flutix/models/models.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(OnInitialPage()) {
    on<PageEvent>((event, emit) async {
      if (event is GoToSplashPage) {
        emit(OnSplashPage());
      } else if (event is GoToLoginPage) {
        emit(OnLoginPage());
      } else if (event is GoToMainPage) {
        emit(OnMainPage());
      } else if (event is GoToRegistrationPage) {
        emit(OnRegistrationPage(event.registrationData));
      } else if (event is GoToPreferencenPage) {
        emit(OnPreferencePage(event.registrationData));
      } else if (event is GoToAccountConfirmationPage) {
        emit(OnAccountConfirmationPage(event.registrationData));
      }
    });
  }
}
