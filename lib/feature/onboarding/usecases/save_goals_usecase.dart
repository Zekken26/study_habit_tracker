import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/goal.dart';
import '../repositories/onboarding_repository.dart';

class SaveGoalsUseCase {
  final OnboardingRepository repository;

  SaveGoalsUseCase(this.repository);

  Future<Either<Failure, void>> call(List<Goal> goals) async {
    return await repository.saveGoals(goals);
  }
}