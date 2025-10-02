import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/study_session.dart';
import '../repositories/study_session_repository.dart';

class GetSessionsBySubjectUseCase {
  final StudySessionRepository repository;

  GetSessionsBySubjectUseCase(this.repository);

  Future<Either<Failure, List<StudySession>>> call(String userId, String subjectId) async {
    return await repository.getSessionsBySubject(userId, subjectId);
  }
}