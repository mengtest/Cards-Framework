// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_CellphoneGift.txt

#ifndef PROTOBUF_SP_5fCellphoneGift_2etxt__INCLUDED
#define PROTOBUF_SP_5fCellphoneGift_2etxt__INCLUDED

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
void  protobuf_AddDesc_SP_5fCellphoneGift_2etxt();
void protobuf_AssignDesc_SP_5fCellphoneGift_2etxt();
void protobuf_ShutdownFile_SP_5fCellphoneGift_2etxt();

class SM_CellphoneGift_Record;
class GM_CellphoneGift_SendShortMessage_Request;

// ===================================================================

class SM_CellphoneGift_Record : public ::google::protobuf::Message {
 public:
  SM_CellphoneGift_Record();
  virtual ~SM_CellphoneGift_Record();

  SM_CellphoneGift_Record(const SM_CellphoneGift_Record& from);

  inline SM_CellphoneGift_Record& operator=(const SM_CellphoneGift_Record& from) {
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
  static const SM_CellphoneGift_Record& default_instance();

  void Swap(SM_CellphoneGift_Record* other);

  // implements Message ----------------------------------------------

  SM_CellphoneGift_Record* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const SM_CellphoneGift_Record& from);
  void MergeFrom(const SM_CellphoneGift_Record& from);
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

  // required int64 phoneNum = 1;
  inline bool has_phonenum() const;
  inline void clear_phonenum();
  static const int kPhoneNumFieldNumber = 1;
  inline ::google::protobuf::int64 phonenum() const;
  inline void set_phonenum(::google::protobuf::int64 value);

  // required int32 isBind = 2;
  inline bool has_isbind() const;
  inline void clear_isbind();
  static const int kIsBindFieldNumber = 2;
  inline ::google::protobuf::int32 isbind() const;
  inline void set_isbind(::google::protobuf::int32 value);

  // required int32 code = 3;
  inline bool has_code() const;
  inline void clear_code();
  static const int kCodeFieldNumber = 3;
  inline ::google::protobuf::int32 code() const;
  inline void set_code(::google::protobuf::int32 value);

  // required int32 getCodeTime = 4;
  inline bool has_getcodetime() const;
  inline void clear_getcodetime();
  static const int kGetCodeTimeFieldNumber = 4;
  inline ::google::protobuf::int32 getcodetime() const;
  inline void set_getcodetime(::google::protobuf::int32 value);

  // required int32 isGet = 5;
  inline bool has_isget() const;
  inline void clear_isget();
  static const int kIsGetFieldNumber = 5;
  inline ::google::protobuf::int32 isget() const;
  inline void set_isget(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:SM_CellphoneGift_Record)
 private:
  inline void set_has_phonenum();
  inline void clear_has_phonenum();
  inline void set_has_isbind();
  inline void clear_has_isbind();
  inline void set_has_code();
  inline void clear_has_code();
  inline void set_has_getcodetime();
  inline void clear_has_getcodetime();
  inline void set_has_isget();
  inline void clear_has_isget();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int64 phonenum_;
  ::google::protobuf::int32 isbind_;
  ::google::protobuf::int32 code_;
  ::google::protobuf::int32 getcodetime_;
  ::google::protobuf::int32 isget_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(5 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fCellphoneGift_2etxt();
  friend void protobuf_AssignDesc_SP_5fCellphoneGift_2etxt();
  friend void protobuf_ShutdownFile_SP_5fCellphoneGift_2etxt();

  void InitAsDefaultInstance();
  static SM_CellphoneGift_Record* default_instance_;
};
// -------------------------------------------------------------------

class GM_CellphoneGift_SendShortMessage_Request : public ::google::protobuf::Message {
 public:
  GM_CellphoneGift_SendShortMessage_Request();
  virtual ~GM_CellphoneGift_SendShortMessage_Request();

  GM_CellphoneGift_SendShortMessage_Request(const GM_CellphoneGift_SendShortMessage_Request& from);

  inline GM_CellphoneGift_SendShortMessage_Request& operator=(const GM_CellphoneGift_SendShortMessage_Request& from) {
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
  static const GM_CellphoneGift_SendShortMessage_Request& default_instance();

  void Swap(GM_CellphoneGift_SendShortMessage_Request* other);

  // implements Message ----------------------------------------------

  GM_CellphoneGift_SendShortMessage_Request* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_CellphoneGift_SendShortMessage_Request& from);
  void MergeFrom(const GM_CellphoneGift_SendShortMessage_Request& from);
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

  // required int64 phoneNum = 1;
  inline bool has_phonenum() const;
  inline void clear_phonenum();
  static const int kPhoneNumFieldNumber = 1;
  inline ::google::protobuf::int64 phonenum() const;
  inline void set_phonenum(::google::protobuf::int64 value);

