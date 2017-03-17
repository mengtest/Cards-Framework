// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_Account.txt

#ifndef PROTOBUF_SP_5fAccount_2etxt__INCLUDED
#define PROTOBUF_SP_5fAccount_2etxt__INCLUDED

#ifdef _MSC_VER
#  pragma warning(push)
#  pragma warning(disable: 4127 4244 4267 4996)
#endif

#include <string>

#include <google/protobuf/stubs/common.h>

#if GOOGLE_PROTOBUF_VERSION < 2005000
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please update
#error your headers.
#endif
#if 2005000 < GOOGLE_PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please
#error regenerate this file with a newer version of protoc.
#endif

#include <google/protobuf/generated_message_util.h>
#include <google/protobuf/message.h>
#include <google/protobuf/repeated_field.h>
#include <google/protobuf/extension_set.h>
#include <google/protobuf/unknown_field_set.h>
// @@protoc_insertion_point(includes)

// Internal implementation detail -- do not call these.
void  protobuf_AddDesc_SP_5fAccount_2etxt();
void protobuf_AssignDesc_SP_5fAccount_2etxt();
void protobuf_ShutdownFile_SP_5fAccount_2etxt();

class GM_AccountExistRequestReturn;
class SP_BindTestAccountReturn;

// ===================================================================

class GM_AccountExistRequestReturn : public ::google::protobuf::Message {
 public:
  GM_AccountExistRequestReturn();
  virtual ~GM_AccountExistRequestReturn();

  GM_AccountExistRequestReturn(const GM_AccountExistRequestReturn& from);

  inline GM_AccountExistRequestReturn& operator=(const GM_AccountExistRequestReturn& from) {
    CopyFrom(from);
    return *this;
  }

  inline const ::google::protobuf::UnknownFieldSet& unknown_fields() const {
    return _unknown_fields_;
  }

  inline ::google::protobuf::UnknownFieldSet* mutable_unknown_fields() {
    return &_unknown_fields_;
  }

  static const ::google::protobuf::Descriptor* descriptor();
  static const GM_AccountExistRequestReturn& default_instance();

  void Swap(GM_AccountExistRequestReturn* other);

  // implements Message ----------------------------------------------

