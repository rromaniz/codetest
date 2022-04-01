import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testcodem/l10n/l10n.dart';
import 'package:testcodem/poke/poke.dart';

class PokePage extends StatelessWidget {
  const PokePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PokeCubit(),
      child: const PokeView(),
    );
  }
}

class PokeView extends StatelessWidget {
  const PokeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cubit = context.read<PokeCubit>();
    final l10n = context.l10n;
    return Scaffold(
        appBar: AppBar(
          title: Text(l10n.counterAppBarTitle),
        ),
        body: BlocBuilder<PokeCubit, PokeState>(
          builder: (context, state) {
            return Center(
              child: MaterialButton(
                onPressed: () async {
                  await _cubit.getPersonaje();
                },
                color: Colors.cyanAccent,
                child: const Text('Traer'),
              ),
            );
          },
        ));
  }
}
