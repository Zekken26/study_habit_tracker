import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/badge.dart';
import '../repositories/badge_repository.dart';

class GetBadgesUseCase {
  final BadgeRepository repository;

  GetBadgesUseCase(this.repository);

  Future<Either<Failure, List<Badge>>> call(String userId) async {
    return await repository.getBadges(userId);
  }
}