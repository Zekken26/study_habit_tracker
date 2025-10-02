import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/reminder.dart';
import '../repositories/reminder_repository.dart';

class SaveReminderUseCase {
  final ReminderRepository repository;

  SaveReminderUseCase(this.repository);

  Future<Either<Failure, void>> call(Reminder reminder) async {
    return await repository.saveReminder(reminder);
  }
}