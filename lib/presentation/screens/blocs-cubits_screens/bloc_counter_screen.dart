import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../blocs/counter_bloc/counter_bloc.dart';

class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: const _BlocCounterView(),
    );
  }
}

class _BlocCounterView extends StatelessWidget {
  const _BlocCounterView();

  void increaseCounterBy(BuildContext context, [int value = 1]) {
    // context.read<CounterBloc>().add(CounterIncreased(value));
    context.read<CounterBloc>().increaseCounterBy(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.select((CounterBloc bloc) {
          return Text('Bloc Counter : ${bloc.state.transactionCount}');
        }),
        leading: BackButton(
          onPressed: () => context.go('/'),
        ),
        actions: [
          IconButton(
              onPressed: () {
                // context.read<CounterBloc>().add(const CounterReset());
                context.read<CounterBloc>().resetCounter();
              },
              icon: const Icon(Icons.refresh_rounded))
        ],
      ),
      body: Center(
        child: context.select(
          (CounterBloc bloc) => Text('Counter Value: ${bloc.state.counter}'),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            onPressed: () {
              increaseCounterBy(context, 3);
            },
            child: const Text('+3'),
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: '2',
            onPressed: () {
              increaseCounterBy(context, 2);
            },
            child: const Text('+2'),
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: '3',
            onPressed: () {
              increaseCounterBy(context);
            },
            child: const Text('+1'),
          ),
        ],
      ),
    );
  }
}
