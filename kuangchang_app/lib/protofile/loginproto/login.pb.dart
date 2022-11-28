///
//  Generated code. Do not modify.
//  source: login.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class user_login_request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_login_request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'login_proto'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  user_login_request._() : super();
  factory user_login_request({
    $core.String? account,
    $core.String? password,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory user_login_request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory user_login_request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  user_login_request clone() => user_login_request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  user_login_request copyWith(void Function(user_login_request) updates) => super.copyWith((message) => updates(message as user_login_request)) as user_login_request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static user_login_request create() => user_login_request._();
  user_login_request createEmptyInstance() => create();
  static $pb.PbList<user_login_request> createRepeated() => $pb.PbList<user_login_request>();
  @$core.pragma('dart2js:noInline')
  static user_login_request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<user_login_request>(create);
  static user_login_request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get account => $_getSZ(0);
  @$pb.TagNumber(1)
  set account($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class user_login_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_login_reply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'login_proto'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'issuccess')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  user_login_reply._() : super();
  factory user_login_reply({
    $core.bool? issuccess,
    $core.Iterable<$core.String>? msg,
  }) {
    final _result = create();
    if (issuccess != null) {
      _result.issuccess = issuccess;
    }
    if (msg != null) {
      _result.msg.addAll(msg);
    }
    return _result;
  }
  factory user_login_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory user_login_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  user_login_reply clone() => user_login_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  user_login_reply copyWith(void Function(user_login_reply) updates) => super.copyWith((message) => updates(message as user_login_reply)) as user_login_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static user_login_reply create() => user_login_reply._();
  user_login_reply createEmptyInstance() => create();
  static $pb.PbList<user_login_reply> createRepeated() => $pb.PbList<user_login_reply>();
  @$core.pragma('dart2js:noInline')
  static user_login_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<user_login_reply>(create);
  static user_login_reply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get issuccess => $_getBF(0);
  @$pb.TagNumber(1)
  set issuccess($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIssuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearIssuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get msg => $_getList(1);
}

