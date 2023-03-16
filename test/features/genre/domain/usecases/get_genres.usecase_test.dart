import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:rawg_app/core/interfaces/use_case.dart';
import 'package:rawg_app/features/genre/domain/entities/game.entity.dart';
import 'package:rawg_app/features/genre/domain/entities/genre.entity.dart';
import 'package:rawg_app/features/genre/domain/entities/result.entity.dart';
import 'package:rawg_app/features/genre/domain/usecases/get_genres.usecase.dart';

import '../../genre.mocks.dart';

void main() {
  late MockGenreRepository mockGenreRepository;
  late GetGenresUseCase getGenresUseCase;

  setUp(() {
    mockGenreRepository = MockGenreRepository();
    getGenresUseCase = GetGenresUseCase(mockGenreRepository);
  });

  const genre = Genre(
    results: [
      Result(
        id: 1,
        name: 'tName',
        games: [
          Game(
            id: 1,
            name: 'tName',
          )
        ],
      ),
    ],
  );

  test(
    'should return a Genre Entity when the call is successfully',
    () async {
      //arrange(setup).
      when(() => mockGenreRepository.getGenres()).thenAnswer((_) async => const Right(genre));
      //act(run).
      final result = await getGenresUseCase(NoParams());
      //assert(verify).
      expect(result, equals(const Right(genre)));
    },
  );
}
