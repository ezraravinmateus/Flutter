import 'package:flutter_test/flutter_test.dart';
import '../lib/services/services.dart';

void main() {
  test('Get All News', () async {
    await NewsServices.getNews();
  });
  test('Get Detail News', () async {
    await NewsServices.getDetailNews('15');
  });
  test('Submit Content', () async {
    await NewsServices.submit();
  });
}
