// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_Generalize.txt

#ifndef PROTOBUF_SP_5fGeneralize_2etxt__INCLUDED
#define PROTOBUF_SP_5fGeneralize_2etxt__INCLUDED

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
void  protobuf_AddDesc_SP_5fGeneralize_2etxt();
void protobuf_AssignDesc_SP_5fGeneralize_2etxt();
void protobuf_ShutdownFile_SP_5fGeneralize_2etxt();

class SM_SendClickDataToGs;
class SM_SendAllDataToGs;
class SM_OneData_Proto;

// ===================================================================

class SM_SendClickDataToGs : public ::google::protobuf::Message {
 public:
  SM_SendClickDataToGs();
  virtual ~SM_SendClickDataToGs();

  SM_SendClickDataToGs(const SM_SendClickDataToGs& from);

  inline SM_SendClickDataToGs& operator=(const SM_SendClickDataToGs& from) {
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
  static const SM_SendClickDataToGs& default_instance();

  void Swap(SM_SendClickDataToGs* other);

  // implements Message ----------------------------------------------

  SM_SendClickDataToGs* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const SM_SendClickDataToGs& from);
  void MergeFrom(const SM_SendClickDataToGs& from);
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

  // required int32 m_roleid = 1;
  inline bool has_m_roleid() const;
  inline void clear_m_roleid();
  static const int kMRoleidFieldNumber = 1;
  inline ::google::protobuf::int32 m_roleid() const;
  inline void set_m_roleid(::google::protobuf::int32 value);

  // required int32 m_firstclicked = 2;
  inline bool has_m_firstclicked() const;
  inline void clear_m_firstclicked();
  static const int kMFirstclickedFieldNumber = 2;
  inline ::google::protobuf::int32 m_firstclicked() const;
  inline void set_m_firstclicked(::google::protobuf::int32 value);

  // required int32 m_secondclicked = 3;
  inline bool has_m_secondclicked() const;
  inline void clear_m_secondclicked();
  static const int kMSecondclickedFieldNumber = 3;
  inline ::google::protobuf::int32 m_secondclicked() const;
  inline void set_m_secondclicked(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:SM_SendClickDataToGs)
 private:
  inline void set_has_m_roleid();
  inline void clear_has_m_roleid();
  inline void set_has_m_firstclicked();
  inline void clear_has_m_firstclicked();
  inline void set_has_m_secondclicked();
  inline void clear_has_m_secondclicked();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 m_roleid_;
  ::google::protobuf::int32 m_firstclicked_;
  ::google::protobuf::int32 m_secondclicked_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(3 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fGeneralize_2etxt();
  friend void protobuf_AssignDesc_SP_5fGeneralize_2etxt();
  friend void protobuf_ShutdownFile_SP_5fGeneralize_2etxt();

  void InitAsDefaultInstance();
  static SM_SendClickDataToGs* default_instance_;
};
// -------------------------------------------------------------------

class SM_SendAllDataToGs : public ::google::protobuf::Message {
 public:
  SM_SendAllDataToGs();
  virtual ~SM_SendAllDataToGs();

  SM_SendAllDataToGs(const SM_SendAllDataToGs& from);

  inline SM_SendAllDataToGs& operator=(const SM_SendAllDataToGs& from) {
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
  static const SM_SendAllDataToGs& default_instance();

  void Swap(SM_SendAllDataToGs* other);

  // implements Message ----------------------------------------------

  SM_SendAllDataToGs* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const SM_SendAllDataToGs& from);
  void MergeFrom(const SM_SendAllDataToGs& from);
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

  // required int32 m_roleid = 1;
  inline bool has_m_roleid() const;
  inline void clear_m_roleid();
  static const int kMRoleidFieldNumber = 1;
  inline ::google::protobuf::int32 m_roleid() const;
  inline void set_m_roleid(::google::protobuf::int32 value);

