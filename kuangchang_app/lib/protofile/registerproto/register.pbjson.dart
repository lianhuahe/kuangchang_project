///
//  Generated code. Do not modify.
//  source: register.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use user_register_requestDescriptor instead')
const user_register_request$json = const {
  '1': 'user_register_request',
  '2': const [
    const {'1': 'accout', '3': 1, '4': 1, '5': 9, '10': 'accout'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `user_register_request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List user_register_requestDescriptor = $convert.base64Decode('ChV1c2VyX3JlZ2lzdGVyX3JlcXVlc3QSFgoGYWNjb3V0GAEgASgJUgZhY2NvdXQSGgoIcGFzc3dvcmQYAiABKAlSCHBhc3N3b3JkEhIKBG5hbWUYAyABKAlSBG5hbWU=');
@$core.Deprecated('Use user_register_replyDescriptor instead')
const user_register_reply$json = const {
  '1': 'user_register_reply',
  '2': const [
    const {'1': 'issuccess', '3': 1, '4': 1, '5': 8, '10': 'issuccess'},
  ],
};

/// Descriptor for `user_register_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List user_register_replyDescriptor = $convert.base64Decode('ChN1c2VyX3JlZ2lzdGVyX3JlcGx5EhwKCWlzc3VjY2VzcxgBIAEoCFIJaXNzdWNjZXNz');
