class AppLink {
  static const String server = "http://192.168.1.37/ecommerc_PHP";

  //10.0.2.2
  //192.168.1.37   BOOB I
  //192.168.1.11   D-Link
  static const String test = "$server/test.php";
  //=============================== Auth ==========================
  static const String signup = "$server/Auth/signup.php";
  static const String login = "$server/Auth/login.php";
  static const String verifycode = "$server/Auth/verifycodesignup.php";
  //=============================== Resetpassword ==========================
  static const String chekemail = "$server/fogetpassword/checkemail.php";
  static const String resestpassword =
      "$server/fogetpassword/resetPassword.php";
  static const String verifycodepassword =
      "$server/fogetpassword/verifycodeforget.php";
  //=============================== Home ==========================
  static const String home = "$server/home.php";
  //=============================== Home ==========================
  static const String items = "$server/items/itemGet.php";
}