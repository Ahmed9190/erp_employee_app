import 'package:attendance/features/data/api_status.dart';
import 'package:attendance/features/data/duration_time.dart';
import 'package:attendance/features/data/time_hms.dart';
import 'package:flutter/material.dart';

class AttendanceTimeProvider extends ChangeNotifier {
  late final DurationTime _attendTime;
  DurationTime get attendTime => _attendTime;
  set attendTime(DurationTime value) {
    _attendTime = value;
    notifyListeners();
  }

  late final DurationTime _currentTime;
  DurationTime get currentTime => _currentTime;
  set currentTime(DurationTime value) {
    _currentTime = value;
    notifyListeners();
  }

  late final DurationTime _endTime;
  DurationTime get endTime => _endTime;
  set endTime(DurationTime value) {
    _endTime = value;
    notifyListeners();
  }

  ApiStatus _apiStatus = ApiStatus.initial;
  ApiStatus get apiStatus => _apiStatus;
  set apiStatus(ApiStatus value) {
    _apiStatus = value;
    notifyListeners();
  }

  AttendanceTimeProvider() {
    fetch();
  }

  Future<void> fetch() async {
    //TODO:fetch from api
    apiStatus = ApiStatus.loading;
    Future.delayed(const Duration(milliseconds: 500), () {
      attendTime = DurationTime(TimeHms.parse("02:05:22"));
      currentTime = DurationTime(TimeHms.parse("02:06:32"));
      endTime = DurationTime(TimeHms.parse("10:10:00"));
      apiStatus = ApiStatus.loaded;
    });
  }
}