  // repeated .SM_OneData_Proto m_onedata = 2;
  inline int m_onedata_size() const;
  inline void clear_m_onedata();
  static const int kMOnedataFieldNumber = 2;
  inline const ::SM_OneData_Proto& m_onedata(int index) const;
  inline ::SM_OneData_Proto* mutable_m_onedata(int index);
  inline ::SM_OneData_Proto* add_m_onedata();
  inline const ::google::protobuf::RepeatedPtrField< ::SM_OneData_Proto >&
      m_onedata() const;
  inline ::google::protobuf::RepeatedPtrField< ::SM_OneData_Proto >*
      mutable_m_onedata();

  // @@protoc_insertion_point(class_scope:SM_SendAllDataToGs)
 private:
  inline void set_has_m_roleid();
  inline void clear_has_m_roleid();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::RepeatedPtrField< ::SM_OneData_Proto > m_onedata_;
  ::google::protobuf::int32 m_roleid_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(2 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fGeneralize_2etxt();
  friend void protobuf_AssignDesc_SP_5fGeneralize_2etxt();
  friend void protobuf_ShutdownFile_SP_5fGeneralize_2etxt();

  void InitAsDefaultInstance();
  static SM_SendAllDataToGs* default_instance_;
};
// -------------------------------------------------------------------

class SM_OneData_Proto : public ::google::protobuf::Message {
 public:
  SM_OneData_Proto();
  virtual ~SM_OneData_Proto();

  SM_OneData_Proto(const SM_OneData_Proto& from);

  inline SM_OneData_Proto& operator=(const SM_OneData_Proto& from) {
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
  static const SM_OneData_Proto& default_instance();

  void Swap(SM_OneData_Proto* other);

  // implements Message ----------------------------------------------

  SM_OneData_Proto* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const SM_OneData_Proto& from);
  void MergeFrom(const SM_OneData_Proto& from);
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

  // optional int32 m_roleid = 1;
  inline bool has_m_roleid() const;
  inline void clear_m_roleid();
  static const int kMRoleidFieldNumber = 1;
  inline ::google::protobuf::int32 m_roleid() const;
  inline void set_m_roleid(::google::protobuf::int32 value);

  // optional int32 m_nextroleid = 2;
  inline bool has_m_nextroleid() const;
  inline void clear_m_nextroleid();
  static const int kMNextroleidFieldNumber = 2;
  inline ::google::protobuf::int32 m_nextroleid() const;
  inline void set_m_nextroleid(::google::protobuf::int32 value);

  // optional int32 m_level = 5;
  inline bool has_m_level() const;
  inline void clear_m_level();
  static const int kMLevelFieldNumber = 5;
  inline ::google::protobuf::int32 m_level() const;
  inline void set_m_level(::google::protobuf::int32 value);

  // optional int32 m_timenow = 7;
  inline bool has_m_timenow() const;
  inline void clear_m_timenow();
  static const int kMTimenowFieldNumber = 7;
  inline ::google::protobuf::int32 m_timenow() const;
  inline void set_m_timenow(::google::protobuf::int32 value);

  // optional float m_canget = 8;
  inline bool has_m_canget() const;
  inline void clear_m_canget();
  static const int kMCangetFieldNumber = 8;
  inline float m_canget() const;
  inline void set_m_canget(float value);

