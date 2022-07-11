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


/** This is an auto generated class representing the DerivedProduct type in your schema. */
@immutable
class DerivedProduct extends Model {
  static const classType = const _DerivedProductModelType();
  final String id;
  final Product? _product;
  final String? _name;
  final List<FutureOptionDetailValue>? _futureOptionValues;
  final double? _price;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  Product? get product {
    return _product;
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
  
  List<FutureOptionDetailValue>? get futureOptionValues {
    return _futureOptionValues;
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
  
  const DerivedProduct._internal({required this.id, product, required name, futureOptionValues, required price}): _product = product, _name = name, _futureOptionValues = futureOptionValues, _price = price;
  
  factory DerivedProduct({String? id, Product? product, required String name, List<FutureOptionDetailValue>? futureOptionValues, required double price}) {
    return DerivedProduct._internal(
      id: id == null ? UUID.getUUID() : id,
      product: product,
      name: name,
      futureOptionValues: futureOptionValues != null ? List<FutureOptionDetailValue>.unmodifiable(futureOptionValues) : futureOptionValues,
      price: price);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DerivedProduct &&
      id == other.id &&
      _product == other._product &&
      _name == other._name &&
      DeepCollectionEquality().equals(_futureOptionValues, other._futureOptionValues) &&
      _price == other._price;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("DerivedProduct {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("product=" + (_product != null ? _product!.toString() : "null") + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("price=" + (_price != null ? _price!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  DerivedProduct copyWith({String? id, Product? product, String? name, List<FutureOptionDetailValue>? futureOptionValues, double? price}) {
    return DerivedProduct(
      id: id ?? this.id,
      product: product ?? this.product,
      name: name ?? this.name,
      futureOptionValues: futureOptionValues ?? this.futureOptionValues,
      price: price ?? this.price);
  }
  
  DerivedProduct.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _product = json['product']?['serializedData'] != null
        ? Product.fromJson(new Map<String, dynamic>.from(json['product']['serializedData']))
        : null,
      _name = json['name'],
      _futureOptionValues = json['futureOptionValues'] is List
        ? (json['futureOptionValues'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => FutureOptionDetailValue.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _price = (json['price'] as num?)?.toDouble();
  
  Map<String, dynamic> toJson() => {
    'id': id, 'product': _product?.toJson(), 'name': _name, 'futureOptionValues': _futureOptionValues?.map((FutureOptionDetailValue? e) => e?.toJson()).toList(), 'price': _price
  };

  static final QueryField ID = QueryField(fieldName: "derivedProduct.id");
  static final QueryField PRODUCT = QueryField(
    fieldName: "product",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Product).toString()));
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField FUTUREOPTIONVALUES = QueryField(
    fieldName: "futureOptionValues",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (FutureOptionDetailValue).toString()));
  static final QueryField PRICE = QueryField(fieldName: "price");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "DerivedProduct";
    modelSchemaDefinition.pluralName = "DerivedProducts";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: DerivedProduct.PRODUCT,
      isRequired: false,
      targetName: "productDerivedProductsId",
      ofModelName: (Product).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DerivedProduct.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: DerivedProduct.FUTUREOPTIONVALUES,
      isRequired: false,
      ofModelName: (FutureOptionDetailValue).toString(),
      associatedKey: FutureOptionDetailValue.DERIVEDPRODUCTFUTUREOPTIONVALUESID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DerivedProduct.PRICE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
  });
}

class _DerivedProductModelType extends ModelType<DerivedProduct> {
  const _DerivedProductModelType();
  
  @override
  DerivedProduct fromJson(Map<String, dynamic> jsonData) {
    return DerivedProduct.fromJson(jsonData);
  }
}