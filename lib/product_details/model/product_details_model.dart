// To parse this JSON data, do
//
//     final productDetailsModel = productDetailsModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'product_details_model.g.dart';

ProductDetailsModel productDetailsModelFromJson(String str) => ProductDetailsModel.fromJson(json.decode(str));

String productDetailsModelToJson(ProductDetailsModel data) => json.encode(data.toJson());

@JsonSerializable()
class ProductDetailsModel {
    @JsonKey(name: "success")
    bool? success;
    @JsonKey(name: "ProductDetailsResponseModel")
    ProductDetailsResponseModel? productDetailsResponseModel;
    @JsonKey(name: "message")
    String? message;

    ProductDetailsModel({
        this.success,
        this.productDetailsResponseModel,
        this.message,
    });

    factory ProductDetailsModel.fromJson(Map<String, dynamic> json) => _$ProductDetailsModelFromJson(json);

    Map<String, dynamic> toJson() => _$ProductDetailsModelToJson(this);
}

@JsonSerializable()
class ProductDetailsResponseModel {
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "name_ar")
    String? nameAr;
    @JsonKey(name: "name_en")
    String? nameEn;
    @JsonKey(name: "description")
    String? description;
    @JsonKey(name: "description_ar")
    String? descriptionAr;
    @JsonKey(name: "description_en")
    String? descriptionEn;
    @JsonKey(name: "price")
    int? price;
    @JsonKey(name: "countable")
    dynamic countable;
    @JsonKey(name: "stock")
    int? stock;
    @JsonKey(name: "category")
    String? category;
    @JsonKey(name: "type_of_stock")
    String? typeOfStock;
    @JsonKey(name: "main")
    String? main;
    @JsonKey(name: "images")
    List<Image>? images;
    @JsonKey(name: "productAttributes")
    List<ProductAttribute>? productAttributes;

    ProductDetailsResponseModel({
        this.id,
        this.name,
        this.nameAr,
        this.nameEn,
        this.description,
        this.descriptionAr,
        this.descriptionEn,
        this.price,
        this.countable,
        this.stock,
        this.category,
        this.typeOfStock,
        this.main,
        this.images,
        this.productAttributes,
    });

    factory ProductDetailsResponseModel.fromJson(Map<String, dynamic> json) => _$ProductDetailsResponseModelFromJson(json);

    Map<String, dynamic> toJson() => _$ProductDetailsResponseModelToJson(this);
}

@JsonSerializable()
class Image {
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "url")
    String? url;
    @JsonKey(name: "delete")
    Delete? delete;

    Image({
        this.id,
        this.url,
        this.delete,
    });

    factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

    Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class Delete {
    @JsonKey(name: "href")
    String? href;
    @JsonKey(name: "method")
    String? method;

    Delete({
        this.href,
        this.method,
    });

    factory Delete.fromJson(Map<String, dynamic> json) => _$DeleteFromJson(json);

    Map<String, dynamic> toJson() => _$DeleteToJson(this);
}

@JsonSerializable()
class ProductAttribute {
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "option")
    String? option;
    @JsonKey(name: "attribute")
    String? attribute;
    @JsonKey(name: "price")
    int? price;

    ProductAttribute({
        this.id,
        this.option,
        this.attribute,
        this.price,
    });

    factory ProductAttribute.fromJson(Map<String, dynamic> json) => _$ProductAttributeFromJson(json);

    Map<String, dynamic> toJson() => _$ProductAttributeToJson(this);
}
