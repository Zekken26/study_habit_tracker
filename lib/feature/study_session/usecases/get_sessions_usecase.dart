import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/study_session.dart';
import '../repositories/study_session_repository.dart';

class GetSessionsUseCase {
  final StudySessionRepository repository;

  GetSessionsUseCase(this.repository);

  Future<Either<Failure, List<StudySession>>> call(String userId) async {
    return await repository.getSessions(userId);
  }
}