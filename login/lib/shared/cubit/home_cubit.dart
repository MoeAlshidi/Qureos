import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/service/dio_helper.dart';
import 'package:login/service/end_points.dart';

import 'user_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(BuildContext context) {
    return BlocProvider.of((context));
  }

  User? user;

  void userLogin({
    required String email,
    required String password,
  }) {
    emit(LoginLoadingState());
    DioHelper.postData(url: LOGIN, data: {
      'email': email,
      'password': password,
    }).then((value) {
      user = User.fromJson(value.data);
      print(user);
      emit(LoginSuccessState(user!));
    }).catchError((error) {
      emit(LoginErrorState(error.toString()));
    });
  }

  void userReg({
    required String email,
    required String password,
  }) {
    emit(SignupLoadingState());
    DioHelper.postData(url: LOGIN, data: {
      'email': email,
      'password': password,
    }).then((value) {
      emit(SignupSuccessState());
    }).catchError((error) {
      emit(SignupErrorState(error.toString()));
    });
  }
}
