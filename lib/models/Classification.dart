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


/** This is an auto generated class representing the Classification type in your schema. */
@immutable
class Classification extends Model {
  static const classType = const _ClassificationModelType();
  final String id;
  final String? _name;
  final Classification? _parent;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
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
  
  Classification? get parent {
    return _parent;
  }
  
  const Classification._internal({required this.id, required name, parent}): _name = name, _parent = parent;
  
  factory Classification({String? id, required String name, Classification? parent}) {
    return Classification._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      parent: parent);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Classification &&
      id == other.id &&
      _name == other._name &&
      _parent == other._parent;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Classification {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("parent=" + (_parent != null ? _parent!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Classification copyWith({String? id, String? name, Classification? parent}) {
    return Classification(
      id: id ?? this.id,
      name: name ?? this.name,
      parent: parent ?? this.parent);
  }
  
  Classification.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _parent = json['parent']?['serializedData'] != null
        ? Classification.fromJson(new Map<String, dynamic>.from(json['parent']['serializedData']))
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'parent': _parent?.toJson()
  };

  static final QueryField ID = QueryField(fieldName: "classification.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField PARENT = QueryField(
    fieldName: "parent",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Classification).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Classification";
    modelSchemaDefinition.pluralName = "Classifications";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Classification.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: Classification.PARENT,
      isRequired: false,
      targetName: "classificationChildrenId",
      ofModelName: (Classification).toString()
    ));
  });
}

class _ClassificationModelType extends ModelType<Classification> {
  const _ClassificationModelType();
  
  @override
  Classification fromJson(Map<String, dynamic> jsonData) {
    return Classification.fromJson(jsonData);
  }
}