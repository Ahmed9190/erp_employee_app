class NumbersUtils {
  static String padZeros(int number, int zerosCount) {
    return zerosCount.toString().padLeft(2, "0");
  }
}
