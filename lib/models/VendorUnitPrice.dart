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


/** This is an auto generated class representing the VendorUnitPrice type in your schema. */
@immutable
class VendorUnitPrice extends Model {
  static const classType = const _VendorUnitPriceModelType();
  final String id;
  final Product? _product;
  final Vendor? _vendor;
  final TemporalDate? _effectiveDate;
  final double? _purchasePrice;
  final String? _vendorUnitPriceProductId;
  final String? _vendorUnitPriceVendorId;

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
  
  Vendor get vendor {
    try {
      return _vendor!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDate get effectiveDate {
    try {
      return _effectiveDate!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get purchasePrice {
    try {
      return _purchasePrice!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get vendorUnitPriceProductId {
    try {
      return _vendorUnitPriceProductId!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get vendorUnitPriceVendorId {
    try {
      return _vendorUnitPriceVendorId!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const VendorUnitPrice._internal({required this.id, required product, required vendor, required effectiveDate, required purchasePrice, required vendorUnitPriceProductId, required vendorUnitPriceVendorId}): _product = product, _vendor = vendor, _effectiveDate = effectiveDate, _purchasePrice = purchasePrice, _vendorUnitPriceProductId = vendorUnitPriceProductId, _vendorUnitPriceVendorId = vendorUnitPriceVendorId;
  
  factory VendorUnitPrice({String? id, required Product product, required Vendor vendor, required TemporalDate effectiveDate, required double purchasePrice, required String vendorUnitPriceProductId, required String vendorUnitPriceVendorId}) {
    return VendorUnitPrice._internal(
      id: id == null ? UUID.getUUID() : id,
      product: product,
      vendor: vendor,
      effectiveDate: effectiveDate,
      purchasePrice: purchasePrice,
      vendorUnitPriceProductId: vendorUnitPriceProductId,
      vendorUnitPriceVendorId: vendorUnitPriceVendorId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorUnitPrice &&
      id == other.id &&
      _product == other._product &&
      _vendor == other._vendor &&
      _effectiveDate == other._effectiveDate &&
      _purchasePrice == other._purchasePrice &&
      _vendorUnitPriceProductId == other._vendorUnitPriceProductId &&
      _vendorUnitPriceVendorId == other._vendorUnitPriceVendorId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("VendorUnitPrice {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("effectiveDate=" + (_effectiveDate != null ? _effectiveDate!.format() : "null") + ", ");
    buffer.write("purchasePrice=" + (_purchasePrice != null ? _purchasePrice!.toString() : "null") + ", ");
    buffer.write("vendorUnitPriceProductId=" + "$_vendorUnitPriceProductId" + ", ");
    buffer.write("vendorUnitPriceVendorId=" + "$_vendorUnitPriceVendorId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  VendorUnitPrice copyWith({String? id, Product? product, Vendor? vendor, TemporalDate? effectiveDate, double? purchasePrice, String? vendorUnitPriceProductId, String? vendorUnitPriceVendorId}) {
    return VendorUnitPrice(
      id: id ?? this.id,
      product: product ?? this.product,
      vendor: vendor ?? this.vendor,
      effectiveDate: effectiveDate ?? this.effectiveDate,
      purchasePrice: purchasePrice ?? this.purchasePrice,
      vendorUnitPriceProductId: vendorUnitPriceProductId ?? this.vendorUnitPriceProductId,
      vendorUnitPriceVendorId: vendorUnitPriceVendorId ?? this.vendorUnitPriceVendorId);
  }
  
  VendorUnitPrice.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _product = json['product']?['serializedData'] != null
        ? Product.fromJson(new Map<String, dynamic>.from(json['product']['serializedData']))
        : null,
      _vendor = json['vendor']?['serializedData'] != null
        ? Vendor.fromJson(new Map<String, dynamic>.from(json['vendor']['serializedData']))
        : null,
      _effectiveDate = json['effectiveDate'] != null ? TemporalDate.fromString(json['effectiveDate']) : null,
      _purchasePrice = (json['purchasePrice'] as num?)?.toDouble(),
      _vendorUnitPriceProductId = json['vendorUnitPriceProductId'],
      _vendorUnitPriceVendorId = json['vendorUnitPriceVendorId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'product': _product?.toJson(), 'vendor': _vendor?.toJson(), 'effectiveDate': _effectiveDate?.format(), 'purchasePrice': _purchasePrice, 'vendorUnitPriceProductId': _vendorUnitPriceProductId, 'vendorUnitPriceVendorId': _vendorUnitPriceVendorId
  };

  static final QueryField ID = QueryField(fieldName: "vendorUnitPrice.id");
  static final QueryField PRODUCT = QueryField(
    fieldName: "product",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Product).toString()));
  static final QueryField VENDOR = QueryField(
    fieldName: "vendor",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Vendor).toString()));
  static final QueryField EFFECTIVEDATE = QueryField(fieldName: "effectiveDate");
  static final QueryField PURCHASEPRICE = QueryField(fieldName: "purchasePrice");
  static final QueryField VENDORUNITPRICEPRODUCTID = QueryField(fieldName: "vendorUnitPriceProductId");
  static final QueryField VENDORUNITPRICEVENDORID = QueryField(fieldName: "vendorUnitPriceVendorId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "VendorUnitPrice";
    modelSchemaDefinition.pluralName = "VendorUnitPrices";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: VendorUnitPrice.PRODUCT,
      isRequired: true,
      ofModelName: (Product).toString(),
      associatedKey: Product.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: VendorUnitPrice.VENDOR,
      isRequired: true,
      ofModelName: (Vendor).toString(),
      associatedKey: Vendor.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: VendorUnitPrice.EFFECTIVEDATE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: VendorUnitPrice.PURCHASEPRICE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: VendorUnitPrice.VENDORUNITPRICEPRODUCTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: VendorUnitPrice.VENDORUNITPRICEVENDORID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _VendorUnitPriceModelType extends ModelType<VendorUnitPrice> {
  const _VendorUnitPriceModelType();
  
  @override
  VendorUnitPrice fromJson(Map<String, dynamic> jsonData) {
    return VendorUnitPrice.fromJson(jsonData);
  }
}