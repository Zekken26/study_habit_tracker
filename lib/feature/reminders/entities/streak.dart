import 'package:equatable/equatable.dart';

class Streak extends Equatable {
  final String id;
  final String userId;
  final int currentStreak;
  final int longestStreak;
  final DateTime? lastStudyDate;

  const Streak({
    required this.id,
    required this.userId,
    required this.currentStreak,
    required this.longestStreak,
    this.lastStudyDate,
  });

  @override
  List<Object?> get props => [id, userId, currentStreak, longestStreak, lastStudyDate];
}