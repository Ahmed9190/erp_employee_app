import 'package:attendance/core/error/failure.dart';
import 'package:dartz/dartz.dart';

class DateTimeConverter {
  static const Map<int, String> weekDaysInArabic = {
    1: "الإثنين",
    2: "الثلاثاء",
    3: "الأربعاء",
    4: "الخميس",
    5: "الجمعة",
    6: "السبت",
    7: "الإحد",
  };

  Either<Failure, String> weekDayToArabicString(int weekDay) {
    try {
      if (weekDay >= 1 && weekDay <= 7) {
        return Right(DateTimeConverter.weekDaysInArabic[weekDay]!);
      }
      throw DateTimeConverterFailure();
    } catch (e) {
      return Left(DateTimeConverterFailure());
    }
  }
}

class DateTimeConverterFailure extends Failure {
  @override
  List<Object?> get props => [];
}
