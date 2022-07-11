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
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the SpecialSalePrice type in your schema. */
@immutable
class SpecialSalePrice extends Model {
  static const classType = const _SpecialSalePriceModelType();
  final String id;
  final int? _no;
  final Product? _product;
  final double? _unitPrice;
  final String? _specialSalePriceProductId;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  int get no {
    try {
      return _no!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Product get product {
    try {
      return _product!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get unitPrice {
    try {
      return _unitPrice!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get specialSalePriceProductId {
    try {
      return _specialSalePriceProductId!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const SpecialSalePrice._internal({required this.id, required no, required product, required unitPrice, required specialSalePriceProductId}): _no = no, _product = product, _unitPrice = unitPrice, _specialSalePriceProductId = specialSalePriceProductId;
  
  factory SpecialSalePrice({String? id, required int no, required Product product, required double unitPrice, required String specialSalePriceProductId}) {
    return SpecialSalePrice._internal(
      id: id == null ? UUID.getUUID() : id,
      no: no,
      product: product,
      unitPrice: unitPrice,
      specialSalePriceProductId: specialSalePriceProductId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpecialSalePrice &&
      id == other.id &&
      _no == other._no &&
      _product == other._product &&
      _unitPrice == other._unitPrice &&
      _specialSalePriceProductId == other._specialSalePriceProductId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("SpecialSalePrice {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("no=" + (_no != null ? _no!.toString() : "null") + ", ");
    buffer.write("unitPrice=" + (_unitPrice != null ? _unitPrice!.toString() : "null") + ", ");
    buffer.write("specialSalePriceProductId=" + "$_specialSalePriceProductId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  SpecialSalePrice copyWith({String? id, int? no, Product? product, double? unitPrice, String? specialSalePriceProductId}) {
    return SpecialSalePrice(
      id: id ?? this.id,
      no: no ?? this.no,
      product: product ?? this.product,
      unitPrice: unitPrice ?? this.unitPrice,
      specialSalePriceProductId: specialSalePriceProductId ?? this.specialSalePriceProductId);
  }
  
  SpecialSalePrice.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _no = (json['no'] as num?)?.toInt(),
      _product = json['product']?['serializedData'] != null
        ? Product.fromJson(new Map<String, dynamic>.from(json['product']['serializedData']))
        : null,
      _unitPrice = (json['unitPrice'] as num?)?.toDouble(),
      _specialSalePriceProductId = json['specialSalePriceProductId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'no': _no, 'product': _product?.toJson(), 'unitPrice': _unitPrice, 'specialSalePriceProductId': _specialSalePriceProductId
  };

  static final QueryField ID = QueryField(fieldName: "specialSalePrice.id");
  static final QueryField NO = QueryField(fieldName: "no");
  static final QueryField PRODUCT = QueryField(
    fieldName: "product",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Product).toString()));
  static final QueryField UNITPRICE = QueryField(fieldName: "unitPrice");
  static final QueryField SPECIALSALEPRICEPRODUCTID = QueryField(fieldName: "specialSalePriceProductId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "SpecialSalePrice";
    modelSchemaDefinition.pluralName = "SpecialSalePrices";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: SpecialSalePrice.NO,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: SpecialSalePrice.PRODUCT,
      isRequired: true,
      ofModelName: (Product).toString(),
      associatedKey: Product.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: SpecialSalePrice.UNITPRICE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: SpecialSalePrice.SPECIALSALEPRICEPRODUCTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _SpecialSalePriceModelType extends ModelType<SpecialSalePrice> {
  const _SpecialSalePriceModelType();
  
  @override
  SpecialSalePrice fromJson(Map<String, dynamic> jsonData) {
    return SpecialSalePrice.fromJson(jsonData);
  }
}