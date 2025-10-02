import 'package:equatable/equatable.dart';

class Goal extends Equatable {
  final String id;
  final String subjectId;
  final String description;
  final double? targetHours;
  final DateTime? deadline;
  final String userId;

  const Goal({
    required this.id,
    required this.subjectId,
    required this.description,
    this.targetHours,
    this.deadline,
    required this.userId,
  });

  @override
  List<Object?> get props => [id, subjectId, description, targetHours, deadline, userId];
}