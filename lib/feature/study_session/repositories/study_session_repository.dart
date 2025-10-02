import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/study_session.dart';

abstract class StudySessionRepository {
  Future<Either<Failure, void>> saveSession(StudySession session);
  Future<Either<Failure, List<StudySession>>> getSessions(String userId);
  Future<Either<Failure, List<StudySession>>> getSessionsBySubject(String userId, String subjectId);
  Future<Either<Failure, void>> deleteSession(String sessionId);
}