import 'package:equatable/equatable.dart';

import 'game.entity.dart';

class Result extends Equatable {
  const Result({
    required this.id,
    required this.name,
    this.slug,
    this.gamesCount,
    this.imageBackground,
    required this.games,
  });

  final int? id;
  final String? name;
  final String? slug;
  final int? gamesCount;
  final String? imageBackground;
  final List<Game>? games;

  @override
  List<Object?> get props => [id, name, slug, gamesCount, imageBackground, games];
}
