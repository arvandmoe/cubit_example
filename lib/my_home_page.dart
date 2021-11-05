import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import 'counter_cubit.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterCubit = context.watch<CounterCubit>();
    return Scaffold(
        appBar: AppBar(
          title: Text('Cubit Example'),
        ),
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${counterCubit.state}',
                style: Theme.of(context).textTheme.headline4,
              ),
              Row(children: [
                  ElevatedButton(
                    onPressed: counterCubit.increment,
                    child: const Icon(Icons.add),
                  ),
                  ElevatedButton(
                    onPressed: counterCubit.decrement,
                    child: const Icon(Icons.remove),
                  ),
                ],
              )
            ])));
  }
}