  // required int32 verifCode = 2;
  inline bool has_verifcode() const;
  inline void clear_verifcode();
  static const int kVerifCodeFieldNumber = 2;
  inline ::google::protobuf::int32 verifcode() const;
  inline void set_verifcode(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:GM_CellphoneGift_SendShortMessage_Request)
 private:
  inline void set_has_phonenum();
  inline void clear_has_phonenum();
  inline void set_has_verifcode();
  inline void clear_has_verifcode();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int64 phonenum_;
  ::google::protobuf::int32 verifcode_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(2 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fCellphoneGift_2etxt();
  friend void protobuf_AssignDesc_SP_5fCellphoneGift_2etxt();
  friend void protobuf_ShutdownFile_SP_5fCellphoneGift_2etxt();

  void InitAsDefaultInstance();
  static GM_CellphoneGift_SendShortMessage_Request* default_instance_;
};
// ===================================================================


// ===================================================================

// SM_CellphoneGift_Record

// required int64 phoneNum = 1;
inline bool SM_CellphoneGift_Record::has_phonenum() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void SM_CellphoneGift_Record::set_has_phonenum() {
  _has_bits_[0] |= 0x00000001u;
}
inline void SM_CellphoneGift_Record::clear_has_phonenum() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void SM_CellphoneGift_Record::clear_phonenum() {
  phonenum_ = GOOGLE_LONGLONG(0);
  clear_has_phonenum();
}
inline ::google::protobuf::int64 SM_CellphoneGift_Record::phonenum() const {
  return phonenum_;
}
inline void SM_CellphoneGift_Record::set_phonenum(::google::protobuf::int64 value) {
  set_has_phonenum();
  phonenum_ = value;
}

// required int32 isBind = 2;
inline bool SM_CellphoneGift_Record::has_isbind() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void SM_CellphoneGift_Record::set_has_isbind() {
  _has_bits_[0] |= 0x00000002u;
}
inline void SM_CellphoneGift_Record::clear_has_isbind() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void SM_CellphoneGift_Record::clear_isbind() {
  isbind_ = 0;
  clear_has_isbind();
}
inline ::google::protobuf::int32 SM_CellphoneGift_Record::isbind() const {
  return isbind_;
}
inline void SM_CellphoneGift_Record::set_isbind(::google::protobuf::int32 value) {
  set_has_isbind();
  isbind_ = value;
}

// required int32 code = 3;
inline bool SM_CellphoneGift_Record::has_code() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void SM_CellphoneGift_Record::set_has_code() {
  _has_bits_[0] |= 0x00000004u;
}
inline void SM_CellphoneGift_Record::clear_has_code() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void SM_CellphoneGift_Record::clear_code() {
  code_ = 0;
  clear_has_code();
}
inline ::google::protobuf::int32 SM_CellphoneGift_Record::code() const {
  return code_;
}
inline void SM_CellphoneGift_Record::set_code(::google::protobuf::int32 value) {
  set_has_code();
  code_ = value;
}

// required int32 getCodeTime = 4;
inline bool SM_CellphoneGift_Record::has_getcodetime() const {
  return (_has_bits_[0] & 0x00000008u) != 0;
}
inline void SM_CellphoneGift_Record::set_has_getcodetime() {
  _has_bits_[0] |= 0x00000008u;
}
inline void SM_CellphoneGift_Record::clear_has_getcodetime() {
  _has_bits_[0] &= ~0x00000008u;
}
inline void SM_CellphoneGift_Record::clear_getcodetime() {
  getcodetime_ = 0;
  clear_has_getcodetime();
}
inline ::google::protobuf::int32 SM_CellphoneGift_Record::getcodetime() const {
  return getcodetime_;
}
inline void SM_CellphoneGift_Record::set_getcodetime(::google::protobuf::int32 value) {
  set_has_getcodetime();
  getcodetime_ = value;
}

// required int32 isGet = 5;
inline bool SM_CellphoneGift_Record::has_isget() const {
  return (_has_bits_[0] & 0x00000010u) != 0;
}
inline void SM_CellphoneGift_Record::set_has_isget() {
  _has_bits_[0] |= 0x00000010u;
}
inline void SM_CellphoneGift_Record::clear_has_isget() {
  _has_bits_[0] &= ~0x00000010u;
}
inline void SM_CellphoneGift_Record::clear_isget() {
  isget_ = 0;
  clear_has_isget();
}
inline ::google::protobuf::int32 SM_CellphoneGift_Record::isget() const {
  return isget_;
}
inline void SM_CellphoneGift_Record::set_isget(::google::protobuf::int32 value) {
  set_has_isget();
  isget_ = value;
}

// -------------------------------------------------------------------

// GM_CellphoneGift_SendShortMessage_Request

// required int64 phoneNum = 1;
inline bool GM_CellphoneGift_SendShortMessage_Request::has_phonenum() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_CellphoneGift_SendShortMessage_Request::set_has_phonenum() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_CellphoneGift_SendShortMessage_Request::clear_has_phonenum() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_CellphoneGift_SendShortMessage_Request::clear_phonenum() {
  phonenum_ = GOOGLE_LONGLONG(0);
  clear_has_phonenum();
}
inline ::google::protobuf::int64 GM_CellphoneGift_SendShortMessage_Request::phonenum() const {
  return phonenum_;
}
inline void GM_CellphoneGift_SendShortMessage_Request::set_phonenum(::google::protobuf::int64 value) {
  set_has_phonenum();
  phonenum_ = value;
}

// required int32 verifCode = 2;
inline bool GM_CellphoneGift_SendShortMessage_Request::has_verifcode() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void GM_CellphoneGift_SendShortMessage_Request::set_has_verifcode() {
  _has_bits_[0] |= 0x00000002u;
}
inline void GM_CellphoneGift_SendShortMessage_Request::clear_has_verifcode() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void GM_CellphoneGift_SendShortMessage_Request::clear_verifcode() {
  verifcode_ = 0;
  clear_has_verifcode();
}
inline ::google::protobuf::int32 GM_CellphoneGift_SendShortMessage_Request::verifcode() const {
  return verifcode_;
}
inline void GM_CellphoneGift_SendShortMessage_Request::set_verifcode(::google::protobuf::int32 value) {
  set_has_verifcode();
  verifcode_ = value;
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

#endif  // PROTOBUF_SP_5fCellphoneGift_2etxt__INCLUDED
