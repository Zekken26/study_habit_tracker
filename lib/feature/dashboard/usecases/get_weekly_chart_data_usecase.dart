import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/chart_data_point.dart';
import '../repositories/progress_repository.dart';

class GetWeeklyChartDataUseCase {
  final ProgressRepository repository;

  GetWeeklyChartDataUseCase(this.repository);

  Future<Either<Failure, List<ChartDataPoint>>> call(String userId, DateTime startDate, DateTime endDate) async {
    return await repository.getWeeklyChartData(userId, startDate, endDate);
  }
}