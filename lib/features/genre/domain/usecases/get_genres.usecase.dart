import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/interfaces/use_case.dart';
import '../entities/genre.entity.dart';
import '../repositories/genre.repository.dart';

class GetGenresUseCase implements UseCase<Genre, NoParams> {
  final GenreRepository genreRepository;

  GetGenresUseCase(this.genreRepository);

  @override
  Future<Either<Failure, Genre>> call(NoParams params) async => genreRepository.getGenres();
}
