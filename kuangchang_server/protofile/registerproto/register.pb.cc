// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: register.proto

#include "register.pb.h"

#include <algorithm>

#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/extension_set.h>
#include <google/protobuf/wire_format_lite.h>
#include <google/protobuf/descriptor.h>
#include <google/protobuf/generated_message_reflection.h>
#include <google/protobuf/reflection_ops.h>
#include <google/protobuf/wire_format.h>
// @@protoc_insertion_point(includes)
#include <google/protobuf/port_def.inc>

PROTOBUF_PRAGMA_INIT_SEG

namespace _pb = ::PROTOBUF_NAMESPACE_ID;
namespace _pbi = _pb::internal;

namespace register_proto {
PROTOBUF_CONSTEXPR user_register_request::user_register_request(
    ::_pbi::ConstantInitialized): _impl_{
    /*decltype(_impl_.account_)*/{&::_pbi::fixed_address_empty_string, ::_pbi::ConstantInitialized{}}
  , /*decltype(_impl_.password_)*/{&::_pbi::fixed_address_empty_string, ::_pbi::ConstantInitialized{}}
  , /*decltype(_impl_.name_)*/{&::_pbi::fixed_address_empty_string, ::_pbi::ConstantInitialized{}}
  , /*decltype(_impl_._cached_size_)*/{}} {}
struct user_register_requestDefaultTypeInternal {
  PROTOBUF_CONSTEXPR user_register_requestDefaultTypeInternal()
      : _instance(::_pbi::ConstantInitialized{}) {}
  ~user_register_requestDefaultTypeInternal() {}
  union {
    user_register_request _instance;
  };
};
PROTOBUF_ATTRIBUTE_NO_DESTROY PROTOBUF_CONSTINIT PROTOBUF_ATTRIBUTE_INIT_PRIORITY1 user_register_requestDefaultTypeInternal _user_register_request_default_instance_;
PROTOBUF_CONSTEXPR user_register_reply::user_register_reply(
    ::_pbi::ConstantInitialized): _impl_{
    /*decltype(_impl_.issuccess_)*/false
  , /*decltype(_impl_._cached_size_)*/{}} {}
struct user_register_replyDefaultTypeInternal {
  PROTOBUF_CONSTEXPR user_register_replyDefaultTypeInternal()
      : _instance(::_pbi::ConstantInitialized{}) {}
  ~user_register_replyDefaultTypeInternal() {}
  union {
    user_register_reply _instance;
  };
};
PROTOBUF_ATTRIBUTE_NO_DESTROY PROTOBUF_CONSTINIT PROTOBUF_ATTRIBUTE_INIT_PRIORITY1 user_register_replyDefaultTypeInternal _user_register_reply_default_instance_;
}  // namespace register_proto
static ::_pb::Metadata file_level_metadata_register_2eproto[2];
static constexpr ::_pb::EnumDescriptor const** file_level_enum_descriptors_register_2eproto = nullptr;
static constexpr ::_pb::ServiceDescriptor const** file_level_service_descriptors_register_2eproto = nullptr;

const uint32_t TableStruct_register_2eproto::offsets[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) = {
  ~0u,  // no _has_bits_
  PROTOBUF_FIELD_OFFSET(::register_proto::user_register_request, _internal_metadata_),
  ~0u,  // no _extensions_
  ~0u,  // no _oneof_case_
  ~0u,  // no _weak_field_map_
  ~0u,  // no _inlined_string_donated_
  PROTOBUF_FIELD_OFFSET(::register_proto::user_register_request, _impl_.account_),
  PROTOBUF_FIELD_OFFSET(::register_proto::user_register_request, _impl_.password_),
  PROTOBUF_FIELD_OFFSET(::register_proto::user_register_request, _impl_.name_),
  ~0u,  // no _has_bits_
  PROTOBUF_FIELD_OFFSET(::register_proto::user_register_reply, _internal_metadata_),
  ~0u,  // no _extensions_
  ~0u,  // no _oneof_case_
  ~0u,  // no _weak_field_map_
  ~0u,  // no _inlined_string_donated_
  PROTOBUF_FIELD_OFFSET(::register_proto::user_register_reply, _impl_.issuccess_),
};
static const ::_pbi::MigrationSchema schemas[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) = {
  { 0, -1, -1, sizeof(::register_proto::user_register_request)},
  { 9, -1, -1, sizeof(::register_proto::user_register_reply)},
};

