import 'package:attendance/features/data/history_details.dart';

class HistoryDetailsModel extends HistoryDetails {
  const HistoryDetailsModel({
    required DateTime attendTime,
    required DateTime leaveTime,
    required DateTime date,
    required double workingHours,
    required Duration minimumTimeToCalculateOvertime,
    required Duration minimumTimeToCalculateLate,
  }) : super(
          attendTime: attendTime,
          leaveTime: leaveTime,
          date: date,
          workingHours: workingHours,
          minimumTimeToCalculateOvertime: minimumTimeToCalculateOvertime,
          minimumTimeToCalculateLate: minimumTimeToCalculateLate,
        );

  factory HistoryDetailsModel.fromJson(Map<String, dynamic> json) {
    return HistoryDetailsModel(
      attendTime: DateTime.fromMillisecondsSinceEpoch(json['attendTime']),
      leaveTime: DateTime.fromMillisecondsSinceEpoch(json['leaveTime']),
      date: DateTime.fromMillisecondsSinceEpoch(json['date']),
      workingHours: json['workingHours'],
      minimumTimeToCalculateOvertime:
          Duration(milliseconds: json['minimumTimeToCalculateOvertime']),
      minimumTimeToCalculateLate:
          Duration(milliseconds: json['minimumTimeToCalculateLate']),
    );
  }
}
