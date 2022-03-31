import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/shared/cubit/home_cubit.dart';

import '../shared/cubit/const.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          if (state is LoginSuccessState) {}
        },
        builder: (context, state) {
          final homecubit = HomeCubit.get(context);

          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: Text('Hello $email')),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(child: Text('Token number: $token'))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
