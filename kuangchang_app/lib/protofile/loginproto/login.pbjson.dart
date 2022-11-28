///
//  Generated code. Do not modify.
//  source: login.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use user_login_requestDescriptor instead')
const user_login_request$json = const {
  '1': 'user_login_request',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 9, '10': 'account'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `user_login_request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List user_login_requestDescriptor = $convert.base64Decode('ChJ1c2VyX2xvZ2luX3JlcXVlc3QSGAoHYWNjb3VudBgBIAEoCVIHYWNjb3VudBIaCghwYXNzd29yZBgCIAEoCVIIcGFzc3dvcmQ=');
@$core.Deprecated('Use user_login_replyDescriptor instead')
const user_login_reply$json = const {
  '1': 'user_login_reply',
  '2': const [
    const {'1': 'issuccess', '3': 1, '4': 1, '5': 8, '10': 'issuccess'},
    const {'1': 'msg', '3': 2, '4': 3, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `user_login_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List user_login_replyDescriptor = $convert.base64Decode('ChB1c2VyX2xvZ2luX3JlcGx5EhwKCWlzc3VjY2VzcxgBIAEoCFIJaXNzdWNjZXNzEhAKA21zZxgCIAMoCVIDbXNn');
