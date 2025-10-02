import 'package:equatable/equatable.dart';

class ChartDataPoint extends Equatable {
  final DateTime date;
  final double hours;

  const ChartDataPoint({
    required this.date,
    required this.hours,
  });

  @override
  List<Object?> get props => [date, hours];
}