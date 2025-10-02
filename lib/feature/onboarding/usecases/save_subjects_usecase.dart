import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/subject.dart';
import '../repositories/onboarding_repository.dart';

class SaveSubjectsUseCase {
  final OnboardingRepository repository;

  SaveSubjectsUseCase(this.repository);

  Future<Either<Failure, void>> call(List<Subject> subjects) async {
    return await repository.saveSubjects(subjects);
  }
}