import 'package:dicoding_expert/domain/entities/film_entity.dart';
import 'package:dicoding_expert/domain/repositories/film_repository.dart';
import 'package:dicoding_expert/state/data/data_state.dart';
import 'package:dicoding_expert/utils/enum.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SearchFilmUseCase {
  final FilmRepository _repository;

  const SearchFilmUseCase(this._repository);

  Future<DataState<List<FilmEntity>>> call(FilmType type, String query) async =>
      await _repository.searchFilms(type, query);
}
