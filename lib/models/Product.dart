/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Product type in your schema. */
@immutable
class Product extends Model {
  static const classType = const _ProductModelType();
  final String id;
  final String? _code;
  final String? _name;
  final double? _price;
  final Unit? _unit;
  final List<DerivedProduct>? _derivedProducts;
  final String? _productUnitId;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get code {
    try {
      return _code!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get price {
    try {
      return _price!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Unit? get unit {
    return _unit;
  }
  
  List<DerivedProduct>? get derivedProducts {
    return _derivedProducts;
  }
  
  String? get productUnitId {
    return _productUnitId;
  }
  
  const Product._internal({required this.id, required code, required name, required price, unit, derivedProducts, productUnitId}): _code = code, _name = name, _price = price, _unit = unit, _derivedProducts = derivedProducts, _productUnitId = productUnitId;
  
  factory Product({String? id, required String code, required String name, required double price, Unit? unit, List<DerivedProduct>? derivedProducts, String? productUnitId}) {
    return Product._internal(
      id: id == null ? UUID.getUUID() : id,
      code: code,
      name: name,
      price: price,
      unit: unit,
      derivedProducts: derivedProducts != null ? List<DerivedProduct>.unmodifiable(derivedProducts) : derivedProducts,
      productUnitId: productUnitId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Product &&
      id == other.id &&
      _code == other._code &&
      _name == other._name &&
      _price == other._price &&
      _unit == other._unit &&
      DeepCollectionEquality().equals(_derivedProducts, other._derivedProducts) &&
      _productUnitId == other._productUnitId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Product {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("code=" + "$_code" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("price=" + (_price != null ? _price!.toString() : "null") + ", ");
    buffer.write("productUnitId=" + "$_productUnitId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Product copyWith({String? id, String? code, String? name, double? price, Unit? unit, List<DerivedProduct>? derivedProducts, String? productUnitId}) {
    return Product(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      price: price ?? this.price,
      unit: unit ?? this.unit,
      derivedProducts: derivedProducts ?? this.derivedProducts,
      productUnitId: productUnitId ?? this.productUnitId);
  }
  
  Product.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _code = json['code'],
      _name = json['name'],
      _price = (json['price'] as num?)?.toDouble(),
      _unit = json['unit']?['serializedData'] != null
        ? Unit.fromJson(new Map<String, dynamic>.from(json['unit']['serializedData']))
        : null,
      _derivedProducts = json['derivedProducts'] is List
        ? (json['derivedProducts'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => DerivedProduct.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _productUnitId = json['productUnitId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'code': _code, 'name': _name, 'price': _price, 'unit': _unit?.toJson(), 'derivedProducts': _derivedProducts?.map((DerivedProduct? e) => e?.toJson()).toList(), 'productUnitId': _productUnitId
  };

  static final QueryField ID = QueryField(fieldName: "product.id");
  static final QueryField CODE = QueryField(fieldName: "code");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField PRICE = QueryField(fieldName: "price");
  static final QueryField UNIT = QueryField(
    fieldName: "unit",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Unit).toString()));
  static final QueryField DERIVEDPRODUCTS = QueryField(
    fieldName: "derivedProducts",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (DerivedProduct).toString()));
  static final QueryField PRODUCTUNITID = QueryField(fieldName: "productUnitId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Product";
    modelSchemaDefinition.pluralName = "Products";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.CODE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.PRICE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: Product.UNIT,
      isRequired: false,
      ofModelName: (Unit).toString(),
      associatedKey: Unit.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Product.DERIVEDPRODUCTS,
      isRequired: false,
      ofModelName: (DerivedProduct).toString(),
      associatedKey: DerivedProduct.PRODUCT
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Product.PRODUCTUNITID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _ProductModelType extends ModelType<Product> {
  const _ProductModelType();
  
  @override
  Product fromJson(Map<String, dynamic> jsonData) {
    return Product.fromJson(jsonData);
  }
}