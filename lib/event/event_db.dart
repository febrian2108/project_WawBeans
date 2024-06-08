import 'dart:convert';

import 'package:get/get.dart';
import 'package:projectWawBeans/config/api.dart';
import 'package:projectWawBeans/event/event_pref.dart';
import 'package:projectWawBeans/model/user.dart';
import 'package:projectWawBeans/pages/home_page.dart';
import 'package:http/http.dart' as http;
import 'package:projectWawBeans/widget/info.dart';

class EventDb{
  static Future<User?> login(String username, String pass) async {
    User? user;

    try {
      var response = await http.post(Uri.parse(Api.login), body: {
        'text_username': username,
        'text_pass': pass,
      });

      if (response.statusCode == 200) {
        var responBody = jsonDecode(response.body);

        if (responBody['success']) {
          user = User.fromJson(responBody['user']);
          EventPref.saveUser(user);
          Info.snackbar('Login Berhasil');
          Future.delayed(Duration(milliseconds: 1700), () {
            Get.off(
              HomePage(),
            );
          });
        } else {
          Info.snackbar('Login Gagal');
        }
      } else {
        Info.snackbar('Request Login Gagal');
      }
    } catch (e) {
      print(e);
    }
    return user;
  }
}