import 'package:equatable/equatable.dart';

class ProgressSummary extends Equatable {
  final double totalHoursThisWeek;
  final double totalHoursThisMonth;
  final int currentStreak; // consecutive days with study
  final int longestStreak;
  final double averageDailyHours;

  const ProgressSummary({
    required this.totalHoursThisWeek,
    required this.totalHoursThisMonth,
    required this.currentStreak,
    required this.longestStreak,
    required this.averageDailyHours,
  });

  @override
  List<Object?> get props => [totalHoursThisWeek, totalHoursThisMonth, currentStreak, longestStreak, averageDailyHours];
}