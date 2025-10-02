import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../repositories/study_session_repository.dart';

class DeleteSessionUseCase {
  final StudySessionRepository repository;

  DeleteSessionUseCase(this.repository);

  Future<Either<Failure, void>> call(String sessionId) async {
    return await repository.deleteSession(sessionId);
  }
}