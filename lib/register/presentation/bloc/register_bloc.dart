import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {
    on<RegisterEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<RegisterUser>((event, emit) {
      if (event.password != event.confirmPassword) {
        emit(RegisterFailed(errorMessage: 'Password mismatch'));
      } else {
        // //TODO everything is valid
        emit(RegisterSuccess());

        //TODO if username is invalid
        emit(RegisterFailed(errorMessage: 'Invalid Username'));
      }
    });
  }
}
