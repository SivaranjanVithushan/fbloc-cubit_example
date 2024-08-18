import 'package:first_bloc/bloc/counter_bloc.dart';
import 'package:first_bloc/cubit/counter_cubit.dart';
import 'package:first_bloc/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => CounterBloc()),
      ],
      child: MaterialApp(
        title: 'First Bloc',
        theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
        home: const MyHomePage(),
      ),
    );
  }
}
