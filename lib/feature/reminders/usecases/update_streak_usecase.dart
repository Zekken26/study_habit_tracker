import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/streak.dart';
import '../repositories/streak_repository.dart';

class UpdateStreakUseCase {
  final StreakRepository repository;

  UpdateStreakUseCase(this.repository);

  Future<Either<Failure, void>> call(Streak streak) async {
    return await repository.updateStreak(streak);
  }
}