static const ::_pb::Message* const file_default_instances[] = {
  &::register_proto::_user_register_request_default_instance_._instance,
  &::register_proto::_user_register_reply_default_instance_._instance,
};

const char descriptor_table_protodef_register_2eproto[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) =
  "\n\016register.proto\022\016register_proto\"H\n\025user"
  "_register_request\022\017\n\007account\030\001 \001(\t\022\020\n\010pa"
  "ssword\030\002 \001(\t\022\014\n\004name\030\003 \001(\t\"(\n\023user_regis"
  "ter_reply\022\021\n\tissuccess\030\001 \001(\010b\006proto3"
  ;
static ::_pbi::once_flag descriptor_table_register_2eproto_once;
const ::_pbi::DescriptorTable descriptor_table_register_2eproto = {
    false, false, 156, descriptor_table_protodef_register_2eproto,
    "register.proto",
    &descriptor_table_register_2eproto_once, nullptr, 0, 2,
    schemas, file_default_instances, TableStruct_register_2eproto::offsets,
    file_level_metadata_register_2eproto, file_level_enum_descriptors_register_2eproto,
    file_level_service_descriptors_register_2eproto,
};
PROTOBUF_ATTRIBUTE_WEAK const ::_pbi::DescriptorTable* descriptor_table_register_2eproto_getter() {
  return &descriptor_table_register_2eproto;
}

