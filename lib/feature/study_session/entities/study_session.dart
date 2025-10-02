import 'package:equatable/equatable.dart';

enum SessionType {
  timer,
  quickLog,
}

class StudySession extends Equatable {
  final String id;
  final String userId;
  final String subjectId;
  final DateTime startTime;
  final DateTime? endTime;
  final int duration; // in minutes
  final String? notes;
  final SessionType sessionType;

  const StudySession({
    required this.id,
    required this.userId,
    required this.subjectId,
    required this.startTime,
    this.endTime,
    required this.duration,
    this.notes,
    required this.sessionType,
  });

  @override
  List<Object?> get props => [id, userId, subjectId, startTime, endTime, duration, notes, sessionType];
}