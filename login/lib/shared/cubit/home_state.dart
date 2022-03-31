part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class LoginLoadingState extends HomeState {}

class LoginSuccessState extends HomeState {
  final User? user;
  LoginSuccessState(this.user);
}

class LoginErrorState extends HomeState {
  final String error;
  LoginErrorState(this.error);
}

class SignupLoadingState extends HomeState {}

class SignupSuccessState extends HomeState {}

class SignupErrorState extends HomeState {
  final String error;
  SignupErrorState(this.error);
}
