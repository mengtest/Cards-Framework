// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: sp_TestAccount.txt

#ifndef PROTOBUF_sp_5fTestAccount_2etxt__INCLUDED
#define PROTOBUF_sp_5fTestAccount_2etxt__INCLUDED

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
void  protobuf_AddDesc_sp_5fTestAccount_2etxt();
void protobuf_AssignDesc_sp_5fTestAccount_2etxt();
void protobuf_ShutdownFile_sp_5fTestAccount_2etxt();

class SP_TestAccountReturn;
class SP_ClientIP;

// ===================================================================

class SP_TestAccountReturn : public ::google::protobuf::Message {
 public:
  SP_TestAccountReturn();
  virtual ~SP_TestAccountReturn();

  SP_TestAccountReturn(const SP_TestAccountReturn& from);

  inline SP_TestAccountReturn& operator=(const SP_TestAccountReturn& from) {
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
  static const SP_TestAccountReturn& default_instance();

  void Swap(SP_TestAccountReturn* other);

  // implements Message ----------------------------------------------

  SP_TestAccountReturn* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const SP_TestAccountReturn& from);
  void MergeFrom(const SP_TestAccountReturn& from);
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

  // required string accountName = 1;
  inline bool has_accountname() const;
  inline void clear_accountname();
  static const int kAccountNameFieldNumber = 1;
  inline const ::std::string& accountname() const;
  inline void set_accountname(const ::std::string& value);
  inline void set_accountname(const char* value);
  inline void set_accountname(const char* value, size_t size);
  inline ::std::string* mutable_accountname();
  inline ::std::string* release_accountname();
  inline void set_allocated_accountname(::std::string* accountname);

  // required string password = 2;
  inline bool has_password() const;
  inline void clear_password();
  static const int kPasswordFieldNumber = 2;
  inline const ::std::string& password() const;
  inline void set_password(const ::std::string& value);
  inline void set_password(const char* value);
  inline void set_password(const char* value, size_t size);
  inline ::std::string* mutable_password();
  inline ::std::string* release_password();
  inline void set_allocated_password(::std::string* password);

  // required string clientIP = 3;
  inline bool has_clientip() const;
  inline void clear_clientip();
  static const int kClientIPFieldNumber = 3;
  inline const ::std::string& clientip() const;
  inline void set_clientip(const ::std::string& value);
  inline void set_clientip(const char* value);
  inline void set_clientip(const char* value, size_t size);
  inline ::std::string* mutable_clientip();
  inline ::std::string* release_clientip();
  inline void set_allocated_clientip(::std::string* clientip);

  // optional int32 accountType = 4;
  inline bool has_accounttype() const;
  inline void clear_accounttype();
  static const int kAccountTypeFieldNumber = 4;
  inline ::google::protobuf::int32 accounttype() const;
  inline void set_accounttype(::google::protobuf::int32 value);

  // optional int32 createTime = 5;
  inline bool has_createtime() const;
  inline void clear_createtime();
  static const int kCreateTimeFieldNumber = 5;
  inline ::google::protobuf::int32 createtime() const;
  inline void set_createtime(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:SP_TestAccountReturn)
 private:
  inline void set_has_accountname();
  inline void clear_has_accountname();
  inline void set_has_password();
  inline void clear_has_password();
  inline void set_has_clientip();
  inline void clear_has_clientip();
  inline void set_has_accounttype();
  inline void clear_has_accounttype();
  inline void set_has_createtime();
  inline void clear_has_createtime();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::std::string* accountname_;
  ::std::string* password_;
  ::std::string* clientip_;
  ::google::protobuf::int32 accounttype_;
  ::google::protobuf::int32 createtime_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(5 + 31) / 32];

  friend void  protobuf_AddDesc_sp_5fTestAccount_2etxt();
  friend void protobuf_AssignDesc_sp_5fTestAccount_2etxt();
  friend void protobuf_ShutdownFile_sp_5fTestAccount_2etxt();

  void InitAsDefaultInstance();
  static SP_TestAccountReturn* default_instance_;
};
// -------------------------------------------------------------------

