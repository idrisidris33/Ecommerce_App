class AppLink {
  static const String server = "http://192.168.1.34/ecommerc_PHP";

  //10.0.2.2
  //192.168.1.37   BOOB I
  //192.168.1.11   D-Link
  static const String test = "$server/test.php";
  //=============================== Auth ==========================
  static const String signup = "$server/Auth/signup.php";
  static const String login = "$server/Auth/login.php";
  static const String verifycode = "$server/Auth/verifycodesignup.php";
  static const String resend = "$server/Auth/resend.php";
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
  static const String removefav = "$server/favorite/removefav.php";
  static const String addfav = "$server/favorite/addfav.php";
  static const String viewfav = "$server/favorite/viewFavorite.php";
  static const String removefavfromlist = "$server/favorite/removefavfromlist.php";
  
}
