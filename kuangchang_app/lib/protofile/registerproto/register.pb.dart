///
//  Generated code. Do not modify.
//  source: register.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class user_register_request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_register_request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'register_proto'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accout')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  user_register_request._() : super();
  factory user_register_request({
    $core.String? accout,
    $core.String? password,
    $core.String? name,
  }) {
    final _result = create();
    if (accout != null) {
      _result.accout = accout;
    }
    if (password != null) {
      _result.password = password;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory user_register_request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory user_register_request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  user_register_request clone() => user_register_request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  user_register_request copyWith(void Function(user_register_request) updates) => super.copyWith((message) => updates(message as user_register_request)) as user_register_request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static user_register_request create() => user_register_request._();
  user_register_request createEmptyInstance() => create();
  static $pb.PbList<user_register_request> createRepeated() => $pb.PbList<user_register_request>();
  @$core.pragma('dart2js:noInline')
  static user_register_request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<user_register_request>(create);
  static user_register_request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accout => $_getSZ(0);
  @$pb.TagNumber(1)
  set accout($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccout() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccout() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class user_register_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_register_reply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'register_proto'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'issuccess')
    ..hasRequiredFields = false
  ;

  user_register_reply._() : super();
  factory user_register_reply({
    $core.bool? issuccess,
  }) {
    final _result = create();
    if (issuccess != null) {
      _result.issuccess = issuccess;
    }
    return _result;
  }
  factory user_register_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory user_register_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  user_register_reply clone() => user_register_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  user_register_reply copyWith(void Function(user_register_reply) updates) => super.copyWith((message) => updates(message as user_register_reply)) as user_register_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static user_register_reply create() => user_register_reply._();
  user_register_reply createEmptyInstance() => create();
  static $pb.PbList<user_register_reply> createRepeated() => $pb.PbList<user_register_reply>();
  @$core.pragma('dart2js:noInline')
  static user_register_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<user_register_reply>(create);
  static user_register_reply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get issuccess => $_getBF(0);
  @$pb.TagNumber(1)
  set issuccess($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIssuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearIssuccess() => clearField(1);
}

