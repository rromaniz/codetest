part of 'poke_cubit.dart';

class PokeState extends Equatable {
  const PokeState({
    this.personaje,
  });

  final String? personaje;

  PokeState copywith({String? personaje}) =>
      PokeState(personaje: personaje ?? this.personaje);

  @override
  List<Object?> get props => [personaje];
}
