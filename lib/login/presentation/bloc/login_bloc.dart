import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<UserLogin>((event, emit) {
      //TODO if username and password accepted - emit LoginSuccess
      emit(LoginSuccess());

      //TODO if username and/or password not accepted - emit LoginFailed - Incorrect Password
      emit(LoginFailed(errorMessage: 'Incorrect Password'));

      //TODO if username and/or password not accepted - emit LoginFailed - Invalid Username
      emit(LoginFailed(errorMessage: 'Invalid Username'));
    });
  }
}
