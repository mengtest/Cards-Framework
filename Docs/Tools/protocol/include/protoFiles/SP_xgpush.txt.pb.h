// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_xgpush.txt

#ifndef PROTOBUF_SP_5fxgpush_2etxt__INCLUDED
#define PROTOBUF_SP_5fxgpush_2etxt__INCLUDED

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
void  protobuf_AddDesc_SP_5fxgpush_2etxt();
void protobuf_AssignDesc_SP_5fxgpush_2etxt();
void protobuf_ShutdownFile_SP_5fxgpush_2etxt();

class SM_XgPushToHTTP;

// ===================================================================

class SM_XgPushToHTTP : public ::google::protobuf::Message {
 public:
  SM_XgPushToHTTP();
  virtual ~SM_XgPushToHTTP();

  SM_XgPushToHTTP(const SM_XgPushToHTTP& from);

  inline SM_XgPushToHTTP& operator=(const SM_XgPushToHTTP& from) {
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
  static const SM_XgPushToHTTP& default_instance();

  void Swap(SM_XgPushToHTTP* other);

  // implements Message ----------------------------------------------

  SM_XgPushToHTTP* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const SM_XgPushToHTTP& from);
  void MergeFrom(const SM_XgPushToHTTP& from);
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

  // required string m_title = 1;
  inline bool has_m_title() const;
  inline void clear_m_title();
  static const int kMTitleFieldNumber = 1;
  inline const ::std::string& m_title() const;
  inline void set_m_title(const ::std::string& value);
  inline void set_m_title(const char* value);
  inline void set_m_title(const char* value, size_t size);
  inline ::std::string* mutable_m_title();
  inline ::std::string* release_m_title();
  inline void set_allocated_m_title(::std::string* m_title);

  // optional string m_content = 2;
  inline bool has_m_content() const;
  inline void clear_m_content();
  static const int kMContentFieldNumber = 2;
  inline const ::std::string& m_content() const;
  inline void set_m_content(const ::std::string& value);
  inline void set_m_content(const char* value);
  inline void set_m_content(const char* value, size_t size);
  inline ::std::string* mutable_m_content();
  inline ::std::string* release_m_content();
  inline void set_allocated_m_content(::std::string* m_content);

  // optional int32 m_account = 3;
  inline bool has_m_account() const;
  inline void clear_m_account();
  static const int kMAccountFieldNumber = 3;
  inline ::google::protobuf::int32 m_account() const;
  inline void set_m_account(::google::protobuf::int32 value);

