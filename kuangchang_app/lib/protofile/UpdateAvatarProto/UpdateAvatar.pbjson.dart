///
//  Generated code. Do not modify.
//  source: UpdateAvatar.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use updateAvatar_requestDescriptor instead')
const UpdateAvatar_request$json = const {
  '1': 'UpdateAvatar_request',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 9, '10': 'account'},
    const {'1': 'avatar', '3': 2, '4': 1, '5': 9, '10': 'avatar'},
  ],
};

/// Descriptor for `UpdateAvatar_request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAvatar_requestDescriptor = $convert.base64Decode('ChRVcGRhdGVBdmF0YXJfcmVxdWVzdBIYCgdhY2NvdW50GAEgASgJUgdhY2NvdW50EhYKBmF2YXRhchgCIAEoCVIGYXZhdGFy');
@$core.Deprecated('Use updateAvatar_replyDescriptor instead')
const UpdateAvatar_reply$json = const {
  '1': 'UpdateAvatar_reply',
  '2': const [
    const {'1': 'issuccess', '3': 1, '4': 1, '5': 8, '10': 'issuccess'},
  ],
};

/// Descriptor for `UpdateAvatar_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAvatar_replyDescriptor = $convert.base64Decode('ChJVcGRhdGVBdmF0YXJfcmVwbHkSHAoJaXNzdWNjZXNzGAEgASgIUglpc3N1Y2Nlc3M=');
