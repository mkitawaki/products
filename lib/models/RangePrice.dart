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


/** This is an auto generated class representing the RangePrice type in your schema. */
@immutable
class RangePrice extends Model {
  static const classType = const _RangePriceModelType();
  final String id;
  final Product? _product;
  final double? _fromAmout;
  final double? _unitPrice;
  final String? _rangePriceProductId;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
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
  
  double get fromAmout {
    try {
      return _fromAmout!;
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
  
  String get rangePriceProductId {
    try {
      return _rangePriceProductId!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const RangePrice._internal({required this.id, required product, required fromAmout, required unitPrice, required rangePriceProductId}): _product = product, _fromAmout = fromAmout, _unitPrice = unitPrice, _rangePriceProductId = rangePriceProductId;
  
  factory RangePrice({String? id, required Product product, required double fromAmout, required double unitPrice, required String rangePriceProductId}) {
    return RangePrice._internal(
      id: id == null ? UUID.getUUID() : id,
      product: product,
      fromAmout: fromAmout,
      unitPrice: unitPrice,
      rangePriceProductId: rangePriceProductId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RangePrice &&
      id == other.id &&
      _product == other._product &&
      _fromAmout == other._fromAmout &&
      _unitPrice == other._unitPrice &&
      _rangePriceProductId == other._rangePriceProductId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("RangePrice {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("fromAmout=" + (_fromAmout != null ? _fromAmout!.toString() : "null") + ", ");
    buffer.write("unitPrice=" + (_unitPrice != null ? _unitPrice!.toString() : "null") + ", ");
    buffer.write("rangePriceProductId=" + "$_rangePriceProductId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  RangePrice copyWith({String? id, Product? product, double? fromAmout, double? unitPrice, String? rangePriceProductId}) {
    return RangePrice(
      id: id ?? this.id,
      product: product ?? this.product,
      fromAmout: fromAmout ?? this.fromAmout,
      unitPrice: unitPrice ?? this.unitPrice,
      rangePriceProductId: rangePriceProductId ?? this.rangePriceProductId);
  }
  
  RangePrice.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _product = json['product']?['serializedData'] != null
        ? Product.fromJson(new Map<String, dynamic>.from(json['product']['serializedData']))
        : null,
      _fromAmout = (json['fromAmout'] as num?)?.toDouble(),
      _unitPrice = (json['unitPrice'] as num?)?.toDouble(),
      _rangePriceProductId = json['rangePriceProductId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'product': _product?.toJson(), 'fromAmout': _fromAmout, 'unitPrice': _unitPrice, 'rangePriceProductId': _rangePriceProductId
  };

  static final QueryField ID = QueryField(fieldName: "rangePrice.id");
  static final QueryField PRODUCT = QueryField(
    fieldName: "product",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Product).toString()));
  static final QueryField FROMAMOUT = QueryField(fieldName: "fromAmout");
  static final QueryField UNITPRICE = QueryField(fieldName: "unitPrice");
  static final QueryField RANGEPRICEPRODUCTID = QueryField(fieldName: "rangePriceProductId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "RangePrice";
    modelSchemaDefinition.pluralName = "RangePrices";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: RangePrice.PRODUCT,
      isRequired: true,
      ofModelName: (Product).toString(),
      associatedKey: Product.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: RangePrice.FROMAMOUT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: RangePrice.UNITPRICE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: RangePrice.RANGEPRICEPRODUCTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _RangePriceModelType extends ModelType<RangePrice> {
  const _RangePriceModelType();
  
  @override
  RangePrice fromJson(Map<String, dynamic> jsonData) {
    return RangePrice.fromJson(jsonData);
  }
}