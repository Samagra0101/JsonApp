import 'Categories.dart';
import 'Shop.dart';
import 'Shop.dart';
import 'Subcat.dart';
import 'Shop.dart';
import 'Images.dart';

 class Data {
  Data({
      required this.id,
      required this.onSale,
    required this.salePercent,
    required this.sold,
    required this.sliderNew,
    required this.sliderRecent,
    required this.sliderSold,
    required this.date,
    required this.title,
    required this.categories,
    required this.subcat,
    required this.shop,
    required this.price,
    required this.saleTitle,
    required this.salePrice,
    required this.description,
    required this.color,
    required this.size,
    required this.inWishlist,
    required this.images,});

  Data.fromJson(dynamic json) {
    id = json['_id'];
    onSale = json['on_sale'];
    salePercent = json['sale_percent'];
    sold = json['sold'];
    sliderNew = json['slider_new'];
    sliderRecent = json['slider_recent'];
    sliderSold = json['slider_sold'];
    date = json['date'];
    title = json['title'];
    categories = (json['categories'] != null ? Categories.fromJson(json['categories']) : null)!;
    subcat = (json['subcat'] != null ? Subcat.fromJson(json['subcat']) : null)!;
    shop = (json['shop'] != null ? Shop.fromJson(json['shop']) : null)!;
    price = json['price'];
    saleTitle = json['sale_title'];
    salePrice = json['sale_price'];
    description = json['description'];
    color = json['color'];
    size = json['size'];
    inWishlist = json['in_wishlist'];
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images.add(Images.fromJson(v));
      });
    }
  }
  String id='';
  bool onSale=false;
  int salePercent=0;
  int sold=0;
  bool sliderNew=false;
  bool sliderRecent=false;
  bool sliderSold=false;
  String date='';
  String title='';
  Categories categories=Categories(id: '', type: '', salePercent: 0, date: '', name: '', image: '');
  Subcat subcat=Subcat(id: '', type: '', salePercent: 0, date: '', name: '');
  Shop shop = Shop(id: '', isActive: false, createdAt: '', name: '', description: '', shopemail: '', shopaddress: '', shopcity: '', userid: '', image: '', shop: '');
  String price='';
  String saleTitle='';
  String salePrice='';
  String description='';
  String color='';
  String size='';
  bool inWishlist=false;
  List<Images> images=Images(id: '', url: '') as List<Images>;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['on_sale'] = onSale;
    map['sale_percent'] = salePercent;
    map['sold'] = sold;
    map['slider_new'] = sliderNew;
    map['slider_recent'] = sliderRecent;
    map['slider_sold'] = sliderSold;
    map['date'] = date;
    map['title'] = title;
    if (categories != null) {
      map['categories'] = categories.toJson();
    }
    if (subcat != null) {
      map['subcat'] = subcat.toJson();
    }
    if (shop != null) {
      map['shop'] = shop.toJson();
    }
    map['price'] = price;
    map['sale_title'] = saleTitle;
    map['sale_price'] = salePrice;
    map['description'] = description;
    map['color'] = color;
    map['size'] = size;
    map['in_wishlist'] = inWishlist;
    if (images != null) {
      map['images'] = images.map((v) => v.toJson()).toList();
    }
    return map;
  }

}