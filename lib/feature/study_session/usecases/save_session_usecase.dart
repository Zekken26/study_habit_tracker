import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/study_session.dart';
import '../repositories/study_session_repository.dart';

class SaveSessionUseCase {
  final StudySessionRepository repository;

  SaveSessionUseCase(this.repository);

  Future<Either<Failure, void>> call(StudySession session) async {
    return await repository.saveSession(session);
  }
}