// Force running AddDescriptors() at dynamic initialization time.
PROTOBUF_ATTRIBUTE_INIT_PRIORITY2 static ::_pbi::AddDescriptorsRunner dynamic_init_dummy_register_2eproto(&descriptor_table_register_2eproto);
namespace register_proto {

// ===================================================================

class user_register_request::_Internal {
 public:
};

user_register_request::user_register_request(::PROTOBUF_NAMESPACE_ID::Arena* arena,
                         bool is_message_owned)
  : ::PROTOBUF_NAMESPACE_ID::Message(arena, is_message_owned) {
  SharedCtor(arena, is_message_owned);
  // @@protoc_insertion_point(arena_constructor:register_proto.user_register_request)
}
user_register_request::user_register_request(const user_register_request& from)
  : ::PROTOBUF_NAMESPACE_ID::Message() {
  user_register_request* const _this = this; (void)_this;
  new (&_impl_) Impl_{
      decltype(_impl_.account_){}
    , decltype(_impl_.password_){}
    , decltype(_impl_.name_){}
    , /*decltype(_impl_._cached_size_)*/{}};

  _internal_metadata_.MergeFrom<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(from._internal_metadata_);
  _impl_.account_.InitDefault();
  #ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
    _impl_.account_.Set("", GetArenaForAllocation());
  #endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
  if (!from._internal_account().empty()) {
    _this->_impl_.account_.Set(from._internal_account(), 
      _this->GetArenaForAllocation());
  }
  _impl_.password_.InitDefault();
  #ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
    _impl_.password_.Set("", GetArenaForAllocation());
  #endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
  if (!from._internal_password().empty()) {
    _this->_impl_.password_.Set(from._internal_password(), 
      _this->GetArenaForAllocation());
  }
  _impl_.name_.InitDefault();
  #ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
    _impl_.name_.Set("", GetArenaForAllocation());
  #endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
  if (!from._internal_name().empty()) {
    _this->_impl_.name_.Set(from._internal_name(), 
      _this->GetArenaForAllocation());
  }
  // @@protoc_insertion_point(copy_constructor:register_proto.user_register_request)
}

inline void user_register_request::SharedCtor(
    ::_pb::Arena* arena, bool is_message_owned) {
  (void)arena;
  (void)is_message_owned;
  new (&_impl_) Impl_{
      decltype(_impl_.account_){}
    , decltype(_impl_.password_){}
    , decltype(_impl_.name_){}
    , /*decltype(_impl_._cached_size_)*/{}
  };
  _impl_.account_.InitDefault();
  #ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
    _impl_.account_.Set("", GetArenaForAllocation());
  #endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
  _impl_.password_.InitDefault();
  #ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
    _impl_.password_.Set("", GetArenaForAllocation());
  #endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
  _impl_.name_.InitDefault();
  #ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
    _impl_.name_.Set("", GetArenaForAllocation());
  #endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
}

user_register_request::~user_register_request() {
  // @@protoc_insertion_point(destructor:register_proto.user_register_request)
  if (auto *arena = _internal_metadata_.DeleteReturnArena<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>()) {
  (void)arena;
    return;
  }
  SharedDtor();
}

inline void user_register_request::SharedDtor() {
  GOOGLE_DCHECK(GetArenaForAllocation() == nullptr);
  _impl_.account_.Destroy();
  _impl_.password_.Destroy();
  _impl_.name_.Destroy();
}

void user_register_request::SetCachedSize(int size) const {
  _impl_._cached_size_.Set(size);
}

void user_register_request::Clear() {
// @@protoc_insertion_point(message_clear_start:register_proto.user_register_request)
  uint32_t cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  _impl_.account_.ClearToEmpty();
  _impl_.password_.ClearToEmpty();
  _impl_.name_.ClearToEmpty();
  _internal_metadata_.Clear<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>();
}

const char* user_register_request::_InternalParse(const char* ptr, ::_pbi::ParseContext* ctx) {
#define CHK_(x) if (PROTOBUF_PREDICT_FALSE(!(x))) goto failure
  while (!ctx->Done(&ptr)) {
    uint32_t tag;
    ptr = ::_pbi::ReadTag(ptr, &tag);
    switch (tag >> 3) {
      // string account = 1;
      case 1:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 10)) {
          auto str = _internal_mutable_account();
          ptr = ::_pbi::InlineGreedyStringParser(str, ptr, ctx);
          CHK_(ptr);
          CHK_(::_pbi::VerifyUTF8(str, "register_proto.user_register_request.account"));
        } else
          goto handle_unusual;
        continue;
      // string password = 2;
      case 2:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 18)) {
          auto str = _internal_mutable_password();
          ptr = ::_pbi::InlineGreedyStringParser(str, ptr, ctx);
          CHK_(ptr);
          CHK_(::_pbi::VerifyUTF8(str, "register_proto.user_register_request.password"));
        } else
          goto handle_unusual;
        continue;
      // string name = 3;
      case 3:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 26)) {
          auto str = _internal_mutable_name();
          ptr = ::_pbi::InlineGreedyStringParser(str, ptr, ctx);
          CHK_(ptr);
          CHK_(::_pbi::VerifyUTF8(str, "register_proto.user_register_request.name"));
        } else
          goto handle_unusual;
        continue;
      default:
        goto handle_unusual;
    }  // switch
  handle_unusual:
    if ((tag == 0) || ((tag & 7) == 4)) {
      CHK_(ptr);
      ctx->SetLastTag(tag);
      goto message_done;
    }
    ptr = UnknownFieldParse(
        tag,
        _internal_metadata_.mutable_unknown_fields<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(),
        ptr, ctx);
    CHK_(ptr != nullptr);
  }  // while
message_done:
  return ptr;
failure:
  ptr = nullptr;
  goto message_done;
#undef CHK_
}

