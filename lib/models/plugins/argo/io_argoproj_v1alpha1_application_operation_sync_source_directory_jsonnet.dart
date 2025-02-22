//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: require_trailing_commas
// ignore_for_file: unused_element
// ignore_for_file: unnecessary_this
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:kubenav/models/kubernetes/helpers.dart';
import 'package:kubenav/models/plugins/argo/io_argoproj_v1alpha1_application_operation_sync_source_directory_jsonnet_ext_vars_inner.dart';

class IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet {
  /// Returns a new [IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet] instance.
  IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet({
    this.extVars = const [],
    this.libs = const [],
    this.tlas = const [],
  });

  /// ExtVars is a list of Jsonnet External Variables
  List<IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnetExtVarsInner>
      extVars;

  /// Additional library search dirs
  List<String> libs;

  /// TLAS is a list of Jsonnet Top-level Arguments
  List<IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnetExtVarsInner>
      tlas;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet &&
          deepEquality.equals(other.extVars, extVars) &&
          deepEquality.equals(other.libs, libs) &&
          deepEquality.equals(other.tlas, tlas);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (extVars.hashCode) + (libs.hashCode) + (tlas.hashCode);

  @override
  String toString() =>
      'IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet[extVars=$extVars, libs=$libs, tlas=$tlas]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'extVars'] = this.extVars;
    json[r'libs'] = this.libs;
    json[r'tlas'] = this.tlas;
    return json;
  }

  /// Returns a new [IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet?
      fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet(
        extVars:
            IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnetExtVarsInner
                .listFromJson(json[r'extVars']),
        libs: json[r'libs'] is Iterable
            ? (json[r'libs'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tlas:
            IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnetExtVarsInner
                .listFromJson(json[r'tlas']),
      );
    }
    return null;
  }

  static List<IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet>
      listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result =
        <IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value =
            IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet
                .fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String,
          IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet>
      mapFromJson(dynamic json) {
    final map = <String,
        IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet
                .fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet-objects as value to a dart map
  static Map<
          String,
          List<
              IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String,
        List<
            IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] =
            IoArgoprojV1alpha1ApplicationOperationSyncSourceDirectoryJsonnet
                .listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
