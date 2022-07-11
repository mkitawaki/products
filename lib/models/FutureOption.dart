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


/** This is an auto generated class representing the FutureOption type in your schema. */
@immutable
class FutureOption extends Model {
  static const classType = const _FutureOptionModelType();
  final String id;
  final String? _code;
  final String? _name;
  final List<FutureOptionDetail>? _details;

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
  
  List<FutureOptionDetail>? get details {
    return _details;
  }
  
  const FutureOption._internal({required this.id, required code, required name, details}): _code = code, _name = name, _details = details;
  
  factory FutureOption({String? id, required String code, required String name, List<FutureOptionDetail>? details}) {
    return FutureOption._internal(
      id: id == null ? UUID.getUUID() : id,
      code: code,
      name: name,
      details: details != null ? List<FutureOptionDetail>.unmodifiable(details) : details);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FutureOption &&
      id == other.id &&
      _code == other._code &&
      _name == other._name &&
      DeepCollectionEquality().equals(_details, other._details);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("FutureOption {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("code=" + "$_code" + ", ");
    buffer.write("name=" + "$_name");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  FutureOption copyWith({String? id, String? code, String? name, List<FutureOptionDetail>? details}) {
    return FutureOption(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      details: details ?? this.details);
  }
  
  FutureOption.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _code = json['code'],
      _name = json['name'],
      _details = json['details'] is List
        ? (json['details'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => FutureOptionDetail.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'code': _code, 'name': _name, 'details': _details?.map((FutureOptionDetail? e) => e?.toJson()).toList()
  };

  static final QueryField ID = QueryField(fieldName: "futureOption.id");
  static final QueryField CODE = QueryField(fieldName: "code");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField DETAILS = QueryField(
    fieldName: "details",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (FutureOptionDetail).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "FutureOption";
    modelSchemaDefinition.pluralName = "FutureOptions";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FutureOption.CODE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FutureOption.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: FutureOption.DETAILS,
      isRequired: false,
      ofModelName: (FutureOptionDetail).toString(),
      associatedKey: FutureOptionDetail.FUTUREOPTIONDETAILSID
    ));
  });
}

class _FutureOptionModelType extends ModelType<FutureOption> {
  const _FutureOptionModelType();
  
  @override
  FutureOption fromJson(Map<String, dynamic> jsonData) {
    return FutureOption.fromJson(jsonData);
  }
}