uint8_t* user_register_request::_InternalSerialize(
    uint8_t* target, ::PROTOBUF_NAMESPACE_ID::io::EpsCopyOutputStream* stream) const {
  // @@protoc_insertion_point(serialize_to_array_start:register_proto.user_register_request)
  uint32_t cached_has_bits = 0;
  (void) cached_has_bits;

  // string account = 1;
  if (!this->_internal_account().empty()) {
    ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::VerifyUtf8String(
      this->_internal_account().data(), static_cast<int>(this->_internal_account().length()),
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::SERIALIZE,
      "register_proto.user_register_request.account");
    target = stream->WriteStringMaybeAliased(
        1, this->_internal_account(), target);
  }

  // string password = 2;
  if (!this->_internal_password().empty()) {
    ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::VerifyUtf8String(
      this->_internal_password().data(), static_cast<int>(this->_internal_password().length()),
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::SERIALIZE,
      "register_proto.user_register_request.password");
    target = stream->WriteStringMaybeAliased(
        2, this->_internal_password(), target);
  }

  // string name = 3;
  if (!this->_internal_name().empty()) {
    ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::VerifyUtf8String(
      this->_internal_name().data(), static_cast<int>(this->_internal_name().length()),
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::SERIALIZE,
      "register_proto.user_register_request.name");
    target = stream->WriteStringMaybeAliased(
        3, this->_internal_name(), target);
  }

  if (PROTOBUF_PREDICT_FALSE(_internal_metadata_.have_unknown_fields())) {
    target = ::_pbi::WireFormat::InternalSerializeUnknownFieldsToArray(
        _internal_metadata_.unknown_fields<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(::PROTOBUF_NAMESPACE_ID::UnknownFieldSet::default_instance), target, stream);
  }
  // @@protoc_insertion_point(serialize_to_array_end:register_proto.user_register_request)
  return target;
}

size_t user_register_request::ByteSizeLong() const {
// @@protoc_insertion_point(message_byte_size_start:register_proto.user_register_request)
  size_t total_size = 0;

  uint32_t cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  // string account = 1;
  if (!this->_internal_account().empty()) {
    total_size += 1 +
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::StringSize(
        this->_internal_account());
  }

  // string password = 2;
  if (!this->_internal_password().empty()) {
    total_size += 1 +
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::StringSize(
        this->_internal_password());
  }

  // string name = 3;
  if (!this->_internal_name().empty()) {
    total_size += 1 +
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::StringSize(
        this->_internal_name());
  }

  return MaybeComputeUnknownFieldsSize(total_size, &_impl_._cached_size_);
}

const ::PROTOBUF_NAMESPACE_ID::Message::ClassData user_register_request::_class_data_ = {
    ::PROTOBUF_NAMESPACE_ID::Message::CopyWithSourceCheck,
    user_register_request::MergeImpl
};
const ::PROTOBUF_NAMESPACE_ID::Message::ClassData*user_register_request::GetClassData() const { return &_class_data_; }


void user_register_request::MergeImpl(::PROTOBUF_NAMESPACE_ID::Message& to_msg, const ::PROTOBUF_NAMESPACE_ID::Message& from_msg) {
  auto* const _this = static_cast<user_register_request*>(&to_msg);
  auto& from = static_cast<const user_register_request&>(from_msg);
  // @@protoc_insertion_point(class_specific_merge_from_start:register_proto.user_register_request)
  GOOGLE_DCHECK_NE(&from, _this);
  uint32_t cached_has_bits = 0;
  (void) cached_has_bits;

  if (!from._internal_account().empty()) {
    _this->_internal_set_account(from._internal_account());
  }
  if (!from._internal_password().empty()) {
    _this->_internal_set_password(from._internal_password());
  }
  if (!from._internal_name().empty()) {
    _this->_internal_set_name(from._internal_name());
  }
  _this->_internal_metadata_.MergeFrom<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(from._internal_metadata_);
}

void user_register_request::CopyFrom(const user_register_request& from) {
// @@protoc_insertion_point(class_specific_copy_from_start:register_proto.user_register_request)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool user_register_request::IsInitialized() const {
  return true;
}

void user_register_request::InternalSwap(user_register_request* other) {
  using std::swap;
  auto* lhs_arena = GetArenaForAllocation();
  auto* rhs_arena = other->GetArenaForAllocation();
  _internal_metadata_.InternalSwap(&other->_internal_metadata_);
  ::PROTOBUF_NAMESPACE_ID::internal::ArenaStringPtr::InternalSwap(
      &_impl_.account_, lhs_arena,
      &other->_impl_.account_, rhs_arena
  );
  ::PROTOBUF_NAMESPACE_ID::internal::ArenaStringPtr::InternalSwap(
      &_impl_.password_, lhs_arena,
      &other->_impl_.password_, rhs_arena
  );
  ::PROTOBUF_NAMESPACE_ID::internal::ArenaStringPtr::InternalSwap(
      &_impl_.name_, lhs_arena,
      &other->_impl_.name_, rhs_arena
  );
}

