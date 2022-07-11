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


/** This is an auto generated class representing the Combo type in your schema. */
@immutable
class Combo extends Model {
  static const classType = const _ComboModelType();
  final String id;
  final String? _code;
  final String? _name;
  final List<ComboDetail>? _comboDetails;

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
  
  List<ComboDetail>? get comboDetails {
    return _comboDetails;
  }
  
  const Combo._internal({required this.id, required code, required name, comboDetails}): _code = code, _name = name, _comboDetails = comboDetails;
  
  factory Combo({String? id, required String code, required String name, List<ComboDetail>? comboDetails}) {
    return Combo._internal(
      id: id == null ? UUID.getUUID() : id,
      code: code,
      name: name,
      comboDetails: comboDetails != null ? List<ComboDetail>.unmodifiable(comboDetails) : comboDetails);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Combo &&
      id == other.id &&
      _code == other._code &&
      _name == other._name &&
      DeepCollectionEquality().equals(_comboDetails, other._comboDetails);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Combo {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("code=" + "$_code" + ", ");
    buffer.write("name=" + "$_name");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Combo copyWith({String? id, String? code, String? name, List<ComboDetail>? comboDetails}) {
    return Combo(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      comboDetails: comboDetails ?? this.comboDetails);
  }
  
  Combo.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _code = json['code'],
      _name = json['name'],
      _comboDetails = json['comboDetails'] is List
        ? (json['comboDetails'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ComboDetail.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'code': _code, 'name': _name, 'comboDetails': _comboDetails?.map((ComboDetail? e) => e?.toJson()).toList()
  };

  static final QueryField ID = QueryField(fieldName: "combo.id");
  static final QueryField CODE = QueryField(fieldName: "code");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField COMBODETAILS = QueryField(
    fieldName: "comboDetails",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (ComboDetail).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Combo";
    modelSchemaDefinition.pluralName = "Combos";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Combo.CODE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Combo.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Combo.COMBODETAILS,
      isRequired: false,
      ofModelName: (ComboDetail).toString(),
      associatedKey: ComboDetail.COMBOCOMBODETAILSID
    ));
  });
}

class _ComboModelType extends ModelType<Combo> {
  const _ComboModelType();
  
  @override
  Combo fromJson(Map<String, dynamic> jsonData) {
    return Combo.fromJson(jsonData);
  }
}