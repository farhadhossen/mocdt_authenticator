

class AppString{


  /// String
  static String get app_name => "MOCDT";
  static String get tagline => "We provide the best";

  // static List<String> get serial => ["A1", "A2", "B1", "B2", "C", "D", "E", "F", "H1", "H2", "I1", "I2", "J1", "J2", "J3",
  //   "L", "R1", "R2", "N", "M"];

  static List<String> get serial => ["A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8",
    "B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8", "B9", "B10", "B11", "B12", "C1", "C2", "D1", "D2",
    "E", "F1",  "F2",  "F3",  "F4",
    "H1.1", "H1.2", "H1.3", "H1.4",  "H2",
    "I1", "I2", "J1", "J2", "J3",  "K", "L", "M", "N",
     "R1", "R2", "S"];

  static List<String> get months => ["January", "February", "March", "April", "May", "June", "July",
  "August", "September", "October", "November", "December"];

  // static List<int> get years => [2022, 2023, 2024, 2025];

  static List<int> get years => [(DateTime.now().year-1), (DateTime.now().year)];

  static List<String> get statusList => ["active", "deactive"];


}