::PROTOBUF_NAMESPACE_ID::Metadata user_register_request::GetMetadata() const {
  return ::_pbi::AssignDescriptors(
      &descriptor_table_register_2eproto_getter, &descriptor_table_register_2eproto_once,
      file_level_metadata_register_2eproto[0]);
}

// ===================================================================

class user_register_reply::_Internal {
 public:
};

user_register_reply::user_register_reply(::PROTOBUF_NAMESPACE_ID::Arena* arena,
                         bool is_message_owned)
  : ::PROTOBUF_NAMESPACE_ID::Message(arena, is_message_owned) {
  SharedCtor(arena, is_message_owned);
  // @@protoc_insertion_point(arena_constructor:register_proto.user_register_reply)
}
user_register_reply::user_register_reply(const user_register_reply& from)
  : ::PROTOBUF_NAMESPACE_ID::Message() {
  user_register_reply* const _this = this; (void)_this;
  new (&_impl_) Impl_{
      decltype(_impl_.issuccess_){}
    , /*decltype(_impl_._cached_size_)*/{}};

  _internal_metadata_.MergeFrom<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(from._internal_metadata_);
  _this->_impl_.issuccess_ = from._impl_.issuccess_;
  // @@protoc_insertion_point(copy_constructor:register_proto.user_register_reply)
}

inline void user_register_reply::SharedCtor(
    ::_pb::Arena* arena, bool is_message_owned) {
  (void)arena;
  (void)is_message_owned;
  new (&_impl_) Impl_{
      decltype(_impl_.issuccess_){false}
    , /*decltype(_impl_._cached_size_)*/{}
  };
}

user_register_reply::~user_register_reply() {
  // @@protoc_insertion_point(destructor:register_proto.user_register_reply)
  if (auto *arena = _internal_metadata_.DeleteReturnArena<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>()) {
  (void)arena;
    return;
  }
  SharedDtor();
}

inline void user_register_reply::SharedDtor() {
  GOOGLE_DCHECK(GetArenaForAllocation() == nullptr);
}

void user_register_reply::SetCachedSize(int size) const {
  _impl_._cached_size_.Set(size);
}

void user_register_reply::Clear() {
// @@protoc_insertion_point(message_clear_start:register_proto.user_register_reply)
  uint32_t cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  _impl_.issuccess_ = false;
  _internal_metadata_.Clear<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>();
}

const char* user_register_reply::_InternalParse(const char* ptr, ::_pbi::ParseContext* ctx) {
#define CHK_(x) if (PROTOBUF_PREDICT_FALSE(!(x))) goto failure
  while (!ctx->Done(&ptr)) {
    uint32_t tag;
    ptr = ::_pbi::ReadTag(ptr, &tag);
    switch (tag >> 3) {
      // bool issuccess = 1;
      case 1:
        if (PROTOBUF_PREDICT_TRUE(static_cast<uint8_t>(tag) == 8)) {
          _impl_.issuccess_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint64(&ptr);
          CHK_(ptr);
        } else
          goto handle_unusual;
        continue;
      default:
        goto handle_unusual;
    }  // switch
  handle_unusual:
    if ((tag == 0) || ((tag & 7) == 4)) {
      CHK_(ptr);
      ctx->SetLastTag(tag);
      goto message_done;
    }
    ptr = UnknownFieldParse(
        tag,
        _internal_metadata_.mutable_unknown_fields<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(),
        ptr, ctx);
    CHK_(ptr != nullptr);
  }  // while
message_done:
  return ptr;
failure:
  ptr = nullptr;
  goto message_done;
#undef CHK_
}

