import 'package:attendance/core/util/numbers_util.dart';

class DateTimeUtils {
  static String toHM(DateTime dateTime) {
    return '${NumbersUtils.padZeros(dateTime.hour, 1)}:${NumbersUtils.padZeros(dateTime.minute, 1)}';
  }
}