  GM_AccountExistRequestReturn* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_AccountExistRequestReturn& from);
  void MergeFrom(const GM_AccountExistRequestReturn& from);
  void Clear();
  bool IsInitialized() const;

  int ByteSize() const;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input);
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const;
  ::google::protobuf::uint8* SerializeWithCachedSizesToArray(::google::protobuf::uint8* output) const;
  int GetCachedSize() const { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const;
  public:

  ::google::protobuf::Metadata GetMetadata() const;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // required int32 m_Result = 1;
  inline bool has_m_result() const;
  inline void clear_m_result();
  static const int kMResultFieldNumber = 1;
  inline ::google::protobuf::int32 m_result() const;
  inline void set_m_result(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:GM_AccountExistRequestReturn)
 private:
  inline void set_has_m_result();
  inline void clear_has_m_result();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 m_result_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(1 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fAccount_2etxt();
  friend void protobuf_AssignDesc_SP_5fAccount_2etxt();
  friend void protobuf_ShutdownFile_SP_5fAccount_2etxt();

  void InitAsDefaultInstance();
  static GM_AccountExistRequestReturn* default_instance_;
};
// -------------------------------------------------------------------

class SP_BindTestAccountReturn : public ::google::protobuf::Message {
 public:
  SP_BindTestAccountReturn();
  virtual ~SP_BindTestAccountReturn();

  SP_BindTestAccountReturn(const SP_BindTestAccountReturn& from);

  inline SP_BindTestAccountReturn& operator=(const SP_BindTestAccountReturn& from) {
    CopyFrom(from);
    return *this;
  }

  inline const ::google::protobuf::UnknownFieldSet& unknown_fields() const {
    return _unknown_fields_;
  }

  inline ::google::protobuf::UnknownFieldSet* mutable_unknown_fields() {
    return &_unknown_fields_;
  }

  static const ::google::protobuf::Descriptor* descriptor();
  static const SP_BindTestAccountReturn& default_instance();

  void Swap(SP_BindTestAccountReturn* other);

  // implements Message ----------------------------------------------

  SP_BindTestAccountReturn* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const SP_BindTestAccountReturn& from);
  void MergeFrom(const SP_BindTestAccountReturn& from);
  void Clear();
  bool IsInitialized() const;

  int ByteSize() const;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input);
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const;
  ::google::protobuf::uint8* SerializeWithCachedSizesToArray(::google::protobuf::uint8* output) const;
  int GetCachedSize() const { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const;
  public:

  ::google::protobuf::Metadata GetMetadata() const;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // required int32 result = 1;
  inline bool has_result() const;
  inline void clear_result();
  static const int kResultFieldNumber = 1;
  inline ::google::protobuf::int32 result() const;
  inline void set_result(::google::protobuf::int32 value);

  // required string clientIP = 2;
  inline bool has_clientip() const;
  inline void clear_clientip();
  static const int kClientIPFieldNumber = 2;
  inline const ::std::string& clientip() const;
  inline void set_clientip(const ::std::string& value);
  inline void set_clientip(const char* value);
  inline void set_clientip(const char* value, size_t size);
  inline ::std::string* mutable_clientip();
  inline ::std::string* release_clientip();
  inline void set_allocated_clientip(::std::string* clientip);

  // @@protoc_insertion_point(class_scope:SP_BindTestAccountReturn)
 private:
  inline void set_has_result();
  inline void clear_has_result();
  inline void set_has_clientip();
  inline void clear_has_clientip();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::std::string* clientip_;
  ::google::protobuf::int32 result_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(2 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fAccount_2etxt();
  friend void protobuf_AssignDesc_SP_5fAccount_2etxt();
  friend void protobuf_ShutdownFile_SP_5fAccount_2etxt();

  void InitAsDefaultInstance();
  static SP_BindTestAccountReturn* default_instance_;
};
// ===================================================================


// ===================================================================

// GM_AccountExistRequestReturn

// required int32 m_Result = 1;
inline bool GM_AccountExistRequestReturn::has_m_result() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_AccountExistRequestReturn::set_has_m_result() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_AccountExistRequestReturn::clear_has_m_result() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_AccountExistRequestReturn::clear_m_result() {
  m_result_ = 0;
  clear_has_m_result();
}
inline ::google::protobuf::int32 GM_AccountExistRequestReturn::m_result() const {
  return m_result_;
}
inline void GM_AccountExistRequestReturn::set_m_result(::google::protobuf::int32 value) {
  set_has_m_result();
  m_result_ = value;
}

// -------------------------------------------------------------------

// SP_BindTestAccountReturn

// required int32 result = 1;
inline bool SP_BindTestAccountReturn::has_result() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void SP_BindTestAccountReturn::set_has_result() {
  _has_bits_[0] |= 0x00000001u;
}
inline void SP_BindTestAccountReturn::clear_has_result() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void SP_BindTestAccountReturn::clear_result() {
  result_ = 0;
  clear_has_result();
}
inline ::google::protobuf::int32 SP_BindTestAccountReturn::result() const {
  return result_;
}
inline void SP_BindTestAccountReturn::set_result(::google::protobuf::int32 value) {
  set_has_result();
  result_ = value;
}

// required string clientIP = 2;
inline bool SP_BindTestAccountReturn::has_clientip() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void SP_BindTestAccountReturn::set_has_clientip() {
  _has_bits_[0] |= 0x00000002u;
}
inline void SP_BindTestAccountReturn::clear_has_clientip() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void SP_BindTestAccountReturn::clear_clientip() {
  if (clientip_ != &::google::protobuf::internal::kEmptyString) {
    clientip_->clear();
  }
  clear_has_clientip();
}
inline const ::std::string& SP_BindTestAccountReturn::clientip() const {
  return *clientip_;
}
inline void SP_BindTestAccountReturn::set_clientip(const ::std::string& value) {
  set_has_clientip();
  if (clientip_ == &::google::protobuf::internal::kEmptyString) {
    clientip_ = new ::std::string;
  }
  clientip_->assign(value);
}
inline void SP_BindTestAccountReturn::set_clientip(const char* value) {
  set_has_clientip();
  if (clientip_ == &::google::protobuf::internal::kEmptyString) {
    clientip_ = new ::std::string;
  }
  clientip_->assign(value);
}
inline void SP_BindTestAccountReturn::set_clientip(const char* value, size_t size) {
  set_has_clientip();
  if (clientip_ == &::google::protobuf::internal::kEmptyString) {
    clientip_ = new ::std::string;
  }
  clientip_->assign(reinterpret_cast<const char*>(value), size);
}
inline ::std::string* SP_BindTestAccountReturn::mutable_clientip() {
  set_has_clientip();
  if (clientip_ == &::google::protobuf::internal::kEmptyString) {
    clientip_ = new ::std::string;
  }
  return clientip_;
}
inline ::std::string* SP_BindTestAccountReturn::release_clientip() {
  clear_has_clientip();
  if (clientip_ == &::google::protobuf::internal::kEmptyString) {
    return NULL;
  } else {
    ::std::string* temp = clientip_;
    clientip_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
    return temp;
  }
}
inline void SP_BindTestAccountReturn::set_allocated_clientip(::std::string* clientip) {
  if (clientip_ != &::google::protobuf::internal::kEmptyString) {
    delete clientip_;
  }
  if (clientip) {
    set_has_clientip();
    clientip_ = clientip;
  } else {
    clear_has_clientip();
    clientip_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
  }
}


// @@protoc_insertion_point(namespace_scope)

#ifndef SWIG
namespace google {
namespace protobuf {


}  // namespace google
}  // namespace protobuf
#endif  // SWIG

// @@protoc_insertion_point(global_scope)

#ifdef _MSC_VER
#  pragma warning(pop)
#endif

#endif  // PROTOBUF_SP_5fAccount_2etxt__INCLUDED
