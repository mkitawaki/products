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
import 'Classification.dart';
import 'Combo.dart';
import 'ComboDetail.dart';
import 'Customer.dart';
import 'CustomerUnitPrice.dart';
import 'DerivedProduct.dart';
import 'FutureOption.dart';
import 'FutureOptionDetail.dart';
import 'FutureOptionDetailValue.dart';
import 'Product.dart';
import 'RangePrice.dart';
import 'SpecialSale.dart';
import 'SpecialSalePrice.dart';
import 'Unit.dart';
import 'Vendor.dart';
import 'VendorUnitPrice.dart';

export 'Classification.dart';
export 'Combo.dart';
export 'ComboDetail.dart';
export 'Customer.dart';
export 'CustomerUnitPrice.dart';
export 'DerivedProduct.dart';
export 'FutureOption.dart';
export 'FutureOptionDetail.dart';
export 'FutureOptionDetailValue.dart';
export 'Product.dart';
export 'RangePrice.dart';
export 'SpecialSale.dart';
export 'SpecialSalePrice.dart';
export 'Unit.dart';
export 'Vendor.dart';
export 'VendorUnitPrice.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "1d5d2f5706fe4baef02da88f214f1e0f";
  @override
  List<ModelSchema> modelSchemas = [Classification.schema, Combo.schema, ComboDetail.schema, Customer.schema, CustomerUnitPrice.schema, DerivedProduct.schema, FutureOption.schema, FutureOptionDetail.schema, FutureOptionDetailValue.schema, Product.schema, RangePrice.schema, SpecialSale.schema, SpecialSalePrice.schema, Unit.schema, Vendor.schema, VendorUnitPrice.schema];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;
  
  ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
      case "Classification":
        return Classification.classType;
      case "Combo":
        return Combo.classType;
      case "ComboDetail":
        return ComboDetail.classType;
      case "Customer":
        return Customer.classType;
      case "CustomerUnitPrice":
        return CustomerUnitPrice.classType;
      case "DerivedProduct":
        return DerivedProduct.classType;
      case "FutureOption":
        return FutureOption.classType;
      case "FutureOptionDetail":
        return FutureOptionDetail.classType;
      case "FutureOptionDetailValue":
        return FutureOptionDetailValue.classType;
      case "Product":
        return Product.classType;
      case "RangePrice":
        return RangePrice.classType;
      case "SpecialSale":
        return SpecialSale.classType;
      case "SpecialSalePrice":
        return SpecialSalePrice.classType;
      case "Unit":
        return Unit.classType;
      case "Vendor":
        return Vendor.classType;
      case "VendorUnitPrice":
        return VendorUnitPrice.classType;
      default:
        throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
  }
}