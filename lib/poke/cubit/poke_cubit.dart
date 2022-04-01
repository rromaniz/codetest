import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

part 'poke_state.dart';

class PokeCubit extends Cubit<PokeState> {
  PokeCubit() : super(const PokeState()) {
    getPersonaje();
  }

  @override
  Future<void> getPersonaje() async {
    final url = Uri.parse('https://simpsons-quotes-api.herokuapp.com/quotes');
    final response = await http.get(url);
    if (response.statusCode == 200) {}
  }
}
