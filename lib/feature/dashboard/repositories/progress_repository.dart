import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/chart_data_point.dart';
import '../entities/progress_summary.dart';

abstract class ProgressRepository {
  Future<Either<Failure, List<ChartDataPoint>>> getDailyChartData(String userId, DateTime startDate, DateTime endDate);
  Future<Either<Failure, List<ChartDataPoint>>> getWeeklyChartData(String userId, DateTime startDate, DateTime endDate);
  Future<Either<Failure, ProgressSummary>> getProgressSummary(String userId);
}