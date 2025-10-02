import 'package:equatable/equatable.dart';

class Subject extends Equatable {
  final String id;
  final String name;
  final String? description;
  final String userId;

  const Subject({
    required this.id,
    required this.name,
    this.description,
    required this.userId,
  });

  @override
  List<Object?> get props => [id, name, description, userId];
}