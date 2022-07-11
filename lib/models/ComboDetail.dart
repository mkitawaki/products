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


/** This is an auto generated class representing the ComboDetail type in your schema. */
@immutable
class ComboDetail extends Model {
  static const classType = const _ComboDetailModelType();
  final String id;
  final String? _code;
  final Product? _product;
  final double? _quantity;
  final String? _comboComboDetailsId;
  final String? _comboDetailProductId;

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
  
  Product? get product {
    return _product;
  }
  
  double get quantity {
    try {
      return _quantity!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get comboComboDetailsId {
    return _comboComboDetailsId;
  }
  
  String? get comboDetailProductId {
    return _comboDetailProductId;
  }
  
  const ComboDetail._internal({required this.id, required code, product, required quantity, comboComboDetailsId, comboDetailProductId}): _code = code, _product = product, _quantity = quantity, _comboComboDetailsId = comboComboDetailsId, _comboDetailProductId = comboDetailProductId;
  
  factory ComboDetail({String? id, required String code, Product? product, required double quantity, String? comboComboDetailsId, String? comboDetailProductId}) {
    return ComboDetail._internal(
      id: id == null ? UUID.getUUID() : id,
      code: code,
      product: product,
      quantity: quantity,
      comboComboDetailsId: comboComboDetailsId,
      comboDetailProductId: comboDetailProductId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComboDetail &&
      id == other.id &&
      _code == other._code &&
      _product == other._product &&
      _quantity == other._quantity &&
      _comboComboDetailsId == other._comboComboDetailsId &&
      _comboDetailProductId == other._comboDetailProductId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ComboDetail {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("code=" + "$_code" + ", ");
    buffer.write("quantity=" + (_quantity != null ? _quantity!.toString() : "null") + ", ");
    buffer.write("comboComboDetailsId=" + "$_comboComboDetailsId" + ", ");
    buffer.write("comboDetailProductId=" + "$_comboDetailProductId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ComboDetail copyWith({String? id, String? code, Product? product, double? quantity, String? comboComboDetailsId, String? comboDetailProductId}) {
    return ComboDetail(
      id: id ?? this.id,
      code: code ?? this.code,
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
      comboComboDetailsId: comboComboDetailsId ?? this.comboComboDetailsId,
      comboDetailProductId: comboDetailProductId ?? this.comboDetailProductId);
  }
  
  ComboDetail.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _code = json['code'],
      _product = json['product']?['serializedData'] != null
        ? Product.fromJson(new Map<String, dynamic>.from(json['product']['serializedData']))
        : null,
      _quantity = (json['quantity'] as num?)?.toDouble(),
      _comboComboDetailsId = json['comboComboDetailsId'],
      _comboDetailProductId = json['comboDetailProductId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'code': _code, 'product': _product?.toJson(), 'quantity': _quantity, 'comboComboDetailsId': _comboComboDetailsId, 'comboDetailProductId': _comboDetailProductId
  };

  static final QueryField ID = QueryField(fieldName: "comboDetail.id");
  static final QueryField CODE = QueryField(fieldName: "code");
  static final QueryField PRODUCT = QueryField(
    fieldName: "product",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Product).toString()));
  static final QueryField QUANTITY = QueryField(fieldName: "quantity");
  static final QueryField COMBOCOMBODETAILSID = QueryField(fieldName: "comboComboDetailsId");
  static final QueryField COMBODETAILPRODUCTID = QueryField(fieldName: "comboDetailProductId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ComboDetail";
    modelSchemaDefinition.pluralName = "ComboDetails";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ComboDetail.CODE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: ComboDetail.PRODUCT,
      isRequired: false,
      ofModelName: (Product).toString(),
      associatedKey: Product.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ComboDetail.QUANTITY,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ComboDetail.COMBOCOMBODETAILSID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ComboDetail.COMBODETAILPRODUCTID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _ComboDetailModelType extends ModelType<ComboDetail> {
  const _ComboDetailModelType();
  
  @override
  ComboDetail fromJson(Map<String, dynamic> jsonData) {
    return ComboDetail.fromJson(jsonData);
  }
}