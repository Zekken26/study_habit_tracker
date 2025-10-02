import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/streak.dart';
import '../repositories/streak_repository.dart';

class GetStreakUseCase {
  final StreakRepository repository;

  GetStreakUseCase(this.repository);

  Future<Either<Failure, Streak>> call(String userId) async {
    return await repository.getStreak(userId);
  }
}