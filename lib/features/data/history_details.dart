import 'package:equatable/equatable.dart';

class HistoryDetails extends Equatable {
  final DateTime attendTime;
  final DateTime leaveTime;
  final DateTime date;
  final double workingHours;
  final Duration minimumTimeToCalculateOvertime;
  final Duration minimumTimeToCalculateLate;

  const HistoryDetails({
    required this.attendTime,
    required this.leaveTime,
    required this.date,
    required this.workingHours,
    required this.minimumTimeToCalculateOvertime,
    required this.minimumTimeToCalculateLate,
  });

  @override
  List<Object> get props {
    return [
      attendTime,
      leaveTime,
      date,
      workingHours,
      minimumTimeToCalculateOvertime,
      minimumTimeToCalculateLate,
    ];
  }
}
