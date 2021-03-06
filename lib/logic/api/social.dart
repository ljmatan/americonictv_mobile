import 'package:americonictv_mobile/data/auth/user_data.dart';
import 'package:http/http.dart' as http;

abstract class Social {
  static Future<http.Response> like(int id) async => await http.post(
      'https://video.americonictv.com/plugin/API/set.json.php?APIName=like&videos_id=$id'
      '&user=${User.instance.user}&pass=${User.instance.pass}&encodedPass=true');

  static Future<http.Response> dislike(int id) async => await http.post(
      'https://video.americonictv.com/plugin/API/set.json.php?APIName=dislike&videos_id=$id'
      '&user=${User.instance.user}&pass=${User.instance.pass}&encodedPass=true');

  static Future<http.Response> comment(
    String comment,
    int videoID, [
    int commentID,
  ]) async =>
      await http.post(
          'https://video.americonictv.com/plugin/API/set.json.php?APIName=comment&videos_id=$videoID&user=matanlj&pass=Zaporka1!&comment=$comment');
}