class SP_ClientIP : public ::google::protobuf::Message {
 public:
  SP_ClientIP();
  virtual ~SP_ClientIP();

  SP_ClientIP(const SP_ClientIP& from);

  inline SP_ClientIP& operator=(const SP_ClientIP& from) {
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
  static const SP_ClientIP& default_instance();

  void Swap(SP_ClientIP* other);

  // implements Message ----------------------------------------------

  SP_ClientIP* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const SP_ClientIP& from);
  void MergeFrom(const SP_ClientIP& from);
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

  // required string clientIP = 1;
  inline bool has_clientip() const;
  inline void clear_clientip();
  static const int kClientIPFieldNumber = 1;
  inline const ::std::string& clientip() const;
  inline void set_clientip(const ::std::string& value);
  inline void set_clientip(const char* value);
  inline void set_clientip(const char* value, size_t size);
  inline ::std::string* mutable_clientip();
  inline ::std::string* release_clientip();
  inline void set_allocated_clientip(::std::string* clientip);

  // optional string mac = 2;
  inline bool has_mac() const;
  inline void clear_mac();
  static const int kMacFieldNumber = 2;
  inline const ::std::string& mac() const;
  inline void set_mac(const ::std::string& value);
  inline void set_mac(const char* value);
  inline void set_mac(const char* value, size_t size);
  inline ::std::string* mutable_mac();
  inline ::std::string* release_mac();
  inline void set_allocated_mac(::std::string* mac);

  // optional string idfa = 3;
  inline bool has_idfa() const;
  inline void clear_idfa();
  static const int kIdfaFieldNumber = 3;
  inline const ::std::string& idfa() const;
  inline void set_idfa(const ::std::string& value);
  inline void set_idfa(const char* value);
  inline void set_idfa(const char* value, size_t size);
  inline ::std::string* mutable_idfa();
  inline ::std::string* release_idfa();
  inline void set_allocated_idfa(::std::string* idfa);

  // optional string deviceid = 4;
  inline bool has_deviceid() const;
  inline void clear_deviceid();
  static const int kDeviceidFieldNumber = 4;
  inline const ::std::string& deviceid() const;
  inline void set_deviceid(const ::std::string& value);
  inline void set_deviceid(const char* value);
  inline void set_deviceid(const char* value, size_t size);
  inline ::std::string* mutable_deviceid();
  inline ::std::string* release_deviceid();
  inline void set_allocated_deviceid(::std::string* deviceid);

  // @@protoc_insertion_point(class_scope:SP_ClientIP)
 private:
  inline void set_has_clientip();
  inline void clear_has_clientip();
  inline void set_has_mac();
  inline void clear_has_mac();
  inline void set_has_idfa();
  inline void clear_has_idfa();
  inline void set_has_deviceid();
  inline void clear_has_deviceid();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::std::string* clientip_;
  ::std::string* mac_;
  ::std::string* idfa_;
  ::std::string* deviceid_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(4 + 31) / 32];

  friend void  protobuf_AddDesc_sp_5fTestAccount_2etxt();
  friend void protobuf_AssignDesc_sp_5fTestAccount_2etxt();
  friend void protobuf_ShutdownFile_sp_5fTestAccount_2etxt();

  void InitAsDefaultInstance();
  static SP_ClientIP* default_instance_;
};
// ===================================================================


// ===================================================================

// SP_TestAccountReturn

