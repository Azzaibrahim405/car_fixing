// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetailsModel _$ProductDetailsModelFromJson(Map<String, dynamic> json) =>
    ProductDetailsModel(
      success: json['success'] as bool?,
      productDetailsResponseModel: json['ProductDetailsResponseModel'] == null
          ? null
          : ProductDetailsResponseModel.fromJson(
              json['ProductDetailsResponseModel'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ProductDetailsModelToJson(
        ProductDetailsModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'ProductDetailsResponseModel': instance.productDetailsResponseModel,
      'message': instance.message,
    };

ProductDetailsResponseModel _$ProductDetailsResponseModelFromJson(
        Map<String, dynamic> json) =>
    ProductDetailsResponseModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      nameAr: json['name_ar'] as String?,
      nameEn: json['name_en'] as String?,
      description: json['description'] as String?,
      descriptionAr: json['description_ar'] as String?,
      descriptionEn: json['description_en'] as String?,
      price: json['price'] as int?,
      countable: json['countable'],
      stock: json['stock'] as int?,
      category: json['category'] as String?,
      typeOfStock: json['type_of_stock'] as String?,
      main: json['main'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      productAttributes: (json['productAttributes'] as List<dynamic>?)
          ?.map((e) => ProductAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductDetailsResponseModelToJson(
        ProductDetailsResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_ar': instance.nameAr,
      'name_en': instance.nameEn,
      'description': instance.description,
      'description_ar': instance.descriptionAr,
      'description_en': instance.descriptionEn,
      'price': instance.price,
      'countable': instance.countable,
      'stock': instance.stock,
      'category': instance.category,
      'type_of_stock': instance.typeOfStock,
      'main': instance.main,
      'images': instance.images,
      'productAttributes': instance.productAttributes,
    };

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      id: json['id'] as int?,
      url: json['url'] as String?,
      delete: json['delete'] == null
          ? null
          : Delete.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'delete': instance.delete,
    };

Delete _$DeleteFromJson(Map<String, dynamic> json) => Delete(
      href: json['href'] as String?,
      method: json['method'] as String?,
    );

Map<String, dynamic> _$DeleteToJson(Delete instance) => <String, dynamic>{
      'href': instance.href,
      'method': instance.method,
    };

ProductAttribute _$ProductAttributeFromJson(Map<String, dynamic> json) =>
    ProductAttribute(
      id: json['id'] as int?,
      option: json['option'] as String?,
      attribute: json['attribute'] as String?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$ProductAttributeToJson(ProductAttribute instance) =>
    <String, dynamic>{
      'id': instance.id,
      'option': instance.option,
      'attribute': instance.attribute,
      'price': instance.price,
    };
