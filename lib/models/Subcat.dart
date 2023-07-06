class Subcat {
  Subcat({
      required this.id,
      required this.type,
      required this.salePercent,
      required this.date,
      required this.name,});

  Subcat.fromJson(dynamic json) {
    id = json['_id'];
    type = json['type'];
    salePercent = json['sale_percent'];
    date = json['date'];
    name = json['name'];
  }
  String id='';
  String type='';
  int salePercent=0;
  String date='';
  String name='';

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['type'] = type;
    map['sale_percent'] = salePercent;
    map['date'] = date;
    map['name'] = name;
    return map;
  }

}