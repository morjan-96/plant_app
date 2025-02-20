import 'package:flutter/material.dart';
import 'package:plant/cubit/counter_cubit.dart';
import 'package:plant/presentation/screens/signin&signup/first.dart';
import 'package:plant/presentation/screens/signin&signup/login.dart';
import 'package:plant/presentation/screens/signin&signup/signup.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 0, 255, 204)),
          useMaterial3: true,
        ),
        home: const FirstPage(),
        routes: {
          '/first': (context) => const FirstPage(),
          '/login': (context) => const LogIn(),
          '/signup': (context) => const SignUp(),
        },
      ),
    );
  }
}
