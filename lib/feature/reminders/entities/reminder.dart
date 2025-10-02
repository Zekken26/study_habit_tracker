import 'package:equatable/equatable.dart';

enum ReminderFrequency {
  daily,
  weekly,
}

class Reminder extends Equatable {
  final String id;
  final String userId;
  final String time; // e.g., "14:30"
  final ReminderFrequency frequency;
  final String message;
  final bool isActive;

  const Reminder({
    required this.id,
    required this.userId,
    required this.time,
    required this.frequency,
    required this.message,
    required this.isActive,
  });

  @override
  List<Object?> get props => [id, userId, time, frequency, message, isActive];
}