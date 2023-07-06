class Images {
  Images({
      required this.id,
      required this.url,});

  Images.fromJson(dynamic json) {
    id = json['id'];
    url = json['url'];
  }
  String id='';
  String url='';

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['url'] = url;
    return map;
  }

}