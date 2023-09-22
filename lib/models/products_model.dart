class Product{
  int? _totalSize;
  int? _typeId;
  int? _offSet;
  late List<ProductsModel> _products;
  List<ProductsModel> get products=>_products;

  Product({required totalSize, required typeId, required offSet, required products}){
    this._totalSize = _totalSize;
    this._typeId = typeId;
    this._offSet = offSet;
    this._products = products;

  }

  Product.fromJson(Map<String, dynamic> json){
    _totalSize = json["totalP_size"];
    _typeId = json["type_id"];
    _offSet = json["offset"];
    if (json['products'] != null){
      _products = <ProductsModel>[];
      json['products'].forEach((v){
       _products.add(new ProductsModel.fromJson(v));
      });
    }
  }
}

class ProductsModel{
  int? id;
  String? name;
  String? description;
  int? price;
  int? stars;
  String? img;
  String? location;
  String? createAt;
  String? updateAt;
  int? typeId;

  ProductsModel({
    this.id,
    this.name,
    this.description,
    this.price,
    this.stars,
    this.img,
    this.location,
    this.createAt,
    this.updateAt,
    this.typeId});

  ProductsModel.fromJson(Map<String, dynamic> json){
    id = json["id"];
    name = json["name"];
    description = json["description"];
    price = json["price"];
    stars = json["stars"];
    img = json["img"];
    location = json["location"];
    createAt = json["create_at"];
    updateAt = json["update_at"];
    typeId = json["type_id"];
  }
}