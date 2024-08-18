import 'package:first_bloc/bloc/counter_bloc.dart';
// import 'package:first_bloc/cubit/counter_cubit.dart';
import 'package:first_bloc/inc_dec_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            BlocBuilder<CounterBloc, int>(builder: (context, counter) {
              return Text('$counter',
                  style: Theme.of(context).textTheme.headlineLarge);
            }),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const IncDecPage()));
            },
            tooltip: 'Inc/Dec',
            child: const Text('+/-'),
          ),
          // FloatingActionButton(
          //   onPressed: () {
          //     counterCubit.increment();
          //   },
          //   tooltip: 'Increment',
          //   child: const Icon(Icons.add),
          // ),
          // const SizedBox(height: 8),
          // FloatingActionButton(
          //   onPressed: () {
          //     counterCubit.decrement();
          //   },
          //   tooltip: 'Decrement',
          //   child: const Icon(Icons.remove),
          // ),
        ],
      ),
    );
  }
}
