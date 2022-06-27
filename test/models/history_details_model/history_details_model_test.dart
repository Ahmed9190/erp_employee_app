import 'package:attendance/models/history_details_model/history_details_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late HistoryDetailsModel historyDetails;

  test("should create HistoryDetailsModel when fromJson is called", () {
    //arrange
    historyDetails = HistoryDetailsModel.fromJson(const {
      'attendTime': 1653734983839,
      'leaveTime': 1653734083839,
      'date': 1653734983839,
      'workingHours': 10.0,
      'minimumTimeToCalculateOvertime': 0,
      'minimumTimeToCalculateLate': 0,
    });

    //assert
    expect(
      historyDetails,
      isNotNull,
    );
  });

  test("should create history model from map", () {
    //arrange
    historyDetails = HistoryDetailsModel.fromJson(const {
      'attendTime': 1653734983839,
      'leaveTime': 1653734083839,
      'date': 1653734983839,
      'workingHours': 10.0,
      'minimumTimeToCalculateOvertime': 0,
      'minimumTimeToCalculateLate': 0,
    });

    print(historyDetails.attendTime.toIso8601String());
    //assert
    expect(
      historyDetails.attendTime.toIso8601String(),
      contains("2022-05-28"),
    );
    expect(
      historyDetails.attendTime.toIso8601String(),
      contains("2022-05-28"),
    );
  });
}
