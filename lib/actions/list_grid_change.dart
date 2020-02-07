import 'package:shared_preferences/shared_preferences.dart';

Future<bool> layoutStateSave({bool isGridLayout}) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isLayout', isGridLayout);
  return prefs.getBool('isLayout');
}


Future<bool> getLayoutState() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool('isLayout') ?? false;
}