uint8_t* user_register_reply::_InternalSerialize(
    uint8_t* target, ::PROTOBUF_NAMESPACE_ID::io::EpsCopyOutputStream* stream) const {
  // @@protoc_insertion_point(serialize_to_array_start:register_proto.user_register_reply)
  uint32_t cached_has_bits = 0;
  (void) cached_has_bits;

  // bool issuccess = 1;
  if (this->_internal_issuccess() != 0) {
    target = stream->EnsureSpace(target);
    target = ::_pbi::WireFormatLite::WriteBoolToArray(1, this->_internal_issuccess(), target);
  }

  if (PROTOBUF_PREDICT_FALSE(_internal_metadata_.have_unknown_fields())) {
    target = ::_pbi::WireFormat::InternalSerializeUnknownFieldsToArray(
        _internal_metadata_.unknown_fields<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(::PROTOBUF_NAMESPACE_ID::UnknownFieldSet::default_instance), target, stream);
  }
  // @@protoc_insertion_point(serialize_to_array_end:register_proto.user_register_reply)
  return target;
}

size_t user_register_reply::ByteSizeLong() const {
// @@protoc_insertion_point(message_byte_size_start:register_proto.user_register_reply)
  size_t total_size = 0;

  uint32_t cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  // bool issuccess = 1;
  if (this->_internal_issuccess() != 0) {
    total_size += 1 + 1;
  }

  return MaybeComputeUnknownFieldsSize(total_size, &_impl_._cached_size_);
}

const ::PROTOBUF_NAMESPACE_ID::Message::ClassData user_register_reply::_class_data_ = {
    ::PROTOBUF_NAMESPACE_ID::Message::CopyWithSourceCheck,
    user_register_reply::MergeImpl
};
const ::PROTOBUF_NAMESPACE_ID::Message::ClassData*user_register_reply::GetClassData() const { return &_class_data_; }


void user_register_reply::MergeImpl(::PROTOBUF_NAMESPACE_ID::Message& to_msg, const ::PROTOBUF_NAMESPACE_ID::Message& from_msg) {
  auto* const _this = static_cast<user_register_reply*>(&to_msg);
  auto& from = static_cast<const user_register_reply&>(from_msg);
  // @@protoc_insertion_point(class_specific_merge_from_start:register_proto.user_register_reply)
  GOOGLE_DCHECK_NE(&from, _this);
  uint32_t cached_has_bits = 0;
  (void) cached_has_bits;

  if (from._internal_issuccess() != 0) {
    _this->_internal_set_issuccess(from._internal_issuccess());
  }
  _this->_internal_metadata_.MergeFrom<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(from._internal_metadata_);
}

void user_register_reply::CopyFrom(const user_register_reply& from) {
// @@protoc_insertion_point(class_specific_copy_from_start:register_proto.user_register_reply)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool user_register_reply::IsInitialized() const {
  return true;
}

void user_register_reply::InternalSwap(user_register_reply* other) {
  using std::swap;
  _internal_metadata_.InternalSwap(&other->_internal_metadata_);
  swap(_impl_.issuccess_, other->_impl_.issuccess_);
}

::PROTOBUF_NAMESPACE_ID::Metadata user_register_reply::GetMetadata() const {
  return ::_pbi::AssignDescriptors(
      &descriptor_table_register_2eproto_getter, &descriptor_table_register_2eproto_once,
      file_level_metadata_register_2eproto[1]);
}

// @@protoc_insertion_point(namespace_scope)
}  // namespace register_proto
PROTOBUF_NAMESPACE_OPEN
template<> PROTOBUF_NOINLINE ::register_proto::user_register_request*
Arena::CreateMaybeMessage< ::register_proto::user_register_request >(Arena* arena) {
  return Arena::CreateMessageInternal< ::register_proto::user_register_request >(arena);
}
template<> PROTOBUF_NOINLINE ::register_proto::user_register_reply*
Arena::CreateMaybeMessage< ::register_proto::user_register_reply >(Arena* arena) {
  return Arena::CreateMessageInternal< ::register_proto::user_register_reply >(arena);
}
PROTOBUF_NAMESPACE_CLOSE

// @@protoc_insertion_point(global_scope)
#include <google/protobuf/port_undef.inc>
