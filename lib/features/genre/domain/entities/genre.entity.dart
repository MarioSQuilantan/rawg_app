import 'package:equatable/equatable.dart';

import 'result.entity.dart';

class Genre extends Equatable {
  const Genre({
    this.count,
    this.next,
    this.previous,
    required this.results,
  });

  final int? count;
  final dynamic next;
  final dynamic previous;
  final List<Result>? results;

  @override
  List<Object?> get props => [count, next, previous, results];
}
