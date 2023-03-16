import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/genre.entity.dart';

abstract class GenreRepository {
  Future<Either<Failure, Genre>> getGenres();
}
