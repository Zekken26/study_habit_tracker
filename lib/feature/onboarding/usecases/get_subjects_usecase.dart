import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/subject.dart';
import '../repositories/onboarding_repository.dart';

class GetSubjectsUseCase {
  final OnboardingRepository repository;

  GetSubjectsUseCase(this.repository);

  Future<Either<Failure, List<Subject>>> call(String userId) async {
    return await repository.getSubjects(userId);
  }
}