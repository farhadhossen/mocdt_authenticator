import 'package:intl/intl.dart';

class AppUtils {
  static String dateFormation(String str) {
    if (str == null || str == "null" || str == "") {
      return "N/A";
    } else {
      var parsedDate = DateTime.parse(str);
      final DateFormat formatter = DateFormat('dd-MMM-yyyy');
      return formatter.format(parsedDate);
    }
  }

  static String dateFormation2(String str) {
    DateTime myData = DateFormat("dd-MMM-yyyy").parse(str);
    return DateFormat('yyyy-MM-dd').format(myData);
  }

  static String dateFormation3(String str) {
    DateTime myData = DateFormat("yyyy-MM-dd").parse(str);
    return DateFormat('yyyy-MM-dd').format(myData);
  }

  static String dateFormation4(String str) {
    DateTime myData = DateFormat("yyyy-MM-dd").parse(str);
    return DateFormat('MMMM').format(myData);
  }

  static String amountFormation(String str) {
    if (str == null || str == "null") {
      return "N/A";
    } else {
      final valueNumberFormat = NumberFormat("#,##0", "en_US");
      return valueNumberFormat.format(double.parse(str));
    }
  }
}
