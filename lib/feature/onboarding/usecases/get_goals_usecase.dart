import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/goal.dart';
import '../repositories/onboarding_repository.dart';

class GetGoalsUseCase {
  final OnboardingRepository repository;

  GetGoalsUseCase(this.repository);

  Future<Either<Failure, List<Goal>>> call(String userId) async {
    return await repository.getGoals(userId);
  }
}