import 'package:shared_preferences/shared_preferences.dart';

class ProfileUtility {
  Future<String?> getCurrentProfilePicturePath() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('profileImagePath');
  }
}
