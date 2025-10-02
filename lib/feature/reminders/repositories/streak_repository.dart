import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/streak.dart';

abstract class StreakRepository {
  Future<Either<Failure, Streak>> getStreak(String userId);
  Future<Either<Failure, void>> updateStreak(Streak streak);
}