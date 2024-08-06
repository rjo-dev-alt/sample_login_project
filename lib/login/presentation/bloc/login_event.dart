part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

final class UserLogin extends LoginEvent {
  final String username;
  final String password;

  UserLogin({required this.username, required this.password});
}
