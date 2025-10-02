import 'package:equatable/equatable.dart';

enum UserRole {
  student,
  parentTutor,
}

class User extends Equatable {
  final String id;
  final String email;
  final String name;
  final UserRole role;
  final String? avatarUrl;
  final DateTime createdAt;

  const User({
    required this.id,
    required this.email,
    required this.name,
    required this.role,
    this.avatarUrl,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [id, email, name, role, avatarUrl, createdAt];
}