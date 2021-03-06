// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_Astrology.txt

#ifndef PROTOBUF_SP_5fAstrology_2etxt__INCLUDED
#define PROTOBUF_SP_5fAstrology_2etxt__INCLUDED

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
void  protobuf_AddDesc_SP_5fAstrology_2etxt();
void protobuf_AssignDesc_SP_5fAstrology_2etxt();
void protobuf_ShutdownFile_SP_5fAstrology_2etxt();

class DB_AstrologyHis;
class DB_Astrology;

// ===================================================================

class DB_AstrologyHis : public ::google::protobuf::Message {
 public:
  DB_AstrologyHis();
  virtual ~DB_AstrologyHis();

  DB_AstrologyHis(const DB_AstrologyHis& from);

  inline DB_AstrologyHis& operator=(const DB_AstrologyHis& from) {
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
  static const DB_AstrologyHis& default_instance();

  void Swap(DB_AstrologyHis* other);

  // implements Message ----------------------------------------------

  DB_AstrologyHis* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const DB_AstrologyHis& from);
  void MergeFrom(const DB_AstrologyHis& from);
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

  // required int32 m_roleId = 1;
  inline bool has_m_roleid() const;
  inline void clear_m_roleid();
  static const int kMRoleIdFieldNumber = 1;
  inline ::google::protobuf::int32 m_roleid() const;
  inline void set_m_roleid(::google::protobuf::int32 value);

  // repeated .DB_Astrology m_data = 2;
  inline int m_data_size() const;
  inline void clear_m_data();
  static const int kMDataFieldNumber = 2;
  inline const ::DB_Astrology& m_data(int index) const;
  inline ::DB_Astrology* mutable_m_data(int index);
  inline ::DB_Astrology* add_m_data();
  inline const ::google::protobuf::RepeatedPtrField< ::DB_Astrology >&
      m_data() const;
  inline ::google::protobuf::RepeatedPtrField< ::DB_Astrology >*
      mutable_m_data();

  // @@protoc_insertion_point(class_scope:DB_AstrologyHis)
 private:
  inline void set_has_m_roleid();
  inline void clear_has_m_roleid();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::RepeatedPtrField< ::DB_Astrology > m_data_;
  ::google::protobuf::int32 m_roleid_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(2 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fAstrology_2etxt();
  friend void protobuf_AssignDesc_SP_5fAstrology_2etxt();
  friend void protobuf_ShutdownFile_SP_5fAstrology_2etxt();

  void InitAsDefaultInstance();
  static DB_AstrologyHis* default_instance_;
};
// -------------------------------------------------------------------

class DB_Astrology : public ::google::protobuf::Message {
 public:
  DB_Astrology();
  virtual ~DB_Astrology();

  DB_Astrology(const DB_Astrology& from);

  inline DB_Astrology& operator=(const DB_Astrology& from) {
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
  static const DB_Astrology& default_instance();

  void Swap(DB_Astrology* other);

  // implements Message ----------------------------------------------

  DB_Astrology* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const DB_Astrology& from);
  void MergeFrom(const DB_Astrology& from);
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

  // required int32 m_enumId = 1;
  inline bool has_m_enumid() const;
  inline void clear_m_enumid();
  static const int kMEnumIdFieldNumber = 1;
  inline ::google::protobuf::int32 m_enumid() const;
  inline void set_m_enumid(::google::protobuf::int32 value);

  // required int32 m_value = 2;
  inline bool has_m_value() const;
  inline void clear_m_value();
  static const int kMValueFieldNumber = 2;
  inline ::google::protobuf::int32 m_value() const;
  inline void set_m_value(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:DB_Astrology)
 private:
  inline void set_has_m_enumid();
  inline void clear_has_m_enumid();
  inline void set_has_m_value();
  inline void clear_has_m_value();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 m_enumid_;
  ::google::protobuf::int32 m_value_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(2 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fAstrology_2etxt();
  friend void protobuf_AssignDesc_SP_5fAstrology_2etxt();
  friend void protobuf_ShutdownFile_SP_5fAstrology_2etxt();

  void InitAsDefaultInstance();
  static DB_Astrology* default_instance_;
};
// ===================================================================


// ===================================================================

// DB_AstrologyHis

// required int32 m_roleId = 1;
inline bool DB_AstrologyHis::has_m_roleid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void DB_AstrologyHis::set_has_m_roleid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void DB_AstrologyHis::clear_has_m_roleid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void DB_AstrologyHis::clear_m_roleid() {
  m_roleid_ = 0;
  clear_has_m_roleid();
}
inline ::google::protobuf::int32 DB_AstrologyHis::m_roleid() const {
  return m_roleid_;
}
inline void DB_AstrologyHis::set_m_roleid(::google::protobuf::int32 value) {
  set_has_m_roleid();
  m_roleid_ = value;
}

// repeated .DB_Astrology m_data = 2;
inline int DB_AstrologyHis::m_data_size() const {
  return m_data_.size();
}
inline void DB_AstrologyHis::clear_m_data() {
  m_data_.Clear();
}
inline const ::DB_Astrology& DB_AstrologyHis::m_data(int index) const {
  return m_data_.Get(index);
}
inline ::DB_Astrology* DB_AstrologyHis::mutable_m_data(int index) {
  return m_data_.Mutable(index);
}
inline ::DB_Astrology* DB_AstrologyHis::add_m_data() {
  return m_data_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::DB_Astrology >&
DB_AstrologyHis::m_data() const {
  return m_data_;
}
inline ::google::protobuf::RepeatedPtrField< ::DB_Astrology >*
DB_AstrologyHis::mutable_m_data() {
  return &m_data_;
}

// -------------------------------------------------------------------

// DB_Astrology

// required int32 m_enumId = 1;
inline bool DB_Astrology::has_m_enumid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void DB_Astrology::set_has_m_enumid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void DB_Astrology::clear_has_m_enumid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void DB_Astrology::clear_m_enumid() {
  m_enumid_ = 0;
  clear_has_m_enumid();
}
inline ::google::protobuf::int32 DB_Astrology::m_enumid() const {
  return m_enumid_;
}
inline void DB_Astrology::set_m_enumid(::google::protobuf::int32 value) {
  set_has_m_enumid();
  m_enumid_ = value;
}

// required int32 m_value = 2;
inline bool DB_Astrology::has_m_value() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void DB_Astrology::set_has_m_value() {
  _has_bits_[0] |= 0x00000002u;
}
inline void DB_Astrology::clear_has_m_value() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void DB_Astrology::clear_m_value() {
  m_value_ = 0;
  clear_has_m_value();
}
inline ::google::protobuf::int32 DB_Astrology::m_value() const {
  return m_value_;
}
inline void DB_Astrology::set_m_value(::google::protobuf::int32 value) {
  set_has_m_value();
  m_value_ = value;
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

#endif  // PROTOBUF_SP_5fAstrology_2etxt__INCLUDED