  // @@protoc_insertion_point(class_scope:SM_OneData_Proto)
 private:
  inline void set_has_m_roleid();
  inline void clear_has_m_roleid();
  inline void set_has_m_nextroleid();
  inline void clear_has_m_nextroleid();
  inline void set_has_m_level();
  inline void clear_has_m_level();
  inline void set_has_m_timenow();
  inline void clear_has_m_timenow();
  inline void set_has_m_canget();
  inline void clear_has_m_canget();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 m_roleid_;
  ::google::protobuf::int32 m_nextroleid_;
  ::google::protobuf::int32 m_level_;
  ::google::protobuf::int32 m_timenow_;
  float m_canget_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(5 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fGeneralize_2etxt();
  friend void protobuf_AssignDesc_SP_5fGeneralize_2etxt();
  friend void protobuf_ShutdownFile_SP_5fGeneralize_2etxt();

  void InitAsDefaultInstance();
  static SM_OneData_Proto* default_instance_;
};
// ===================================================================


// ===================================================================

// SM_SendClickDataToGs

// required int32 m_roleid = 1;
inline bool SM_SendClickDataToGs::has_m_roleid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void SM_SendClickDataToGs::set_has_m_roleid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void SM_SendClickDataToGs::clear_has_m_roleid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void SM_SendClickDataToGs::clear_m_roleid() {
  m_roleid_ = 0;
  clear_has_m_roleid();
}
inline ::google::protobuf::int32 SM_SendClickDataToGs::m_roleid() const {
  return m_roleid_;
}
inline void SM_SendClickDataToGs::set_m_roleid(::google::protobuf::int32 value) {
  set_has_m_roleid();
  m_roleid_ = value;
}

// required int32 m_firstclicked = 2;
inline bool SM_SendClickDataToGs::has_m_firstclicked() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void SM_SendClickDataToGs::set_has_m_firstclicked() {
  _has_bits_[0] |= 0x00000002u;
}
inline void SM_SendClickDataToGs::clear_has_m_firstclicked() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void SM_SendClickDataToGs::clear_m_firstclicked() {
  m_firstclicked_ = 0;
  clear_has_m_firstclicked();
}
inline ::google::protobuf::int32 SM_SendClickDataToGs::m_firstclicked() const {
  return m_firstclicked_;
}
inline void SM_SendClickDataToGs::set_m_firstclicked(::google::protobuf::int32 value) {
  set_has_m_firstclicked();
  m_firstclicked_ = value;
}

// required int32 m_secondclicked = 3;
inline bool SM_SendClickDataToGs::has_m_secondclicked() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void SM_SendClickDataToGs::set_has_m_secondclicked() {
  _has_bits_[0] |= 0x00000004u;
}
inline void SM_SendClickDataToGs::clear_has_m_secondclicked() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void SM_SendClickDataToGs::clear_m_secondclicked() {
  m_secondclicked_ = 0;
  clear_has_m_secondclicked();
}
inline ::google::protobuf::int32 SM_SendClickDataToGs::m_secondclicked() const {
  return m_secondclicked_;
}
inline void SM_SendClickDataToGs::set_m_secondclicked(::google::protobuf::int32 value) {
  set_has_m_secondclicked();
  m_secondclicked_ = value;
}

// -------------------------------------------------------------------

// SM_SendAllDataToGs

// required int32 m_roleid = 1;
inline bool SM_SendAllDataToGs::has_m_roleid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void SM_SendAllDataToGs::set_has_m_roleid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void SM_SendAllDataToGs::clear_has_m_roleid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void SM_SendAllDataToGs::clear_m_roleid() {
  m_roleid_ = 0;
  clear_has_m_roleid();
}
inline ::google::protobuf::int32 SM_SendAllDataToGs::m_roleid() const {
  return m_roleid_;
}
inline void SM_SendAllDataToGs::set_m_roleid(::google::protobuf::int32 value) {
  set_has_m_roleid();
  m_roleid_ = value;
}

// repeated .SM_OneData_Proto m_onedata = 2;
inline int SM_SendAllDataToGs::m_onedata_size() const {
  return m_onedata_.size();
}
inline void SM_SendAllDataToGs::clear_m_onedata() {
  m_onedata_.Clear();
}
inline const ::SM_OneData_Proto& SM_SendAllDataToGs::m_onedata(int index) const {
  return m_onedata_.Get(index);
}
inline ::SM_OneData_Proto* SM_SendAllDataToGs::mutable_m_onedata(int index) {
  return m_onedata_.Mutable(index);
}
inline ::SM_OneData_Proto* SM_SendAllDataToGs::add_m_onedata() {
  return m_onedata_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::SM_OneData_Proto >&
SM_SendAllDataToGs::m_onedata() const {
  return m_onedata_;
}
inline ::google::protobuf::RepeatedPtrField< ::SM_OneData_Proto >*
SM_SendAllDataToGs::mutable_m_onedata() {
  return &m_onedata_;
}

// -------------------------------------------------------------------

// SM_OneData_Proto

// optional int32 m_roleid = 1;
inline bool SM_OneData_Proto::has_m_roleid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void SM_OneData_Proto::set_has_m_roleid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void SM_OneData_Proto::clear_has_m_roleid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void SM_OneData_Proto::clear_m_roleid() {
  m_roleid_ = 0;
  clear_has_m_roleid();
}
inline ::google::protobuf::int32 SM_OneData_Proto::m_roleid() const {
  return m_roleid_;
}
inline void SM_OneData_Proto::set_m_roleid(::google::protobuf::int32 value) {
  set_has_m_roleid();
  m_roleid_ = value;
}

// optional int32 m_nextroleid = 2;
inline bool SM_OneData_Proto::has_m_nextroleid() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void SM_OneData_Proto::set_has_m_nextroleid() {
  _has_bits_[0] |= 0x00000002u;
}
inline void SM_OneData_Proto::clear_has_m_nextroleid() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void SM_OneData_Proto::clear_m_nextroleid() {
  m_nextroleid_ = 0;
  clear_has_m_nextroleid();
}
inline ::google::protobuf::int32 SM_OneData_Proto::m_nextroleid() const {
  return m_nextroleid_;
}
inline void SM_OneData_Proto::set_m_nextroleid(::google::protobuf::int32 value) {
  set_has_m_nextroleid();
  m_nextroleid_ = value;
}

// optional int32 m_level = 5;
inline bool SM_OneData_Proto::has_m_level() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void SM_OneData_Proto::set_has_m_level() {
  _has_bits_[0] |= 0x00000004u;
}
inline void SM_OneData_Proto::clear_has_m_level() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void SM_OneData_Proto::clear_m_level() {
  m_level_ = 0;
  clear_has_m_level();
}
inline ::google::protobuf::int32 SM_OneData_Proto::m_level() const {
  return m_level_;
}
inline void SM_OneData_Proto::set_m_level(::google::protobuf::int32 value) {
  set_has_m_level();
  m_level_ = value;
}

// optional int32 m_timenow = 7;
inline bool SM_OneData_Proto::has_m_timenow() const {
  return (_has_bits_[0] & 0x00000008u) != 0;
}
inline void SM_OneData_Proto::set_has_m_timenow() {
  _has_bits_[0] |= 0x00000008u;
}
inline void SM_OneData_Proto::clear_has_m_timenow() {
  _has_bits_[0] &= ~0x00000008u;
}
inline void SM_OneData_Proto::clear_m_timenow() {
  m_timenow_ = 0;
  clear_has_m_timenow();
}
inline ::google::protobuf::int32 SM_OneData_Proto::m_timenow() const {
  return m_timenow_;
}
inline void SM_OneData_Proto::set_m_timenow(::google::protobuf::int32 value) {
  set_has_m_timenow();
  m_timenow_ = value;
}

// optional float m_canget = 8;
inline bool SM_OneData_Proto::has_m_canget() const {
  return (_has_bits_[0] & 0x00000010u) != 0;
}
inline void SM_OneData_Proto::set_has_m_canget() {
  _has_bits_[0] |= 0x00000010u;
}
inline void SM_OneData_Proto::clear_has_m_canget() {
  _has_bits_[0] &= ~0x00000010u;
}
inline void SM_OneData_Proto::clear_m_canget() {
  m_canget_ = 0;
  clear_has_m_canget();
}
inline float SM_OneData_Proto::m_canget() const {
  return m_canget_;
}
inline void SM_OneData_Proto::set_m_canget(float value) {
  set_has_m_canget();
  m_canget_ = value;
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

#endif  // PROTOBUF_SP_5fGeneralize_2etxt__INCLUDED
