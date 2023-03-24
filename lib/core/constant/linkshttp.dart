class AppLink {
  static const String server = "http://192.168.1.35/ecommerc_PHP";

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
 //=============================== ITEMS ==========================
  static const String items = "$server/items/itemGet.php";
  static const String search = "$server/items/search.php";
   //=============================== FAVORITE ==========================
  static const String removefav = "$server/favorite/removefav.php";
  static const String addfav = "$server/favorite/addfav.php";
  static const String viewfav = "$server/favorite/viewFavorite.php";
  static const String removefavfromlist =
      "$server/favorite/removefavfromlist.php";

  //=============================== CARD ==========================
  static const String addcard = "$server/card/add.php";
  static const String removecard = "$server/card/remove.php";
  static const String deletecard = "$server/card/delete.php";
  static const String viewcard = "$server/card/view.php";
  static const String countitemincard = "$server/card/countitem.php";
}
