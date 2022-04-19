import 'dart:convert';

import '../models/models.dart';
import 'package:http/http.dart' as http;

//const baseUrl = 'http://generasiterpilih.or.id/mobapps/';
// const baseUrl = 'https://www.ringgas.id/develop/mobapps/';
const baseUrl = 'https://www.ringgas.id/develop/01_it604_pam/1320023/mobapps/';

class NewsServices {
  static Future<ApiReturnValue<List<NewsModel>>> getNews() async {
    try {
      var url = Uri.parse(baseUrl + 'flutter/p022_list_detailpage_api_1.php');
      var response = await http.post(
        url,
        body: {
          'whattodo': 'select_news',
        },
      );
      if (response.statusCode != 200) {
        throw GetNewsException();
      }

      var data = jsonDecode(response.body)['rs'] as List;

      return ApiReturnValue(
          data: data.map((e) => NewsModel.fromJSON(e)).toList());
    } catch (e) {
      throw GetNewsException();
    }
  }

  static Future<ApiReturnValue<NewsModel>> getDetailNews(String idNews) async {
    try {
      var url = Uri.parse(baseUrl + 'flutter/p022_list_detailpage_api_2.php');
      var response = await http.post(
        url,
        body: {
          'whattodo': 'select_news_detail',
          'P1': idNews,
        },
      );
      if (response.statusCode != 200) {
        throw GetDetailNewsException();
      }

      var data = jsonDecode(response.body)['rs'] as List;

      return ApiReturnValue(data: NewsModel.fromJSON(data.first));
    } catch (e) {
      throw GetDetailNewsException();
    }
  }

  static Future<ApiReturnValue<String>> submit() async {
    try {
      var url = Uri.parse(baseUrl + 'flutter/p022_list_detailpage_api_3.php');
      var response = await http.post(
        url,
        body: {
          'whattodo': 'submit',
          'P1': '555',
          'P2': '666',
          'P3': 'Kiriman P3 Submit',
          'P4': 'Kiriman P4 Submit',
        },
      );
      if (response.statusCode != 200) {
        throw SubmitException();
      }

      var data = jsonDecode(response.body)['rs'] as List;

      return ApiReturnValue(
        data: data.first['pesan'],
      );
    } catch (e) {
      throw SubmitException();
    }
  }
}

class GetNewsException implements Exception {}

class GetDetailNewsException implements Exception {}

class SubmitException implements Exception {}
