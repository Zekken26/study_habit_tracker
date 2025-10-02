import 'package:equatable/equatable.dart';

class Badge extends Equatable {
  final String id;
  final String name;
  final String description;
  final String? icon;
  final DateTime unlockedAt;
  final String userId;

  const Badge({
    required this.id,
    required this.name,
    required this.description,
    this.icon,
    required this.unlockedAt,
    required this.userId,
  });

  @override
  List<Object?> get props => [id, name, description, icon, unlockedAt, userId];
}