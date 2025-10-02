import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/progress_summary.dart';
import '../repositories/progress_repository.dart';

class GetProgressSummaryUseCase {
  final ProgressRepository repository;

  GetProgressSummaryUseCase(this.repository);

  Future<Either<Failure, ProgressSummary>> call(String userId) async {
    return await repository.getProgressSummary(userId);
  }
}