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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the FutureOptionDetailValue type in your schema. */
@immutable
class FutureOptionDetailValue extends Model {
  static const classType = const _FutureOptionDetailValueModelType();
  final String id;
  final String? _code;
  final String? _name;
  final String? _futureOptionDetailValuesId;
  final String? _derivedProductFutureOptionValuesId;

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
  
  String? get futureOptionDetailValuesId {
    return _futureOptionDetailValuesId;
  }
  
  String? get derivedProductFutureOptionValuesId {
    return _derivedProductFutureOptionValuesId;
  }
  
  const FutureOptionDetailValue._internal({required this.id, required code, required name, futureOptionDetailValuesId, derivedProductFutureOptionValuesId}): _code = code, _name = name, _futureOptionDetailValuesId = futureOptionDetailValuesId, _derivedProductFutureOptionValuesId = derivedProductFutureOptionValuesId;
  
  factory FutureOptionDetailValue({String? id, required String code, required String name, String? futureOptionDetailValuesId, String? derivedProductFutureOptionValuesId}) {
    return FutureOptionDetailValue._internal(
      id: id == null ? UUID.getUUID() : id,
      code: code,
      name: name,
      futureOptionDetailValuesId: futureOptionDetailValuesId,
      derivedProductFutureOptionValuesId: derivedProductFutureOptionValuesId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FutureOptionDetailValue &&
      id == other.id &&
      _code == other._code &&
      _name == other._name &&
      _futureOptionDetailValuesId == other._futureOptionDetailValuesId &&
      _derivedProductFutureOptionValuesId == other._derivedProductFutureOptionValuesId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("FutureOptionDetailValue {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("code=" + "$_code" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("futureOptionDetailValuesId=" + "$_futureOptionDetailValuesId" + ", ");
    buffer.write("derivedProductFutureOptionValuesId=" + "$_derivedProductFutureOptionValuesId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  FutureOptionDetailValue copyWith({String? id, String? code, String? name, String? futureOptionDetailValuesId, String? derivedProductFutureOptionValuesId}) {
    return FutureOptionDetailValue(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      futureOptionDetailValuesId: futureOptionDetailValuesId ?? this.futureOptionDetailValuesId,
      derivedProductFutureOptionValuesId: derivedProductFutureOptionValuesId ?? this.derivedProductFutureOptionValuesId);
  }
  
  FutureOptionDetailValue.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _code = json['code'],
      _name = json['name'],
      _futureOptionDetailValuesId = json['futureOptionDetailValuesId'],
      _derivedProductFutureOptionValuesId = json['derivedProductFutureOptionValuesId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'code': _code, 'name': _name, 'futureOptionDetailValuesId': _futureOptionDetailValuesId, 'derivedProductFutureOptionValuesId': _derivedProductFutureOptionValuesId
  };

  static final QueryField ID = QueryField(fieldName: "futureOptionDetailValue.id");
  static final QueryField CODE = QueryField(fieldName: "code");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField FUTUREOPTIONDETAILVALUESID = QueryField(fieldName: "futureOptionDetailValuesId");
  static final QueryField DERIVEDPRODUCTFUTUREOPTIONVALUESID = QueryField(fieldName: "derivedProductFutureOptionValuesId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "FutureOptionDetailValue";
    modelSchemaDefinition.pluralName = "FutureOptionDetailValues";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FutureOptionDetailValue.CODE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FutureOptionDetailValue.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FutureOptionDetailValue.FUTUREOPTIONDETAILVALUESID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FutureOptionDetailValue.DERIVEDPRODUCTFUTUREOPTIONVALUESID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _FutureOptionDetailValueModelType extends ModelType<FutureOptionDetailValue> {
  const _FutureOptionDetailValueModelType();
  
  @override
  FutureOptionDetailValue fromJson(Map<String, dynamic> jsonData) {
    return FutureOptionDetailValue.fromJson(jsonData);
  }
}