// required string accountName = 1;
inline bool SP_TestAccountReturn::has_accountname() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void SP_TestAccountReturn::set_has_accountname() {
  _has_bits_[0] |= 0x00000001u;
}
inline void SP_TestAccountReturn::clear_has_accountname() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void SP_TestAccountReturn::clear_accountname() {
  if (accountname_ != &::google::protobuf::internal::kEmptyString) {
    accountname_->clear();
  }
  clear_has_accountname();
}
inline const ::std::string& SP_TestAccountReturn::accountname() const {
  return *accountname_;
}
inline void SP_TestAccountReturn::set_accountname(const ::std::string& value) {
  set_has_accountname();
  if (accountname_ == &::google::protobuf::internal::kEmptyString) {
    accountname_ = new ::std::string;
  }
  accountname_->assign(value);
}
inline void SP_TestAccountReturn::set_accountname(const char* value) {
  set_has_accountname();
  if (accountname_ == &::google::protobuf::internal::kEmptyString) {
    accountname_ = new ::std::string;
  }
  accountname_->assign(value);
}
inline void SP_TestAccountReturn::set_accountname(const char* value, size_t size) {
  set_has_accountname();
  if (accountname_ == &::google::protobuf::internal::kEmptyString) {
    accountname_ = new ::std::string;
  }
  accountname_->assign(reinterpret_cast<const char*>(value), size);
}
inline ::std::string* SP_TestAccountReturn::mutable_accountname() {
  set_has_accountname();
  if (accountname_ == &::google::protobuf::internal::kEmptyString) {
    accountname_ = new ::std::string;
  }
  return accountname_;
}
inline ::std::string* SP_TestAccountReturn::release_accountname() {
  clear_has_accountname();
  if (accountname_ == &::google::protobuf::internal::kEmptyString) {
    return NULL;
  } else {
    ::std::string* temp = accountname_;
    accountname_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
    return temp;
  }
}
inline void SP_TestAccountReturn::set_allocated_accountname(::std::string* accountname) {
  if (accountname_ != &::google::protobuf::internal::kEmptyString) {
    delete accountname_;
  }
  if (accountname) {
    set_has_accountname();
    accountname_ = accountname;
  } else {
    clear_has_accountname();
    accountname_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
  }
}

// required string password = 2;
inline bool SP_TestAccountReturn::has_password() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void SP_TestAccountReturn::set_has_password() {
  _has_bits_[0] |= 0x00000002u;
}
inline void SP_TestAccountReturn::clear_has_password() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void SP_TestAccountReturn::clear_password() {
  if (password_ != &::google::protobuf::internal::kEmptyString) {
    password_->clear();
  }
  clear_has_password();
}
inline const ::std::string& SP_TestAccountReturn::password() const {
  return *password_;
}
inline void SP_TestAccountReturn::set_password(const ::std::string& value) {
  set_has_password();
  if (password_ == &::google::protobuf::internal::kEmptyString) {
    password_ = new ::std::string;
  }
  password_->assign(value);
}
inline void SP_TestAccountReturn::set_password(const char* value) {
  set_has_password();
  if (password_ == &::google::protobuf::internal::kEmptyString) {
    password_ = new ::std::string;
  }
  password_->assign(value);
}
inline void SP_TestAccountReturn::set_password(const char* value, size_t size) {
  set_has_password();
  if (password_ == &::google::protobuf::internal::kEmptyString) {
    password_ = new ::std::string;
  }
  password_->assign(reinterpret_cast<const char*>(value), size);
}
inline ::std::string* SP_TestAccountReturn::mutable_password() {
  set_has_password();
  if (password_ == &::google::protobuf::internal::kEmptyString) {
    password_ = new ::std::string;
  }
  return password_;
}
inline ::std::string* SP_TestAccountReturn::release_password() {
  clear_has_password();
  if (password_ == &::google::protobuf::internal::kEmptyString) {
    return NULL;
  } else {
    ::std::string* temp = password_;
    password_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
    return temp;
  }
}
inline void SP_TestAccountReturn::set_allocated_password(::std::string* password) {
  if (password_ != &::google::protobuf::internal::kEmptyString) {
    delete password_;
  }
  if (password) {
    set_has_password();
    password_ = password;
  } else {
    clear_has_password();
    password_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
  }
}

