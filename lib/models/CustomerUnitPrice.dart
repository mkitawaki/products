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


/** This is an auto generated class representing the CustomerUnitPrice type in your schema. */
@immutable
class CustomerUnitPrice extends Model {
  static const classType = const _CustomerUnitPriceModelType();
  final String id;
  final Product? _product;
  final Customer? _customer;
  final TemporalDate? _effectiveDate;
  final double? _salesPrice;
  final String? _customerUnitPriceProductId;
  final String? _customerUnitPriceCustomerId;

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
  
  Customer get customer {
    try {
      return _customer!;
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
  
  double get salesPrice {
    try {
      return _salesPrice!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get customerUnitPriceProductId {
    try {
      return _customerUnitPriceProductId!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get customerUnitPriceCustomerId {
    try {
      return _customerUnitPriceCustomerId!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const CustomerUnitPrice._internal({required this.id, required product, required customer, required effectiveDate, required salesPrice, required customerUnitPriceProductId, required customerUnitPriceCustomerId}): _product = product, _customer = customer, _effectiveDate = effectiveDate, _salesPrice = salesPrice, _customerUnitPriceProductId = customerUnitPriceProductId, _customerUnitPriceCustomerId = customerUnitPriceCustomerId;
  
  factory CustomerUnitPrice({String? id, required Product product, required Customer customer, required TemporalDate effectiveDate, required double salesPrice, required String customerUnitPriceProductId, required String customerUnitPriceCustomerId}) {
    return CustomerUnitPrice._internal(
      id: id == null ? UUID.getUUID() : id,
      product: product,
      customer: customer,
      effectiveDate: effectiveDate,
      salesPrice: salesPrice,
      customerUnitPriceProductId: customerUnitPriceProductId,
      customerUnitPriceCustomerId: customerUnitPriceCustomerId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerUnitPrice &&
      id == other.id &&
      _product == other._product &&
      _customer == other._customer &&
      _effectiveDate == other._effectiveDate &&
      _salesPrice == other._salesPrice &&
      _customerUnitPriceProductId == other._customerUnitPriceProductId &&
      _customerUnitPriceCustomerId == other._customerUnitPriceCustomerId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("CustomerUnitPrice {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("effectiveDate=" + (_effectiveDate != null ? _effectiveDate!.format() : "null") + ", ");
    buffer.write("salesPrice=" + (_salesPrice != null ? _salesPrice!.toString() : "null") + ", ");
    buffer.write("customerUnitPriceProductId=" + "$_customerUnitPriceProductId" + ", ");
    buffer.write("customerUnitPriceCustomerId=" + "$_customerUnitPriceCustomerId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  CustomerUnitPrice copyWith({String? id, Product? product, Customer? customer, TemporalDate? effectiveDate, double? salesPrice, String? customerUnitPriceProductId, String? customerUnitPriceCustomerId}) {
    return CustomerUnitPrice(
      id: id ?? this.id,
      product: product ?? this.product,
      customer: customer ?? this.customer,
      effectiveDate: effectiveDate ?? this.effectiveDate,
      salesPrice: salesPrice ?? this.salesPrice,
      customerUnitPriceProductId: customerUnitPriceProductId ?? this.customerUnitPriceProductId,
      customerUnitPriceCustomerId: customerUnitPriceCustomerId ?? this.customerUnitPriceCustomerId);
  }
  
  CustomerUnitPrice.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _product = json['product']?['serializedData'] != null
        ? Product.fromJson(new Map<String, dynamic>.from(json['product']['serializedData']))
        : null,
      _customer = json['customer']?['serializedData'] != null
        ? Customer.fromJson(new Map<String, dynamic>.from(json['customer']['serializedData']))
        : null,
      _effectiveDate = json['effectiveDate'] != null ? TemporalDate.fromString(json['effectiveDate']) : null,
      _salesPrice = (json['salesPrice'] as num?)?.toDouble(),
      _customerUnitPriceProductId = json['customerUnitPriceProductId'],
      _customerUnitPriceCustomerId = json['customerUnitPriceCustomerId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'product': _product?.toJson(), 'customer': _customer?.toJson(), 'effectiveDate': _effectiveDate?.format(), 'salesPrice': _salesPrice, 'customerUnitPriceProductId': _customerUnitPriceProductId, 'customerUnitPriceCustomerId': _customerUnitPriceCustomerId
  };

  static final QueryField ID = QueryField(fieldName: "customerUnitPrice.id");
  static final QueryField PRODUCT = QueryField(
    fieldName: "product",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Product).toString()));
  static final QueryField CUSTOMER = QueryField(
    fieldName: "customer",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Customer).toString()));
  static final QueryField EFFECTIVEDATE = QueryField(fieldName: "effectiveDate");
  static final QueryField SALESPRICE = QueryField(fieldName: "salesPrice");
  static final QueryField CUSTOMERUNITPRICEPRODUCTID = QueryField(fieldName: "customerUnitPriceProductId");
  static final QueryField CUSTOMERUNITPRICECUSTOMERID = QueryField(fieldName: "customerUnitPriceCustomerId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CustomerUnitPrice";
    modelSchemaDefinition.pluralName = "CustomerUnitPrices";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: CustomerUnitPrice.PRODUCT,
      isRequired: true,
      ofModelName: (Product).toString(),
      associatedKey: Product.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: CustomerUnitPrice.CUSTOMER,
      isRequired: true,
      ofModelName: (Customer).toString(),
      associatedKey: Customer.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CustomerUnitPrice.EFFECTIVEDATE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CustomerUnitPrice.SALESPRICE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CustomerUnitPrice.CUSTOMERUNITPRICEPRODUCTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CustomerUnitPrice.CUSTOMERUNITPRICECUSTOMERID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _CustomerUnitPriceModelType extends ModelType<CustomerUnitPrice> {
  const _CustomerUnitPriceModelType();
  
  @override
  CustomerUnitPrice fromJson(Map<String, dynamic> jsonData) {
    return CustomerUnitPrice.fromJson(jsonData);
  }
}