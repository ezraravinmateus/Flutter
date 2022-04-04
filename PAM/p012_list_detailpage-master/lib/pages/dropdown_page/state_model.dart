class StateModel {
  late String state;
  late String alias;
  late List<String> lgas;

  StateModel({required this.state, required this.alias, required this.lgas});

  StateModel.fromJson(Map<String, dynamic> json) {
    state = json['state'];
    alias = json['alias'];
    lgas = json['lgas'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state'] = state;
    data['alias'] = alias;
    data['lgas'] = lgas;
    return data;
  }
}
