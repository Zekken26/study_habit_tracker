import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../repositories/reminder_repository.dart';

class DeleteReminderUseCase {
  final ReminderRepository repository;

  DeleteReminderUseCase(this.repository);

  Future<Either<Failure, void>> call(String reminderId) async {
    return await repository.deleteReminder(reminderId);
  }
}