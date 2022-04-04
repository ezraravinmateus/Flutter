import 'package:multi_level_dropdown/state_model.dart';

class Repository {
  // http://locationsng-api.herokuapp.com/api/v1/lgas
  // test() => _nigeria.map((map) => StateModel.fromJson(map));
  List getAll() => _nigeria;

  getLocalByState(String state) => _nigeria
      .map((map) => StateModel.fromJson(map))
      .where((item) => item.state == state)
      .map((item) => item.lgas)
      .expand((i) => i)
      .toList();
  // _nigeria.where((list) => list['state'] == state);
  // .map((item) => item['lgas'])
  // .expand((i) => i)
  // .toList();

  List<String> getStates() => _nigeria
      .map((map) => StateModel.fromJson(map))
      .map((item) => item.state)
      .toList();
  // _nigeria.map((item) => item['state'].toString()).toList();

  List _nigeria = [
    {
      "state": "Jawa Barat",
      "alias": "jawa barat",
      "lgas": [
        "Kota Bandung",
        "Kota Tasikmalaya",
        "Kabupaten Bandung",
        "Kabupaten Cianjur"
      ]
    },
    {
      "state": "Jawa Tengah",
      "alias": "jawa tengah",
      "lgas": [
        "Yogyakarta",
        "Solo",
        "Daerah Istimewa Yogyakarta",
        "Purworejo",
        "Purwokerto"
      ]
    },
    {
      "state": "Jawa Timur",
      "alias": "jawa timur",
      "lgas": [
        "Surabaya",
        "Kabupaten Banyuwangi",
        "Kabupaten Lamongan",
        "Kabupaten Madiun",
        "Kota Probolinggo"
      ]
    },
  ];
}
