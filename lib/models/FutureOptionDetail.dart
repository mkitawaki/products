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


/** This is an auto generated class representing the FutureOptionDetail type in your schema. */
@immutable
class FutureOptionDetail extends Model {
  static const classType = const _FutureOptionDetailModelType();
  final String id;
  final int? _no;
  final String? _name;
  final List<FutureOptionDetailValue>? _values;
  final String? _futureOptionDetailsId;

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
  
  List<FutureOptionDetailValue>? get values {
    return _values;
  }
  
  String? get futureOptionDetailsId {
    return _futureOptionDetailsId;
  }
  
  const FutureOptionDetail._internal({required this.id, required no, required name, values, futureOptionDetailsId}): _no = no, _name = name, _values = values, _futureOptionDetailsId = futureOptionDetailsId;
  
  factory FutureOptionDetail({String? id, required int no, required String name, List<FutureOptionDetailValue>? values, String? futureOptionDetailsId}) {
    return FutureOptionDetail._internal(
      id: id == null ? UUID.getUUID() : id,
      no: no,
      name: name,
      values: values != null ? List<FutureOptionDetailValue>.unmodifiable(values) : values,
      futureOptionDetailsId: futureOptionDetailsId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FutureOptionDetail &&
      id == other.id &&
      _no == other._no &&
      _name == other._name &&
      DeepCollectionEquality().equals(_values, other._values) &&
      _futureOptionDetailsId == other._futureOptionDetailsId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("FutureOptionDetail {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("no=" + (_no != null ? _no!.toString() : "null") + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("futureOptionDetailsId=" + "$_futureOptionDetailsId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  FutureOptionDetail copyWith({String? id, int? no, String? name, List<FutureOptionDetailValue>? values, String? futureOptionDetailsId}) {
    return FutureOptionDetail(
      id: id ?? this.id,
      no: no ?? this.no,
      name: name ?? this.name,
      values: values ?? this.values,
      futureOptionDetailsId: futureOptionDetailsId ?? this.futureOptionDetailsId);
  }
  
  FutureOptionDetail.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _no = (json['no'] as num?)?.toInt(),
      _name = json['name'],
      _values = json['values'] is List
        ? (json['values'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => FutureOptionDetailValue.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _futureOptionDetailsId = json['futureOptionDetailsId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'no': _no, 'name': _name, 'values': _values?.map((FutureOptionDetailValue? e) => e?.toJson()).toList(), 'futureOptionDetailsId': _futureOptionDetailsId
  };

  static final QueryField ID = QueryField(fieldName: "futureOptionDetail.id");
  static final QueryField NO = QueryField(fieldName: "no");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField VALUES = QueryField(
    fieldName: "values",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (FutureOptionDetailValue).toString()));
  static final QueryField FUTUREOPTIONDETAILSID = QueryField(fieldName: "futureOptionDetailsId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "FutureOptionDetail";
    modelSchemaDefinition.pluralName = "FutureOptionDetails";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FutureOptionDetail.NO,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FutureOptionDetail.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: FutureOptionDetail.VALUES,
      isRequired: false,
      ofModelName: (FutureOptionDetailValue).toString(),
      associatedKey: FutureOptionDetailValue.FUTUREOPTIONDETAILVALUESID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FutureOptionDetail.FUTUREOPTIONDETAILSID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _FutureOptionDetailModelType extends ModelType<FutureOptionDetail> {
  const _FutureOptionDetailModelType();
  
  @override
  FutureOptionDetail fromJson(Map<String, dynamic> jsonData) {
    return FutureOptionDetail.fromJson(jsonData);
  }
}