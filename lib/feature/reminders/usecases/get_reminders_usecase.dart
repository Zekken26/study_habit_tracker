import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/reminder.dart';
import '../repositories/reminder_repository.dart';

class GetRemindersUseCase {
  final ReminderRepository repository;

  GetRemindersUseCase(this.repository);

  Future<Either<Failure, List<Reminder>>> call(String userId) async {
    return await repository.getReminders(userId);
  }
}