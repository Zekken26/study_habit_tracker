import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/badge.dart';

abstract class BadgeRepository {
  Future<Either<Failure, List<Badge>>> getBadges(String userId);
}