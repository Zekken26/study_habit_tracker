import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/goal.dart';
import '../entities/subject.dart';

abstract class OnboardingRepository {
  Future<Either<Failure, void>> saveSubjects(List<Subject> subjects);
  Future<Either<Failure, void>> saveGoals(List<Goal> goals);
  Future<Either<Failure, List<Subject>>> getSubjects(String userId);
  Future<Either<Failure, List<Goal>>> getGoals(String userId);
}