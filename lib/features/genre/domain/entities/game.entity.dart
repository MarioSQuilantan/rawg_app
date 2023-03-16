import 'package:equatable/equatable.dart';

class Game extends Equatable {
  const Game({
    required this.id,
    this.slug,
    required this.name,
    this.added,
  });

  final int? id;
  final String? slug;
  final String? name;
  final int? added;

  @override
  List<Object?> get props => [id, slug, name, added];
}