// required string clientIP = 3;
inline bool SP_TestAccountReturn::has_clientip() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void SP_TestAccountReturn::set_has_clientip() {
  _has_bits_[0] |= 0x00000004u;
}
inline void SP_TestAccountReturn::clear_has_clientip() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void SP_TestAccountReturn::clear_clientip() {
  if (clientip_ != &::google::protobuf::internal::kEmptyString) {
    clientip_->clear();
  }
  clear_has_clientip();
}
inline const ::std::string& SP_TestAccountReturn::clientip() const {
  return *clientip_;
}
inline void SP_TestAccountReturn::set_clientip(const ::std::string& value) {
  set_has_clientip();
  if (clientip_ == &::google::protobuf::internal::kEmptyString) {
    clientip_ = new ::std::string;
  }
  clientip_->assign(value);
}
inline void SP_TestAccountReturn::set_clientip(const char* value) {
  set_has_clientip();
  if (clientip_ == &::google::protobuf::internal::kEmptyString) {
    clientip_ = new ::std::string;
  }
  clientip_->assign(value);
}
inline void SP_TestAccountReturn::set_clientip(const char* value, size_t size) {
  set_has_clientip();
  if (clientip_ == &::google::protobuf::internal::kEmptyString) {
    clientip_ = new ::std::string;
  }
  clientip_->assign(reinterpret_cast<const char*>(value), size);
}
inline ::std::string* SP_TestAccountReturn::mutable_clientip() {
  set_has_clientip();
  if (clientip_ == &::google::protobuf::internal::kEmptyString) {
    clientip_ = new ::std::string;
  }
  return clientip_;
}
inline ::std::string* SP_TestAccountReturn::release_clientip() {
  clear_has_clientip();
  if (clientip_ == &::google::protobuf::internal::kEmptyString) {
    return NULL;
  } else {
    ::std::string* temp = clientip_;
    clientip_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
    return temp;
  }
}
inline void SP_TestAccountReturn::set_allocated_clientip(::std::string* clientip) {
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

// optional int32 accountType = 4;
inline bool SP_TestAccountReturn::has_accounttype() const {
  return (_has_bits_[0] & 0x00000008u) != 0;
}
inline void SP_TestAccountReturn::set_has_accounttype() {
  _has_bits_[0] |= 0x00000008u;
}
inline void SP_TestAccountReturn::clear_has_accounttype() {
  _has_bits_[0] &= ~0x00000008u;
}
inline void SP_TestAccountReturn::clear_accounttype() {
  accounttype_ = 0;
  clear_has_accounttype();
}
inline ::google::protobuf::int32 SP_TestAccountReturn::accounttype() const {
  return accounttype_;
}
inline void SP_TestAccountReturn::set_accounttype(::google::protobuf::int32 value) {
  set_has_accounttype();
  accounttype_ = value;
}

// optional int32 createTime = 5;
inline bool SP_TestAccountReturn::has_createtime() const {
  return (_has_bits_[0] & 0x00000010u) != 0;
}
inline void SP_TestAccountReturn::set_has_createtime() {
  _has_bits_[0] |= 0x00000010u;
}
inline void SP_TestAccountReturn::clear_has_createtime() {
  _has_bits_[0] &= ~0x00000010u;
}
inline void SP_TestAccountReturn::clear_createtime() {
  createtime_ = 0;
  clear_has_createtime();
}
inline ::google::protobuf::int32 SP_TestAccountReturn::createtime() const {
  return createtime_;
}
inline void SP_TestAccountReturn::set_createtime(::google::protobuf::int32 value) {
  set_has_createtime();
  createtime_ = value;
}

// -------------------------------------------------------------------

// SP_ClientIP

// required string clientIP = 1;
inline bool SP_ClientIP::has_clientip() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void SP_ClientIP::set_has_clientip() {
  _has_bits_[0] |= 0x00000001u;
}
inline void SP_ClientIP::clear_has_clientip() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void SP_ClientIP::clear_clientip() {
  if (clientip_ != &::google::protobuf::internal::kEmptyString) {
    clientip_->clear();
  }
  clear_has_clientip();
}
inline const ::std::string& SP_ClientIP::clientip() const {
  return *clientip_;
}
inline void SP_ClientIP::set_clientip(const ::std::string& value) {
  set_has_clientip();
  if (clientip_ == &::google::protobuf::internal::kEmptyString) {
    clientip_ = new ::std::string;
  }
  clientip_->assign(value);
}
inline void SP_ClientIP::set_clientip(const char* value) {
  set_has_clientip();
  if (clientip_ == &::google::protobuf::internal::kEmptyString) {
    clientip_ = new ::std::string;
  }
  clientip_->assign(value);
}
inline void SP_ClientIP::set_clientip(const char* value, size_t size) {
  set_has_clientip();
  if (clientip_ == &::google::protobuf::internal::kEmptyString) {
    clientip_ = new ::std::string;
  }
  clientip_->assign(reinterpret_cast<const char*>(value), size);
}
inline ::std::string* SP_ClientIP::mutable_clientip() {
  set_has_clientip();
  if (clientip_ == &::google::protobuf::internal::kEmptyString) {
    clientip_ = new ::std::string;
  }
  return clientip_;
}
inline ::std::string* SP_ClientIP::release_clientip() {
  clear_has_clientip();
  if (clientip_ == &::google::protobuf::internal::kEmptyString) {
    return NULL;
  } else {
    ::std::string* temp = clientip_;
    clientip_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
    return temp;
  }
}
inline void SP_ClientIP::set_allocated_clientip(::std::string* clientip) {
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

// optional string mac = 2;
inline bool SP_ClientIP::has_mac() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void SP_ClientIP::set_has_mac() {
  _has_bits_[0] |= 0x00000002u;
}
inline void SP_ClientIP::clear_has_mac() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void SP_ClientIP::clear_mac() {
  if (mac_ != &::google::protobuf::internal::kEmptyString) {
    mac_->clear();
  }
  clear_has_mac();
}
inline const ::std::string& SP_ClientIP::mac() const {
  return *mac_;
}
inline void SP_ClientIP::set_mac(const ::std::string& value) {
  set_has_mac();
  if (mac_ == &::google::protobuf::internal::kEmptyString) {
    mac_ = new ::std::string;
  }
  mac_->assign(value);
}
inline void SP_ClientIP::set_mac(const char* value) {
  set_has_mac();
  if (mac_ == &::google::protobuf::internal::kEmptyString) {
    mac_ = new ::std::string;
  }
  mac_->assign(value);
}
inline void SP_ClientIP::set_mac(const char* value, size_t size) {
  set_has_mac();
  if (mac_ == &::google::protobuf::internal::kEmptyString) {
    mac_ = new ::std::string;
  }
  mac_->assign(reinterpret_cast<const char*>(value), size);
}
inline ::std::string* SP_ClientIP::mutable_mac() {
  set_has_mac();
  if (mac_ == &::google::protobuf::internal::kEmptyString) {
    mac_ = new ::std::string;
  }
  return mac_;
}
inline ::std::string* SP_ClientIP::release_mac() {
  clear_has_mac();
  if (mac_ == &::google::protobuf::internal::kEmptyString) {
    return NULL;
  } else {
    ::std::string* temp = mac_;
    mac_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
    return temp;
  }
}
inline void SP_ClientIP::set_allocated_mac(::std::string* mac) {
  if (mac_ != &::google::protobuf::internal::kEmptyString) {
    delete mac_;
  }
  if (mac) {
    set_has_mac();
    mac_ = mac;
  } else {
    clear_has_mac();
    mac_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
  }
}

// optional string idfa = 3;
inline bool SP_ClientIP::has_idfa() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void SP_ClientIP::set_has_idfa() {
  _has_bits_[0] |= 0x00000004u;
}
inline void SP_ClientIP::clear_has_idfa() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void SP_ClientIP::clear_idfa() {
  if (idfa_ != &::google::protobuf::internal::kEmptyString) {
    idfa_->clear();
  }
  clear_has_idfa();
}
inline const ::std::string& SP_ClientIP::idfa() const {
  return *idfa_;
}
inline void SP_ClientIP::set_idfa(const ::std::string& value) {
  set_has_idfa();
  if (idfa_ == &::google::protobuf::internal::kEmptyString) {
    idfa_ = new ::std::string;
  }
  idfa_->assign(value);
}
inline void SP_ClientIP::set_idfa(const char* value) {
  set_has_idfa();
  if (idfa_ == &::google::protobuf::internal::kEmptyString) {
    idfa_ = new ::std::string;
  }
  idfa_->assign(value);
}
inline void SP_ClientIP::set_idfa(const char* value, size_t size) {
  set_has_idfa();
  if (idfa_ == &::google::protobuf::internal::kEmptyString) {
    idfa_ = new ::std::string;
  }
  idfa_->assign(reinterpret_cast<const char*>(value), size);
}
inline ::std::string* SP_ClientIP::mutable_idfa() {
  set_has_idfa();
  if (idfa_ == &::google::protobuf::internal::kEmptyString) {
    idfa_ = new ::std::string;
  }
  return idfa_;
}
inline ::std::string* SP_ClientIP::release_idfa() {
  clear_has_idfa();
  if (idfa_ == &::google::protobuf::internal::kEmptyString) {
    return NULL;
  } else {
    ::std::string* temp = idfa_;
    idfa_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
    return temp;
  }
}
inline void SP_ClientIP::set_allocated_idfa(::std::string* idfa) {
  if (idfa_ != &::google::protobuf::internal::kEmptyString) {
    delete idfa_;
  }
  if (idfa) {
    set_has_idfa();
    idfa_ = idfa;
  } else {
    clear_has_idfa();
    idfa_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
  }
}

// optional string deviceid = 4;
inline bool SP_ClientIP::has_deviceid() const {
  return (_has_bits_[0] & 0x00000008u) != 0;
}
inline void SP_ClientIP::set_has_deviceid() {
  _has_bits_[0] |= 0x00000008u;
}
inline void SP_ClientIP::clear_has_deviceid() {
  _has_bits_[0] &= ~0x00000008u;
}
inline void SP_ClientIP::clear_deviceid() {
  if (deviceid_ != &::google::protobuf::internal::kEmptyString) {
    deviceid_->clear();
  }
  clear_has_deviceid();
}
inline const ::std::string& SP_ClientIP::deviceid() const {
  return *deviceid_;
}
inline void SP_ClientIP::set_deviceid(const ::std::string& value) {
  set_has_deviceid();
  if (deviceid_ == &::google::protobuf::internal::kEmptyString) {
    deviceid_ = new ::std::string;
  }
  deviceid_->assign(value);
}
inline void SP_ClientIP::set_deviceid(const char* value) {
  set_has_deviceid();
  if (deviceid_ == &::google::protobuf::internal::kEmptyString) {
    deviceid_ = new ::std::string;
  }
  deviceid_->assign(value);
}
inline void SP_ClientIP::set_deviceid(const char* value, size_t size) {
  set_has_deviceid();
  if (deviceid_ == &::google::protobuf::internal::kEmptyString) {
    deviceid_ = new ::std::string;
  }
  deviceid_->assign(reinterpret_cast<const char*>(value), size);
}
inline ::std::string* SP_ClientIP::mutable_deviceid() {
  set_has_deviceid();
  if (deviceid_ == &::google::protobuf::internal::kEmptyString) {
    deviceid_ = new ::std::string;
  }
  return deviceid_;
}
inline ::std::string* SP_ClientIP::release_deviceid() {
  clear_has_deviceid();
  if (deviceid_ == &::google::protobuf::internal::kEmptyString) {
    return NULL;
  } else {
    ::std::string* temp = deviceid_;
    deviceid_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
    return temp;
  }
}
inline void SP_ClientIP::set_allocated_deviceid(::std::string* deviceid) {
  if (deviceid_ != &::google::protobuf::internal::kEmptyString) {
    delete deviceid_;
  }
  if (deviceid) {
    set_has_deviceid();
    deviceid_ = deviceid;
  } else {
    clear_has_deviceid();
    deviceid_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
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

#endif  // PROTOBUF_sp_5fTestAccount_2etxt__INCLUDED