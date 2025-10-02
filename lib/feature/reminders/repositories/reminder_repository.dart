import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/reminder.dart';

abstract class ReminderRepository {
  Future<Either<Failure, void>> saveReminder(Reminder reminder);
  Future<Either<Failure, List<Reminder>>> getReminders(String userId);
  Future<Either<Failure, void>> deleteReminder(String reminderId);
}