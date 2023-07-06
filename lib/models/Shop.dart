class Shop {
  Shop({
      required this.id,
      required this.isActive,
      required this.createdAt,
      required this.name,
      required this.description,
      required this.shopemail,
      required this.shopaddress,
      required this.shopcity,
      required this.userid,
      required this.image,
    required this.shop,});

  Shop.fromJson(dynamic json) {
    id = json['_id'];
    isActive = json['is_active'];
    createdAt = json['created_At'];
    name = json['name'];
    description = json['description'];
    shopemail = json['shopemail'];
    shopaddress = json['shopaddress'];
    shopcity = json['shopcity'];
    userid = json['userid'];
    image = json['image'];
    shop = json['shop'];
  }
  String id='';
  bool isActive=false;
  String createdAt='';
  String name='';
  String description='';
  String shopemail='';
  String shopaddress='';
  String shopcity='';
  String userid='';
  String image='';
  dynamic shop;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['is_active'] = isActive;
    map['created_At'] = createdAt;
    map['name'] = name;
    map['description'] = description;
    map['shopemail'] = shopemail;
    map['shopaddress'] = shopaddress;
    map['shopcity'] = shopcity;
    map['userid'] = userid;
    map['image'] = image;
    map['shop'] = shop;
    return map;
  }

}