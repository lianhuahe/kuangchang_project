// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: UpdateAvatar.proto

#ifndef GOOGLE_PROTOBUF_INCLUDED_UpdateAvatar_2eproto
#define GOOGLE_PROTOBUF_INCLUDED_UpdateAvatar_2eproto

#include <limits>
#include <string>

#include <google/protobuf/port_def.inc>
#if PROTOBUF_VERSION < 3021000
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers. Please update
#error your headers.
#endif
#if 3021009 < PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers. Please
#error regenerate this file with a newer version of protoc.
#endif

#include <google/protobuf/port_undef.inc>
#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/arena.h>
#include <google/protobuf/arenastring.h>
#include <google/protobuf/generated_message_util.h>
#include <google/protobuf/metadata_lite.h>
#include <google/protobuf/generated_message_reflection.h>
#include <google/protobuf/message.h>
#include <google/protobuf/repeated_field.h>  // IWYU pragma: export
#include <google/protobuf/extension_set.h>  // IWYU pragma: export
#include <google/protobuf/unknown_field_set.h>
// @@protoc_insertion_point(includes)
#include <google/protobuf/port_def.inc>
#define PROTOBUF_INTERNAL_EXPORT_UpdateAvatar_2eproto
PROTOBUF_NAMESPACE_OPEN
namespace internal {
class AnyMetadata;
}  // namespace internal
PROTOBUF_NAMESPACE_CLOSE

