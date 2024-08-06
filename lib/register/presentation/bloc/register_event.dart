part of 'register_bloc.dart';

@immutable
sealed class RegisterEvent {}

final class RegisterUser extends RegisterEvent {
  final String username;
  final String password;
  final String confirmPassword;

  RegisterUser({required this.username, required this.password, required this.confirmPassword});
}