  // optional int32 m_action = 4;
  inline bool has_m_action() const;
  inline void clear_m_action();
  static const int kMActionFieldNumber = 4;
  inline ::google::protobuf::int32 m_action() const;
  inline void set_m_action(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:SM_XgPushToHTTP)
 private:
  inline void set_has_m_title();
  inline void clear_has_m_title();
  inline void set_has_m_content();
  inline void clear_has_m_content();
  inline void set_has_m_account();
  inline void clear_has_m_account();
  inline void set_has_m_action();
  inline void clear_has_m_action();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::std::string* m_title_;
  ::std::string* m_content_;
  ::google::protobuf::int32 m_account_;
  ::google::protobuf::int32 m_action_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(4 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fxgpush_2etxt();
  friend void protobuf_AssignDesc_SP_5fxgpush_2etxt();
  friend void protobuf_ShutdownFile_SP_5fxgpush_2etxt();

  void InitAsDefaultInstance();
  static SM_XgPushToHTTP* default_instance_;
};
// ===================================================================


// ===================================================================

// SM_XgPushToHTTP

// required string m_title = 1;
inline bool SM_XgPushToHTTP::has_m_title() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void SM_XgPushToHTTP::set_has_m_title() {
  _has_bits_[0] |= 0x00000001u;
}
inline void SM_XgPushToHTTP::clear_has_m_title() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void SM_XgPushToHTTP::clear_m_title() {
  if (m_title_ != &::google::protobuf::internal::kEmptyString) {
    m_title_->clear();
  }
  clear_has_m_title();
}
inline const ::std::string& SM_XgPushToHTTP::m_title() const {
  return *m_title_;
}
inline void SM_XgPushToHTTP::set_m_title(const ::std::string& value) {
  set_has_m_title();
  if (m_title_ == &::google::protobuf::internal::kEmptyString) {
    m_title_ = new ::std::string;
  }
  m_title_->assign(value);
}
inline void SM_XgPushToHTTP::set_m_title(const char* value) {
  set_has_m_title();
  if (m_title_ == &::google::protobuf::internal::kEmptyString) {
    m_title_ = new ::std::string;
  }
  m_title_->assign(value);
}
inline void SM_XgPushToHTTP::set_m_title(const char* value, size_t size) {
  set_has_m_title();
  if (m_title_ == &::google::protobuf::internal::kEmptyString) {
    m_title_ = new ::std::string;
  }
  m_title_->assign(reinterpret_cast<const char*>(value), size);
}
inline ::std::string* SM_XgPushToHTTP::mutable_m_title() {
  set_has_m_title();
  if (m_title_ == &::google::protobuf::internal::kEmptyString) {
    m_title_ = new ::std::string;
  }
  return m_title_;
}
inline ::std::string* SM_XgPushToHTTP::release_m_title() {
  clear_has_m_title();
  if (m_title_ == &::google::protobuf::internal::kEmptyString) {
    return NULL;
  } else {
    ::std::string* temp = m_title_;
    m_title_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
    return temp;
  }
}
inline void SM_XgPushToHTTP::set_allocated_m_title(::std::string* m_title) {
  if (m_title_ != &::google::protobuf::internal::kEmptyString) {
    delete m_title_;
  }
  if (m_title) {
    set_has_m_title();
    m_title_ = m_title;
  } else {
    clear_has_m_title();
    m_title_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
  }
}

// optional string m_content = 2;
inline bool SM_XgPushToHTTP::has_m_content() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void SM_XgPushToHTTP::set_has_m_content() {
  _has_bits_[0] |= 0x00000002u;
}
inline void SM_XgPushToHTTP::clear_has_m_content() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void SM_XgPushToHTTP::clear_m_content() {
  if (m_content_ != &::google::protobuf::internal::kEmptyString) {
    m_content_->clear();
  }
  clear_has_m_content();
}
inline const ::std::string& SM_XgPushToHTTP::m_content() const {
  return *m_content_;
}
inline void SM_XgPushToHTTP::set_m_content(const ::std::string& value) {
  set_has_m_content();
  if (m_content_ == &::google::protobuf::internal::kEmptyString) {
    m_content_ = new ::std::string;
  }
  m_content_->assign(value);
}
inline void SM_XgPushToHTTP::set_m_content(const char* value) {
  set_has_m_content();
  if (m_content_ == &::google::protobuf::internal::kEmptyString) {
    m_content_ = new ::std::string;
  }
  m_content_->assign(value);
}
inline void SM_XgPushToHTTP::set_m_content(const char* value, size_t size) {
  set_has_m_content();
  if (m_content_ == &::google::protobuf::internal::kEmptyString) {
    m_content_ = new ::std::string;
  }
  m_content_->assign(reinterpret_cast<const char*>(value), size);
}
inline ::std::string* SM_XgPushToHTTP::mutable_m_content() {
  set_has_m_content();
  if (m_content_ == &::google::protobuf::internal::kEmptyString) {
    m_content_ = new ::std::string;
  }
  return m_content_;
}
inline ::std::string* SM_XgPushToHTTP::release_m_content() {
  clear_has_m_content();
  if (m_content_ == &::google::protobuf::internal::kEmptyString) {
    return NULL;
  } else {
    ::std::string* temp = m_content_;
    m_content_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
    return temp;
  }
}
inline void SM_XgPushToHTTP::set_allocated_m_content(::std::string* m_content) {
  if (m_content_ != &::google::protobuf::internal::kEmptyString) {
    delete m_content_;
  }
  if (m_content) {
    set_has_m_content();
    m_content_ = m_content;
  } else {
    clear_has_m_content();
    m_content_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
  }
}

// optional int32 m_account = 3;
inline bool SM_XgPushToHTTP::has_m_account() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void SM_XgPushToHTTP::set_has_m_account() {
  _has_bits_[0] |= 0x00000004u;
}
inline void SM_XgPushToHTTP::clear_has_m_account() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void SM_XgPushToHTTP::clear_m_account() {
  m_account_ = 0;
  clear_has_m_account();
}
inline ::google::protobuf::int32 SM_XgPushToHTTP::m_account() const {
  return m_account_;
}
inline void SM_XgPushToHTTP::set_m_account(::google::protobuf::int32 value) {
  set_has_m_account();
  m_account_ = value;
}

// optional int32 m_action = 4;
inline bool SM_XgPushToHTTP::has_m_action() const {
  return (_has_bits_[0] & 0x00000008u) != 0;
}
inline void SM_XgPushToHTTP::set_has_m_action() {
  _has_bits_[0] |= 0x00000008u;
}
inline void SM_XgPushToHTTP::clear_has_m_action() {
  _has_bits_[0] &= ~0x00000008u;
}
inline void SM_XgPushToHTTP::clear_m_action() {
  m_action_ = 0;
  clear_has_m_action();
}
inline ::google::protobuf::int32 SM_XgPushToHTTP::m_action() const {
  return m_action_;
}
inline void SM_XgPushToHTTP::set_m_action(::google::protobuf::int32 value) {
  set_has_m_action();
  m_action_ = value;
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

#endif  // PROTOBUF_SP_5fxgpush_2etxt__INCLUDED
