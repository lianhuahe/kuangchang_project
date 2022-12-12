// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: register.proto

#ifndef GOOGLE_PROTOBUF_INCLUDED_register_2eproto
#define GOOGLE_PROTOBUF_INCLUDED_register_2eproto

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
#define PROTOBUF_INTERNAL_EXPORT_register_2eproto
PROTOBUF_NAMESPACE_OPEN
namespace internal {
class AnyMetadata;
}  // namespace internal
PROTOBUF_NAMESPACE_CLOSE

// Internal implementation detail -- do not use these members.
struct TableStruct_register_2eproto {
  static const uint32_t offsets[];
};
extern const ::PROTOBUF_NAMESPACE_ID::internal::DescriptorTable descriptor_table_register_2eproto;
namespace register_proto {
class user_register_reply;
struct user_register_replyDefaultTypeInternal;
extern user_register_replyDefaultTypeInternal _user_register_reply_default_instance_;
class user_register_request;
struct user_register_requestDefaultTypeInternal;
extern user_register_requestDefaultTypeInternal _user_register_request_default_instance_;
}  // namespace register_proto
PROTOBUF_NAMESPACE_OPEN
template<> ::register_proto::user_register_reply* Arena::CreateMaybeMessage<::register_proto::user_register_reply>(Arena*);
template<> ::register_proto::user_register_request* Arena::CreateMaybeMessage<::register_proto::user_register_request>(Arena*);
PROTOBUF_NAMESPACE_CLOSE
namespace register_proto {

// ===================================================================

class user_register_request final :
    public ::PROTOBUF_NAMESPACE_ID::Message /* @@protoc_insertion_point(class_definition:register_proto.user_register_request) */ {
 public:
  inline user_register_request() : user_register_request(nullptr) {}
  ~user_register_request() override;
  explicit PROTOBUF_CONSTEXPR user_register_request(::PROTOBUF_NAMESPACE_ID::internal::ConstantInitialized);

  user_register_request(const user_register_request& from);
  user_register_request(user_register_request&& from) noexcept
    : user_register_request() {
    *this = ::std::move(from);
  }

  inline user_register_request& operator=(const user_register_request& from) {
    CopyFrom(from);
    return *this;
  }
  inline user_register_request& operator=(user_register_request&& from) noexcept {
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
  static const user_register_request& default_instance() {
    return *internal_default_instance();
  }
  static inline const user_register_request* internal_default_instance() {
    return reinterpret_cast<const user_register_request*>(
               &_user_register_request_default_instance_);
  }
  static constexpr int kIndexInFileMessages =
    0;

  friend void swap(user_register_request& a, user_register_request& b) {
    a.Swap(&b);
  }
  inline void Swap(user_register_request* other) {
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
  void UnsafeArenaSwap(user_register_request* other) {
    if (other == this) return;
    GOOGLE_DCHECK(GetOwningArena() == other->GetOwningArena());
    InternalSwap(other);
  }

  // implements Message ----------------------------------------------

  user_register_request* New(::PROTOBUF_NAMESPACE_ID::Arena* arena = nullptr) const final {
    return CreateMaybeMessage<user_register_request>(arena);
  }
  using ::PROTOBUF_NAMESPACE_ID::Message::CopyFrom;
  void CopyFrom(const user_register_request& from);
  using ::PROTOBUF_NAMESPACE_ID::Message::MergeFrom;
  void MergeFrom( const user_register_request& from) {
    user_register_request::MergeImpl(*this, from);
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
  void InternalSwap(user_register_request* other);

  private:
  friend class ::PROTOBUF_NAMESPACE_ID::internal::AnyMetadata;
  static ::PROTOBUF_NAMESPACE_ID::StringPiece FullMessageName() {
    return "register_proto.user_register_request";
  }
  protected:
  explicit user_register_request(::PROTOBUF_NAMESPACE_ID::Arena* arena,
                       bool is_message_owned = false);
  public:

  static const ClassData _class_data_;
  const ::PROTOBUF_NAMESPACE_ID::Message::ClassData*GetClassData() const final;

  ::PROTOBUF_NAMESPACE_ID::Metadata GetMetadata() const final;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  enum : int {
    kAccountFieldNumber = 1,
    kPasswordFieldNumber = 2,
    kNameFieldNumber = 3,
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

  // string password = 2;
  void clear_password();
  const std::string& password() const;
  template <typename ArgT0 = const std::string&, typename... ArgT>
  void set_password(ArgT0&& arg0, ArgT... args);
  std::string* mutable_password();
  PROTOBUF_NODISCARD std::string* release_password();
  void set_allocated_password(std::string* password);
  private:
  const std::string& _internal_password() const;
  inline PROTOBUF_ALWAYS_INLINE void _internal_set_password(const std::string& value);
  std::string* _internal_mutable_password();
  public:

  // string name = 3;
  void clear_name();
  const std::string& name() const;
  template <typename ArgT0 = const std::string&, typename... ArgT>
  void set_name(ArgT0&& arg0, ArgT... args);
  std::string* mutable_name();
  PROTOBUF_NODISCARD std::string* release_name();
  void set_allocated_name(std::string* name);
  private:
  const std::string& _internal_name() const;
  inline PROTOBUF_ALWAYS_INLINE void _internal_set_name(const std::string& value);
  std::string* _internal_mutable_name();
  public:

  // @@protoc_insertion_point(class_scope:register_proto.user_register_request)
 private:
  class _Internal;

  template <typename T> friend class ::PROTOBUF_NAMESPACE_ID::Arena::InternalHelper;
  typedef void InternalArenaConstructable_;
  typedef void DestructorSkippable_;
  struct Impl_ {
    ::PROTOBUF_NAMESPACE_ID::internal::ArenaStringPtr account_;
    ::PROTOBUF_NAMESPACE_ID::internal::ArenaStringPtr password_;
    ::PROTOBUF_NAMESPACE_ID::internal::ArenaStringPtr name_;
    mutable ::PROTOBUF_NAMESPACE_ID::internal::CachedSize _cached_size_;
  };
  union { Impl_ _impl_; };
  friend struct ::TableStruct_register_2eproto;
};
// -------------------------------------------------------------------

class user_register_reply final :
    public ::PROTOBUF_NAMESPACE_ID::Message /* @@protoc_insertion_point(class_definition:register_proto.user_register_reply) */ {
 public:
  inline user_register_reply() : user_register_reply(nullptr) {}
  ~user_register_reply() override;
  explicit PROTOBUF_CONSTEXPR user_register_reply(::PROTOBUF_NAMESPACE_ID::internal::ConstantInitialized);

  user_register_reply(const user_register_reply& from);
  user_register_reply(user_register_reply&& from) noexcept
    : user_register_reply() {
    *this = ::std::move(from);
  }

  inline user_register_reply& operator=(const user_register_reply& from) {
    CopyFrom(from);
    return *this;
  }
  inline user_register_reply& operator=(user_register_reply&& from) noexcept {
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
  static const user_register_reply& default_instance() {
    return *internal_default_instance();
  }
  static inline const user_register_reply* internal_default_instance() {
    return reinterpret_cast<const user_register_reply*>(
               &_user_register_reply_default_instance_);
  }
  static constexpr int kIndexInFileMessages =
    1;

  friend void swap(user_register_reply& a, user_register_reply& b) {
    a.Swap(&b);
  }
  inline void Swap(user_register_reply* other) {
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
  void UnsafeArenaSwap(user_register_reply* other) {
    if (other == this) return;
    GOOGLE_DCHECK(GetOwningArena() == other->GetOwningArena());
    InternalSwap(other);
  }

  // implements Message ----------------------------------------------

  user_register_reply* New(::PROTOBUF_NAMESPACE_ID::Arena* arena = nullptr) const final {
    return CreateMaybeMessage<user_register_reply>(arena);
  }
  using ::PROTOBUF_NAMESPACE_ID::Message::CopyFrom;
  void CopyFrom(const user_register_reply& from);
  using ::PROTOBUF_NAMESPACE_ID::Message::MergeFrom;
  void MergeFrom( const user_register_reply& from) {
    user_register_reply::MergeImpl(*this, from);
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
  void InternalSwap(user_register_reply* other);

  private:
  friend class ::PROTOBUF_NAMESPACE_ID::internal::AnyMetadata;
  static ::PROTOBUF_NAMESPACE_ID::StringPiece FullMessageName() {
    return "register_proto.user_register_reply";
  }
  protected:
  explicit user_register_reply(::PROTOBUF_NAMESPACE_ID::Arena* arena,
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

  // @@protoc_insertion_point(class_scope:register_proto.user_register_reply)
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
  friend struct ::TableStruct_register_2eproto;
};
// ===================================================================


// ===================================================================

#ifdef __GNUC__
  #pragma GCC diagnostic push
  #pragma GCC diagnostic ignored "-Wstrict-aliasing"
#endif  // __GNUC__
// user_register_request

// string account = 1;
inline void user_register_request::clear_account() {
  _impl_.account_.ClearToEmpty();
}
inline const std::string& user_register_request::account() const {
  // @@protoc_insertion_point(field_get:register_proto.user_register_request.account)
  return _internal_account();
}
template <typename ArgT0, typename... ArgT>
inline PROTOBUF_ALWAYS_INLINE
void user_register_request::set_account(ArgT0&& arg0, ArgT... args) {
 
 _impl_.account_.Set(static_cast<ArgT0 &&>(arg0), args..., GetArenaForAllocation());
  // @@protoc_insertion_point(field_set:register_proto.user_register_request.account)
}
inline std::string* user_register_request::mutable_account() {
  std::string* _s = _internal_mutable_account();
  // @@protoc_insertion_point(field_mutable:register_proto.user_register_request.account)
  return _s;
}
inline const std::string& user_register_request::_internal_account() const {
  return _impl_.account_.Get();
}
inline void user_register_request::_internal_set_account(const std::string& value) {
  
  _impl_.account_.Set(value, GetArenaForAllocation());
}
inline std::string* user_register_request::_internal_mutable_account() {
  
  return _impl_.account_.Mutable(GetArenaForAllocation());
}
inline std::string* user_register_request::release_account() {
  // @@protoc_insertion_point(field_release:register_proto.user_register_request.account)
  return _impl_.account_.Release();
}
inline void user_register_request::set_allocated_account(std::string* account) {
  if (account != nullptr) {
    
  } else {
    
  }
  _impl_.account_.SetAllocated(account, GetArenaForAllocation());
#ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
  if (_impl_.account_.IsDefault()) {
    _impl_.account_.Set("", GetArenaForAllocation());
  }
#endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
  // @@protoc_insertion_point(field_set_allocated:register_proto.user_register_request.account)
}

// string password = 2;
inline void user_register_request::clear_password() {
  _impl_.password_.ClearToEmpty();
}
inline const std::string& user_register_request::password() const {
  // @@protoc_insertion_point(field_get:register_proto.user_register_request.password)
  return _internal_password();
}
template <typename ArgT0, typename... ArgT>
inline PROTOBUF_ALWAYS_INLINE
void user_register_request::set_password(ArgT0&& arg0, ArgT... args) {
 
 _impl_.password_.Set(static_cast<ArgT0 &&>(arg0), args..., GetArenaForAllocation());
  // @@protoc_insertion_point(field_set:register_proto.user_register_request.password)
}
inline std::string* user_register_request::mutable_password() {
  std::string* _s = _internal_mutable_password();
  // @@protoc_insertion_point(field_mutable:register_proto.user_register_request.password)
  return _s;
}
inline const std::string& user_register_request::_internal_password() const {
  return _impl_.password_.Get();
}
inline void user_register_request::_internal_set_password(const std::string& value) {
  
  _impl_.password_.Set(value, GetArenaForAllocation());
}
inline std::string* user_register_request::_internal_mutable_password() {
  
  return _impl_.password_.Mutable(GetArenaForAllocation());
}
inline std::string* user_register_request::release_password() {
  // @@protoc_insertion_point(field_release:register_proto.user_register_request.password)
  return _impl_.password_.Release();
}
inline void user_register_request::set_allocated_password(std::string* password) {
  if (password != nullptr) {
    
  } else {
    
  }
  _impl_.password_.SetAllocated(password, GetArenaForAllocation());
#ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
  if (_impl_.password_.IsDefault()) {
    _impl_.password_.Set("", GetArenaForAllocation());
  }
#endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
  // @@protoc_insertion_point(field_set_allocated:register_proto.user_register_request.password)
}

// string name = 3;
inline void user_register_request::clear_name() {
  _impl_.name_.ClearToEmpty();
}
inline const std::string& user_register_request::name() const {
  // @@protoc_insertion_point(field_get:register_proto.user_register_request.name)
  return _internal_name();
}
template <typename ArgT0, typename... ArgT>
inline PROTOBUF_ALWAYS_INLINE
void user_register_request::set_name(ArgT0&& arg0, ArgT... args) {
 
 _impl_.name_.Set(static_cast<ArgT0 &&>(arg0), args..., GetArenaForAllocation());
  // @@protoc_insertion_point(field_set:register_proto.user_register_request.name)
}
inline std::string* user_register_request::mutable_name() {
  std::string* _s = _internal_mutable_name();
  // @@protoc_insertion_point(field_mutable:register_proto.user_register_request.name)
  return _s;
}
inline const std::string& user_register_request::_internal_name() const {
  return _impl_.name_.Get();
}
inline void user_register_request::_internal_set_name(const std::string& value) {
  
  _impl_.name_.Set(value, GetArenaForAllocation());
}
inline std::string* user_register_request::_internal_mutable_name() {
  
  return _impl_.name_.Mutable(GetArenaForAllocation());
}
inline std::string* user_register_request::release_name() {
  // @@protoc_insertion_point(field_release:register_proto.user_register_request.name)
  return _impl_.name_.Release();
}
inline void user_register_request::set_allocated_name(std::string* name) {
  if (name != nullptr) {
    
  } else {
    
  }
  _impl_.name_.SetAllocated(name, GetArenaForAllocation());
#ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
  if (_impl_.name_.IsDefault()) {
    _impl_.name_.Set("", GetArenaForAllocation());
  }
#endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
  // @@protoc_insertion_point(field_set_allocated:register_proto.user_register_request.name)
}

// -------------------------------------------------------------------

// user_register_reply

// bool issuccess = 1;
inline void user_register_reply::clear_issuccess() {
  _impl_.issuccess_ = false;
}
inline bool user_register_reply::_internal_issuccess() const {
  return _impl_.issuccess_;
}
inline bool user_register_reply::issuccess() const {
  // @@protoc_insertion_point(field_get:register_proto.user_register_reply.issuccess)
  return _internal_issuccess();
}
inline void user_register_reply::_internal_set_issuccess(bool value) {
  
  _impl_.issuccess_ = value;
}
inline void user_register_reply::set_issuccess(bool value) {
  _internal_set_issuccess(value);
  // @@protoc_insertion_point(field_set:register_proto.user_register_reply.issuccess)
}

#ifdef __GNUC__
  #pragma GCC diagnostic pop
#endif  // __GNUC__
// -------------------------------------------------------------------


// @@protoc_insertion_point(namespace_scope)

}  // namespace register_proto

// @@protoc_insertion_point(global_scope)

#include <google/protobuf/port_undef.inc>
#endif  // GOOGLE_PROTOBUF_INCLUDED_GOOGLE_PROTOBUF_INCLUDED_register_2eproto
