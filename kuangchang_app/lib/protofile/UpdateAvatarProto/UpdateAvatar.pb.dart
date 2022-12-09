///
//  Generated code. Do not modify.
//  source: UpdateAvatar.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UpdateAvatar_request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateAvatar_request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateAvatar_proto'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar')
    ..hasRequiredFields = false
  ;

  UpdateAvatar_request._() : super();
  factory UpdateAvatar_request({
    $core.String? account,
    $core.String? avatar,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    if (avatar != null) {
      _result.avatar = avatar;
    }
    return _result;
  }
  factory UpdateAvatar_request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateAvatar_request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateAvatar_request clone() => UpdateAvatar_request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateAvatar_request copyWith(void Function(UpdateAvatar_request) updates) => super.copyWith((message) => updates(message as UpdateAvatar_request)) as UpdateAvatar_request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateAvatar_request create() => UpdateAvatar_request._();
  UpdateAvatar_request createEmptyInstance() => create();
  static $pb.PbList<UpdateAvatar_request> createRepeated() => $pb.PbList<UpdateAvatar_request>();
  @$core.pragma('dart2js:noInline')
  static UpdateAvatar_request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateAvatar_request>(create);
  static UpdateAvatar_request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get account => $_getSZ(0);
  @$pb.TagNumber(1)
  set account($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get avatar => $_getSZ(1);
  @$pb.TagNumber(2)
  set avatar($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAvatar() => $_has(1);
  @$pb.TagNumber(2)
  void clearAvatar() => clearField(2);
}

class UpdateAvatar_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateAvatar_reply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateAvatar_proto'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'issuccess')
    ..hasRequiredFields = false
  ;

  UpdateAvatar_reply._() : super();
  factory UpdateAvatar_reply({
    $core.bool? issuccess,
  }) {
    final _result = create();
    if (issuccess != null) {
      _result.issuccess = issuccess;
    }
    return _result;
  }
  factory UpdateAvatar_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateAvatar_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateAvatar_reply clone() => UpdateAvatar_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateAvatar_reply copyWith(void Function(UpdateAvatar_reply) updates) => super.copyWith((message) => updates(message as UpdateAvatar_reply)) as UpdateAvatar_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateAvatar_reply create() => UpdateAvatar_reply._();
  UpdateAvatar_reply createEmptyInstance() => create();
  static $pb.PbList<UpdateAvatar_reply> createRepeated() => $pb.PbList<UpdateAvatar_reply>();
  @$core.pragma('dart2js:noInline')
  static UpdateAvatar_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateAvatar_reply>(create);
  static UpdateAvatar_reply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get issuccess => $_getBF(0);
  @$pb.TagNumber(1)
  set issuccess($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIssuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearIssuccess() => clearField(1);
}