// Internal implementation detail -- do not use these members.
struct TableStruct_UpdateAvatar_2eproto {
  static const uint32_t offsets[];
};
extern const ::PROTOBUF_NAMESPACE_ID::internal::DescriptorTable descriptor_table_UpdateAvatar_2eproto;
namespace UpdateAvatar_proto {
class UpdateAvatar_reply;
struct UpdateAvatar_replyDefaultTypeInternal;
extern UpdateAvatar_replyDefaultTypeInternal _UpdateAvatar_reply_default_instance_;
class UpdateAvatar_request;
struct UpdateAvatar_requestDefaultTypeInternal;
extern UpdateAvatar_requestDefaultTypeInternal _UpdateAvatar_request_default_instance_;
}  // namespace UpdateAvatar_proto
PROTOBUF_NAMESPACE_OPEN
template<> ::UpdateAvatar_proto::UpdateAvatar_reply* Arena::CreateMaybeMessage<::UpdateAvatar_proto::UpdateAvatar_reply>(Arena*);
template<> ::UpdateAvatar_proto::UpdateAvatar_request* Arena::CreateMaybeMessage<::UpdateAvatar_proto::UpdateAvatar_request>(Arena*);
PROTOBUF_NAMESPACE_CLOSE
namespace UpdateAvatar_proto {

// ===================================================================

class UpdateAvatar_request final :
    public ::PROTOBUF_NAMESPACE_ID::Message /* @@protoc_insertion_point(class_definition:UpdateAvatar_proto.UpdateAvatar_request) */ {
 public:
  inline UpdateAvatar_request() : UpdateAvatar_request(nullptr) {}
  ~UpdateAvatar_request() override;
  explicit PROTOBUF_CONSTEXPR UpdateAvatar_request(::PROTOBUF_NAMESPACE_ID::internal::ConstantInitialized);

  UpdateAvatar_request(const UpdateAvatar_request& from);
  UpdateAvatar_request(UpdateAvatar_request&& from) noexcept
    : UpdateAvatar_request() {
    *this = ::std::move(from);
  }

  inline UpdateAvatar_request& operator=(const UpdateAvatar_request& from) {
    CopyFrom(from);
    return *this;
  }
  inline UpdateAvatar_request& operator=(UpdateAvatar_request&& from) noexcept {
    if (this == &from) return *this;
    if (GetOwningArena() == from.GetOwningArena()
  #ifdef PROTOBUF_FORCE_COPY_IN_MOVE
        && GetOwningArena() != nullptr
  #endif  // !PROTOBUF_FORCE_COPY_IN_MOVE
    ) {
      InternalSwap(&from);
    } else {
      CopyFrom(from);
    }
    return *this;
  }

  static const ::PROTOBUF_NAMESPACE_ID::Descriptor* descriptor() {
    return GetDescriptor();
  }
  static const ::PROTOBUF_NAMESPACE_ID::Descriptor* GetDescriptor() {
    return default_instance().GetMetadata().descriptor;
  }
  static const ::PROTOBUF_NAMESPACE_ID::Reflection* GetReflection() {
    return default_instance().GetMetadata().reflection;
  }
  static const UpdateAvatar_request& default_instance() {
    return *internal_default_instance();
  }
  static inline const UpdateAvatar_request* internal_default_instance() {
    return reinterpret_cast<const UpdateAvatar_request*>(
               &_UpdateAvatar_request_default_instance_);
  }
  static constexpr int kIndexInFileMessages =
    0;

  friend void swap(UpdateAvatar_request& a, UpdateAvatar_request& b) {
    a.Swap(&b);
  }
  inline void Swap(UpdateAvatar_request* other) {
    if (other == this) return;
  #ifdef PROTOBUF_FORCE_COPY_IN_SWAP
    if (GetOwningArena() != nullptr &&
        GetOwningArena() == other->GetOwningArena()) {
   #else  // PROTOBUF_FORCE_COPY_IN_SWAP
    if (GetOwningArena() == other->GetOwningArena()) {
  #endif  // !PROTOBUF_FORCE_COPY_IN_SWAP
      InternalSwap(other);
    } else {
      ::PROTOBUF_NAMESPACE_ID::internal::GenericSwap(this, other);
    }
  }
  void UnsafeArenaSwap(UpdateAvatar_request* other) {
    if (other == this) return;
    GOOGLE_DCHECK(GetOwningArena() == other->GetOwningArena());
    InternalSwap(other);
  }

  // implements Message ----------------------------------------------

  UpdateAvatar_request* New(::PROTOBUF_NAMESPACE_ID::Arena* arena = nullptr) const final {
    return CreateMaybeMessage<UpdateAvatar_request>(arena);
  }
  using ::PROTOBUF_NAMESPACE_ID::Message::CopyFrom;
  void CopyFrom(const UpdateAvatar_request& from);
  using ::PROTOBUF_NAMESPACE_ID::Message::MergeFrom;
  void MergeFrom( const UpdateAvatar_request& from) {
    UpdateAvatar_request::MergeImpl(*this, from);
  }
  private:
  static void MergeImpl(::PROTOBUF_NAMESPACE_ID::Message& to_msg, const ::PROTOBUF_NAMESPACE_ID::Message& from_msg);
  public:
  PROTOBUF_ATTRIBUTE_REINITIALIZES void Clear() final;
  bool IsInitialized() const final;

  size_t ByteSizeLong() const final;
  const char* _InternalParse(const char* ptr, ::PROTOBUF_NAMESPACE_ID::internal::ParseContext* ctx) final;
  uint8_t* _InternalSerialize(
      uint8_t* target, ::PROTOBUF_NAMESPACE_ID::io::EpsCopyOutputStream* stream) const final;
  int GetCachedSize() const final { return _impl_._cached_size_.Get(); }

  private:
  void SharedCtor(::PROTOBUF_NAMESPACE_ID::Arena* arena, bool is_message_owned);
  void SharedDtor();
  void SetCachedSize(int size) const final;
  void InternalSwap(UpdateAvatar_request* other);

  private:
  friend class ::PROTOBUF_NAMESPACE_ID::internal::AnyMetadata;
  static ::PROTOBUF_NAMESPACE_ID::StringPiece FullMessageName() {
    return "UpdateAvatar_proto.UpdateAvatar_request";
  }
  protected:
  explicit UpdateAvatar_request(::PROTOBUF_NAMESPACE_ID::Arena* arena,
                       bool is_message_owned = false);
  public:

  static const ClassData _class_data_;
  const ::PROTOBUF_NAMESPACE_ID::Message::ClassData*GetClassData() const final;

  ::PROTOBUF_NAMESPACE_ID::Metadata GetMetadata() const final;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  enum : int {
    kAccountFieldNumber = 1,
    kAvatarFieldNumber = 2,
  };
  // string account = 1;
  void clear_account();
  const std::string& account() const;
  template <typename ArgT0 = const std::string&, typename... ArgT>
  void set_account(ArgT0&& arg0, ArgT... args);
  std::string* mutable_account();
  PROTOBUF_NODISCARD std::string* release_account();
  void set_allocated_account(std::string* account);
  private:
  const std::string& _internal_account() const;
  inline PROTOBUF_ALWAYS_INLINE void _internal_set_account(const std::string& value);
  std::string* _internal_mutable_account();
  public:

  // string avatar = 2;
  void clear_avatar();
  const std::string& avatar() const;
  template <typename ArgT0 = const std::string&, typename... ArgT>
  void set_avatar(ArgT0&& arg0, ArgT... args);
  std::string* mutable_avatar();
  PROTOBUF_NODISCARD std::string* release_avatar();
  void set_allocated_avatar(std::string* avatar);
  private:
  const std::string& _internal_avatar() const;
  inline PROTOBUF_ALWAYS_INLINE void _internal_set_avatar(const std::string& value);
  std::string* _internal_mutable_avatar();
  public:

  // @@protoc_insertion_point(class_scope:UpdateAvatar_proto.UpdateAvatar_request)
 private:
  class _Internal;

  template <typename T> friend class ::PROTOBUF_NAMESPACE_ID::Arena::InternalHelper;
  typedef void InternalArenaConstructable_;
  typedef void DestructorSkippable_;
  struct Impl_ {
    ::PROTOBUF_NAMESPACE_ID::internal::ArenaStringPtr account_;
    ::PROTOBUF_NAMESPACE_ID::internal::ArenaStringPtr avatar_;
    mutable ::PROTOBUF_NAMESPACE_ID::internal::CachedSize _cached_size_;
  };
  union { Impl_ _impl_; };
  friend struct ::TableStruct_UpdateAvatar_2eproto;
};
// -------------------------------------------------------------------

class UpdateAvatar_reply final :
    public ::PROTOBUF_NAMESPACE_ID::Message /* @@protoc_insertion_point(class_definition:UpdateAvatar_proto.UpdateAvatar_reply) */ {
 public:
  inline UpdateAvatar_reply() : UpdateAvatar_reply(nullptr) {}
  ~UpdateAvatar_reply() override;
  explicit PROTOBUF_CONSTEXPR UpdateAvatar_reply(::PROTOBUF_NAMESPACE_ID::internal::ConstantInitialized);

  UpdateAvatar_reply(const UpdateAvatar_reply& from);
  UpdateAvatar_reply(UpdateAvatar_reply&& from) noexcept
    : UpdateAvatar_reply() {
    *this = ::std::move(from);
  }

  inline UpdateAvatar_reply& operator=(const UpdateAvatar_reply& from) {
    CopyFrom(from);
    return *this;
  }
  inline UpdateAvatar_reply& operator=(UpdateAvatar_reply&& from) noexcept {
    if (this == &from) return *this;
    if (GetOwningArena() == from.GetOwningArena()
  #ifdef PROTOBUF_FORCE_COPY_IN_MOVE
        && GetOwningArena() != nullptr
  #endif  // !PROTOBUF_FORCE_COPY_IN_MOVE
    ) {
      InternalSwap(&from);
    } else {
      CopyFrom(from);
    }
    return *this;
  }

  static const ::PROTOBUF_NAMESPACE_ID::Descriptor* descriptor() {
    return GetDescriptor();
  }
  static const ::PROTOBUF_NAMESPACE_ID::Descriptor* GetDescriptor() {
    return default_instance().GetMetadata().descriptor;
  }
  static const ::PROTOBUF_NAMESPACE_ID::Reflection* GetReflection() {
    return default_instance().GetMetadata().reflection;
  }
  static const UpdateAvatar_reply& default_instance() {
    return *internal_default_instance();
  }
  static inline const UpdateAvatar_reply* internal_default_instance() {
    return reinterpret_cast<const UpdateAvatar_reply*>(
               &_UpdateAvatar_reply_default_instance_);
  }
  static constexpr int kIndexInFileMessages =
    1;

  friend void swap(UpdateAvatar_reply& a, UpdateAvatar_reply& b) {
    a.Swap(&b);
  }
  inline void Swap(UpdateAvatar_reply* other) {
    if (other == this) return;
  #ifdef PROTOBUF_FORCE_COPY_IN_SWAP
    if (GetOwningArena() != nullptr &&
        GetOwningArena() == other->GetOwningArena()) {
   #else  // PROTOBUF_FORCE_COPY_IN_SWAP
    if (GetOwningArena() == other->GetOwningArena()) {
  #endif  // !PROTOBUF_FORCE_COPY_IN_SWAP
      InternalSwap(other);
    } else {
      ::PROTOBUF_NAMESPACE_ID::internal::GenericSwap(this, other);
    }
  }
  void UnsafeArenaSwap(UpdateAvatar_reply* other) {
    if (other == this) return;
    GOOGLE_DCHECK(GetOwningArena() == other->GetOwningArena());
    InternalSwap(other);
  }

  // implements Message ----------------------------------------------

  UpdateAvatar_reply* New(::PROTOBUF_NAMESPACE_ID::Arena* arena = nullptr) const final {
    return CreateMaybeMessage<UpdateAvatar_reply>(arena);
  }
  using ::PROTOBUF_NAMESPACE_ID::Message::CopyFrom;
  void CopyFrom(const UpdateAvatar_reply& from);
  using ::PROTOBUF_NAMESPACE_ID::Message::MergeFrom;
  void MergeFrom( const UpdateAvatar_reply& from) {
    UpdateAvatar_reply::MergeImpl(*this, from);
  }
  private:
  static void MergeImpl(::PROTOBUF_NAMESPACE_ID::Message& to_msg, const ::PROTOBUF_NAMESPACE_ID::Message& from_msg);
  public:
  PROTOBUF_ATTRIBUTE_REINITIALIZES void Clear() final;
  bool IsInitialized() const final;

  size_t ByteSizeLong() const final;
  const char* _InternalParse(const char* ptr, ::PROTOBUF_NAMESPACE_ID::internal::ParseContext* ctx) final;
  uint8_t* _InternalSerialize(
      uint8_t* target, ::PROTOBUF_NAMESPACE_ID::io::EpsCopyOutputStream* stream) const final;
  int GetCachedSize() const final { return _impl_._cached_size_.Get(); }

  private:
  void SharedCtor(::PROTOBUF_NAMESPACE_ID::Arena* arena, bool is_message_owned);
  void SharedDtor();
  void SetCachedSize(int size) const final;
  void InternalSwap(UpdateAvatar_reply* other);

  private:
  friend class ::PROTOBUF_NAMESPACE_ID::internal::AnyMetadata;
  static ::PROTOBUF_NAMESPACE_ID::StringPiece FullMessageName() {
    return "UpdateAvatar_proto.UpdateAvatar_reply";
  }
  protected:
  explicit UpdateAvatar_reply(::PROTOBUF_NAMESPACE_ID::Arena* arena,
                       bool is_message_owned = false);
  public:

  static const ClassData _class_data_;
  const ::PROTOBUF_NAMESPACE_ID::Message::ClassData*GetClassData() const final;

  ::PROTOBUF_NAMESPACE_ID::Metadata GetMetadata() const final;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  enum : int {
    kIssuccessFieldNumber = 1,
  };
  // bool issuccess = 1;
  void clear_issuccess();
  bool issuccess() const;
  void set_issuccess(bool value);
  private:
  bool _internal_issuccess() const;
  void _internal_set_issuccess(bool value);
  public:

  // @@protoc_insertion_point(class_scope:UpdateAvatar_proto.UpdateAvatar_reply)
 private:
  class _Internal;

  template <typename T> friend class ::PROTOBUF_NAMESPACE_ID::Arena::InternalHelper;
  typedef void InternalArenaConstructable_;
  typedef void DestructorSkippable_;
  struct Impl_ {
    bool issuccess_;
    mutable ::PROTOBUF_NAMESPACE_ID::internal::CachedSize _cached_size_;
  };
  union { Impl_ _impl_; };
  friend struct ::TableStruct_UpdateAvatar_2eproto;
};
// ===================================================================


// ===================================================================

#ifdef __GNUC__
  #pragma GCC diagnostic push
  #pragma GCC diagnostic ignored "-Wstrict-aliasing"
#endif  // __GNUC__
// UpdateAvatar_request

// string account = 1;
inline void UpdateAvatar_request::clear_account() {
  _impl_.account_.ClearToEmpty();
}
inline const std::string& UpdateAvatar_request::account() const {
  // @@protoc_insertion_point(field_get:UpdateAvatar_proto.UpdateAvatar_request.account)
  return _internal_account();
}
template <typename ArgT0, typename... ArgT>
inline PROTOBUF_ALWAYS_INLINE
void UpdateAvatar_request::set_account(ArgT0&& arg0, ArgT... args) {
 
 _impl_.account_.Set(static_cast<ArgT0 &&>(arg0), args..., GetArenaForAllocation());
  // @@protoc_insertion_point(field_set:UpdateAvatar_proto.UpdateAvatar_request.account)
}
inline std::string* UpdateAvatar_request::mutable_account() {
  std::string* _s = _internal_mutable_account();
  // @@protoc_insertion_point(field_mutable:UpdateAvatar_proto.UpdateAvatar_request.account)
  return _s;
}
inline const std::string& UpdateAvatar_request::_internal_account() const {
  return _impl_.account_.Get();
}
inline void UpdateAvatar_request::_internal_set_account(const std::string& value) {
  
  _impl_.account_.Set(value, GetArenaForAllocation());
}
inline std::string* UpdateAvatar_request::_internal_mutable_account() {
  
  return _impl_.account_.Mutable(GetArenaForAllocation());
}
inline std::string* UpdateAvatar_request::release_account() {
  // @@protoc_insertion_point(field_release:UpdateAvatar_proto.UpdateAvatar_request.account)
  return _impl_.account_.Release();
}
inline void UpdateAvatar_request::set_allocated_account(std::string* account) {
  if (account != nullptr) {
    
  } else {
    
  }
  _impl_.account_.SetAllocated(account, GetArenaForAllocation());
#ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
  if (_impl_.account_.IsDefault()) {
    _impl_.account_.Set("", GetArenaForAllocation());
  }
#endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
  // @@protoc_insertion_point(field_set_allocated:UpdateAvatar_proto.UpdateAvatar_request.account)
}

// string avatar = 2;
inline void UpdateAvatar_request::clear_avatar() {
  _impl_.avatar_.ClearToEmpty();
}
inline const std::string& UpdateAvatar_request::avatar() const {
  // @@protoc_insertion_point(field_get:UpdateAvatar_proto.UpdateAvatar_request.avatar)
  return _internal_avatar();
}
template <typename ArgT0, typename... ArgT>
inline PROTOBUF_ALWAYS_INLINE
void UpdateAvatar_request::set_avatar(ArgT0&& arg0, ArgT... args) {
 
 _impl_.avatar_.Set(static_cast<ArgT0 &&>(arg0), args..., GetArenaForAllocation());
  // @@protoc_insertion_point(field_set:UpdateAvatar_proto.UpdateAvatar_request.avatar)
}
inline std::string* UpdateAvatar_request::mutable_avatar() {
  std::string* _s = _internal_mutable_avatar();
  // @@protoc_insertion_point(field_mutable:UpdateAvatar_proto.UpdateAvatar_request.avatar)
  return _s;
}
inline const std::string& UpdateAvatar_request::_internal_avatar() const {
  return _impl_.avatar_.Get();
}
inline void UpdateAvatar_request::_internal_set_avatar(const std::string& value) {
  
  _impl_.avatar_.Set(value, GetArenaForAllocation());
}
inline std::string* UpdateAvatar_request::_internal_mutable_avatar() {
  
  return _impl_.avatar_.Mutable(GetArenaForAllocation());
}
inline std::string* UpdateAvatar_request::release_avatar() {
  // @@protoc_insertion_point(field_release:UpdateAvatar_proto.UpdateAvatar_request.avatar)
  return _impl_.avatar_.Release();
}
inline void UpdateAvatar_request::set_allocated_avatar(std::string* avatar) {
  if (avatar != nullptr) {
    
  } else {
    
  }
  _impl_.avatar_.SetAllocated(avatar, GetArenaForAllocation());
#ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
  if (_impl_.avatar_.IsDefault()) {
    _impl_.avatar_.Set("", GetArenaForAllocation());
  }
#endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
  // @@protoc_insertion_point(field_set_allocated:UpdateAvatar_proto.UpdateAvatar_request.avatar)
}

// -------------------------------------------------------------------

// UpdateAvatar_reply

// bool issuccess = 1;
inline void UpdateAvatar_reply::clear_issuccess() {
  _impl_.issuccess_ = false;
}
inline bool UpdateAvatar_reply::_internal_issuccess() const {
  return _impl_.issuccess_;
}
inline bool UpdateAvatar_reply::issuccess() const {
  // @@protoc_insertion_point(field_get:UpdateAvatar_proto.UpdateAvatar_reply.issuccess)
  return _internal_issuccess();
}
inline void UpdateAvatar_reply::_internal_set_issuccess(bool value) {
  
  _impl_.issuccess_ = value;
}
inline void UpdateAvatar_reply::set_issuccess(bool value) {
  _internal_set_issuccess(value);
  // @@protoc_insertion_point(field_set:UpdateAvatar_proto.UpdateAvatar_reply.issuccess)
}

#ifdef __GNUC__
  #pragma GCC diagnostic pop
#endif  // __GNUC__
// -------------------------------------------------------------------


// @@protoc_insertion_point(namespace_scope)

}  // namespace UpdateAvatar_proto

// @@protoc_insertion_point(global_scope)

#include <google/protobuf/port_undef.inc>
#endif  // GOOGLE_PROTOBUF_INCLUDED_GOOGLE_PROTOBUF_INCLUDED_UpdateAvatar_2eproto
