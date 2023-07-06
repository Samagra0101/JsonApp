class ProductModel {
  late bool success;
  late String message;
  late List<ProductData> data;

  ProductModel({
    required this.success,
    required this.message,
    required this.data,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = List<ProductData>.from(json['data'].map((x) => ProductData.fromJson(x)));
    } else {
      data = [];
    }
  }
}

class ProductData {
  late String id;
  late bool onSale;
  late int salePercent;
  late int sold;
  late bool sliderNew;
  late bool sliderRecent;
  late bool sliderSold;
  late String date;
  late String title;
  late Categories categories;
  late Subcat subcat;
  late Shop shop;
  late String price;
  late String saleTitle;
  late String salePrice;
  late String description;
  late String color;
  late String size;
  late bool inWishlist;
  late List<Images> images;

  ProductData({
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
    required this.images,
  });

  ProductData.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    onSale = json['on_sale'];
    salePercent = json['sale_percent'];
    sold = json['sold'];
    sliderNew = json['slider_new'];
    sliderRecent = json['slider_recent'];
    sliderSold = json['slider_sold'];
    date = json['date'];
    title = json['title'];
    categories = Categories.fromJson(json['categories']);
    subcat = Subcat.fromJson(json['subcat']);
    shop = Shop.fromJson(json['shop']);
    price = json['price'];
    saleTitle = json['sale_title'];
    salePrice = json['sale_price'];
    description = json['description'];
    color = json['color'];
    size = json['size'];
    inWishlist = json['in_wishlist'];
    if (json['images'] != null) {
      images = List<Images>.from(json['images'].map((x) => Images.fromJson(x)));
    } else {
      images = [];
    }
  }
}

class Categories {
  late String id;
  late String type;
  late int salePercent;
  late String date;
  late String name;
  late String image;

  Categories({
    required this.id,
    required this.type,
    required this.salePercent,
    required this.date,
    required this.name,
    required this.image,
  });

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    type = json['type'];
    salePercent = json['sale_percent'];
    date = json['date'];
    name = json['name'];
    image = json['image'];
  }
}


  class Subcat {
  late String id;
  late String type;
  late int salePercent;
  late String date;
  late String name;

  Subcat({
  required this.id,
  required this.type,
  required this.salePercent,
  required this.date,
  required this.name,
  });

  Subcat.fromJson(Map<String, dynamic> json) {
  id = json['_id'];
  type = json['type'];
  salePercent = json['sale_percent'];
  date = json['date'];
  name = json['name'];
  }
  }

  class Shop {
  late String id;
  late bool isActive;
  late String createdAt;
  late String name;
  late String description;
  late String shopemail;
  late String shopaddress;
  late String shopcity;
  late String userid;
  late String image;

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
  });

  Shop.fromJson(Map<String, dynamic> json) {
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
  }
  }

  class Images {
  late String id;
  late String url;

  Images({
  required this.id,
  required this.url,
  });

  Images.fromJson(Map<String, dynamic> json) {
  id = json['id'];
  url = json['url'];
  }
  }
