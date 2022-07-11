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


/** This is an auto generated class representing the SpecialSale type in your schema. */
@immutable
class SpecialSale extends Model {
  static const classType = const _SpecialSaleModelType();
  final String id;
  final String? _code;
  final TemporalDateTime? _startDate;
  final TemporalDateTime? _endDate;

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
  
  TemporalDateTime get startDate {
    try {
      return _startDate!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime get endDate {
    try {
      return _endDate!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const SpecialSale._internal({required this.id, required code, required startDate, required endDate}): _code = code, _startDate = startDate, _endDate = endDate;
  
  factory SpecialSale({String? id, required String code, required TemporalDateTime startDate, required TemporalDateTime endDate}) {
    return SpecialSale._internal(
      id: id == null ? UUID.getUUID() : id,
      code: code,
      startDate: startDate,
      endDate: endDate);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpecialSale &&
      id == other.id &&
      _code == other._code &&
      _startDate == other._startDate &&
      _endDate == other._endDate;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("SpecialSale {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("code=" + "$_code" + ", ");
    buffer.write("startDate=" + (_startDate != null ? _startDate!.format() : "null") + ", ");
    buffer.write("endDate=" + (_endDate != null ? _endDate!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  SpecialSale copyWith({String? id, String? code, TemporalDateTime? startDate, TemporalDateTime? endDate}) {
    return SpecialSale(
      id: id ?? this.id,
      code: code ?? this.code,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate);
  }
  
  SpecialSale.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _code = json['code'],
      _startDate = json['startDate'] != null ? TemporalDateTime.fromString(json['startDate']) : null,
      _endDate = json['endDate'] != null ? TemporalDateTime.fromString(json['endDate']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'code': _code, 'startDate': _startDate?.format(), 'endDate': _endDate?.format()
  };

  static final QueryField ID = QueryField(fieldName: "specialSale.id");
  static final QueryField CODE = QueryField(fieldName: "code");
  static final QueryField STARTDATE = QueryField(fieldName: "startDate");
  static final QueryField ENDDATE = QueryField(fieldName: "endDate");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "SpecialSale";
    modelSchemaDefinition.pluralName = "SpecialSales";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: SpecialSale.CODE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: SpecialSale.STARTDATE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: SpecialSale.ENDDATE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _SpecialSaleModelType extends ModelType<SpecialSale> {
  const _SpecialSaleModelType();
  
  @override
  SpecialSale fromJson(Map<String, dynamic> jsonData) {
    return SpecialSale.fromJson(jsonData);
  }
}