import 'dart:convert';
import 'package:p1_login_v3/constanta.dart';
import '../models/models.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';

class NewsServices {
  static Future<ApiReturnValue<String>> login(
      String username, String email) async {
    try {
      var url = Uri.parse(baseUrl + loginUrl);
      var response = await http.post(
        url,
        body: {
          'x1': username, //'a',
          'x2': email, //'a',
        },
      );
      if (response.statusCode != 200) {
        throw RegisterException();
      }

      var data = jsonDecode(response.body)['islogged'] as List;

      //HANYA LOG SAJA AGAR BISA DITELUSURI HASILNYA
      //log("HASIL = " + data.first['id_member'].toString());
      log("HASIL = " + data.toString());

      if ((data.toString() != "[]") &&
          (int.parse(data.first['id_member']) > 0)) {
        log("MASUK IF, LOGIN SUKSES");
        return ApiReturnValue(
          data: "Welcome, " + data.first['nameofmember'],
        );
      } else {
        log("MASUK ELSE, LOGIN GAGAL");
        return ApiReturnValue(data: "Login Gagal");
      }

      //return ApiReturnValue(data: "Login Gagal");
    } catch (e) {
      throw RegisterException();
    }
  }
}

class RegisterException implements Exception {}
