// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: astrology.txt

#ifndef PROTOBUF_astrology_2etxt__INCLUDED
#define PROTOBUF_astrology_2etxt__INCLUDED

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
void  protobuf_AddDesc_astrology_2etxt();
void protobuf_AssignDesc_astrology_2etxt();
void protobuf_ShutdownFile_astrology_2etxt();

class GM_AstrologyHis;
class GM_Astrology;

// ===================================================================

class GM_AstrologyHis : public ::google::protobuf::Message {
 public:
  GM_AstrologyHis();
  virtual ~GM_AstrologyHis();

  GM_AstrologyHis(const GM_AstrologyHis& from);

  inline GM_AstrologyHis& operator=(const GM_AstrologyHis& from) {
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
  static const GM_AstrologyHis& default_instance();

  void Swap(GM_AstrologyHis* other);

  // implements Message ----------------------------------------------

  GM_AstrologyHis* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_AstrologyHis& from);
  void MergeFrom(const GM_AstrologyHis& from);
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

  // required int32 m_hisStar = 1;
  inline bool has_m_hisstar() const;
  inline void clear_m_hisstar();
  static const int kMHisStarFieldNumber = 1;
  inline ::google::protobuf::int32 m_hisstar() const;
  inline void set_m_hisstar(::google::protobuf::int32 value);

  // optional int32 m_own = 2;
  inline bool has_m_own() const;
  inline void clear_m_own();
  static const int kMOwnFieldNumber = 2;
  inline ::google::protobuf::int32 m_own() const;
  inline void set_m_own(::google::protobuf::int32 value);

  // repeated .GM_Astrology m_data = 3;
  inline int m_data_size() const;
  inline void clear_m_data();
  static const int kMDataFieldNumber = 3;
  inline const ::GM_Astrology& m_data(int index) const;
  inline ::GM_Astrology* mutable_m_data(int index);
  inline ::GM_Astrology* add_m_data();
  inline const ::google::protobuf::RepeatedPtrField< ::GM_Astrology >&
      m_data() const;
  inline ::google::protobuf::RepeatedPtrField< ::GM_Astrology >*
      mutable_m_data();

  // @@protoc_insertion_point(class_scope:GM_AstrologyHis)
 private:
  inline void set_has_m_hisstar();
  inline void clear_has_m_hisstar();
  inline void set_has_m_own();
  inline void clear_has_m_own();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 m_hisstar_;
  ::google::protobuf::int32 m_own_;
  ::google::protobuf::RepeatedPtrField< ::GM_Astrology > m_data_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(3 + 31) / 32];

  friend void  protobuf_AddDesc_astrology_2etxt();
  friend void protobuf_AssignDesc_astrology_2etxt();
  friend void protobuf_ShutdownFile_astrology_2etxt();

  void InitAsDefaultInstance();
  static GM_AstrologyHis* default_instance_;
};
// -------------------------------------------------------------------

class GM_Astrology : public ::google::protobuf::Message {
 public:
  GM_Astrology();
  virtual ~GM_Astrology();

  GM_Astrology(const GM_Astrology& from);

  inline GM_Astrology& operator=(const GM_Astrology& from) {
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
  static const GM_Astrology& default_instance();

  void Swap(GM_Astrology* other);

  // implements Message ----------------------------------------------

  GM_Astrology* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_Astrology& from);
  void MergeFrom(const GM_Astrology& from);
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

  // optional int32 m_enumtype = 2;
  inline bool has_m_enumtype() const;
  inline void clear_m_enumtype();
  static const int kMEnumtypeFieldNumber = 2;
  inline ::google::protobuf::int32 m_enumtype() const;
  inline void set_m_enumtype(::google::protobuf::int32 value);

  // optional int32 m_value = 3;
  inline bool has_m_value() const;
  inline void clear_m_value();
  static const int kMValueFieldNumber = 3;
  inline ::google::protobuf::int32 m_value() const;
  inline void set_m_value(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:GM_Astrology)
 private:
  inline void set_has_m_enumid();
  inline void clear_has_m_enumid();
  inline void set_has_m_enumtype();
  inline void clear_has_m_enumtype();
  inline void set_has_m_value();
  inline void clear_has_m_value();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 m_enumid_;
  ::google::protobuf::int32 m_enumtype_;
  ::google::protobuf::int32 m_value_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(3 + 31) / 32];

  friend void  protobuf_AddDesc_astrology_2etxt();
  friend void protobuf_AssignDesc_astrology_2etxt();
  friend void protobuf_ShutdownFile_astrology_2etxt();

  void InitAsDefaultInstance();
  static GM_Astrology* default_instance_;
};
// ===================================================================


// ===================================================================

// GM_AstrologyHis

// required int32 m_hisStar = 1;
inline bool GM_AstrologyHis::has_m_hisstar() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_AstrologyHis::set_has_m_hisstar() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_AstrologyHis::clear_has_m_hisstar() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_AstrologyHis::clear_m_hisstar() {
  m_hisstar_ = 0;
  clear_has_m_hisstar();
}
inline ::google::protobuf::int32 GM_AstrologyHis::m_hisstar() const {
  return m_hisstar_;
}
inline void GM_AstrologyHis::set_m_hisstar(::google::protobuf::int32 value) {
  set_has_m_hisstar();
  m_hisstar_ = value;
}

// optional int32 m_own = 2;
inline bool GM_AstrologyHis::has_m_own() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void GM_AstrologyHis::set_has_m_own() {
  _has_bits_[0] |= 0x00000002u;
}
inline void GM_AstrologyHis::clear_has_m_own() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void GM_AstrologyHis::clear_m_own() {
  m_own_ = 0;
  clear_has_m_own();
}
inline ::google::protobuf::int32 GM_AstrologyHis::m_own() const {
  return m_own_;
}
inline void GM_AstrologyHis::set_m_own(::google::protobuf::int32 value) {
  set_has_m_own();
  m_own_ = value;
}

// repeated .GM_Astrology m_data = 3;
inline int GM_AstrologyHis::m_data_size() const {
  return m_data_.size();
}
inline void GM_AstrologyHis::clear_m_data() {
  m_data_.Clear();
}
inline const ::GM_Astrology& GM_AstrologyHis::m_data(int index) const {
  return m_data_.Get(index);
}
inline ::GM_Astrology* GM_AstrologyHis::mutable_m_data(int index) {
  return m_data_.Mutable(index);
}
inline ::GM_Astrology* GM_AstrologyHis::add_m_data() {
  return m_data_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::GM_Astrology >&
GM_AstrologyHis::m_data() const {
  return m_data_;
}
inline ::google::protobuf::RepeatedPtrField< ::GM_Astrology >*
GM_AstrologyHis::mutable_m_data() {
  return &m_data_;
}

// -------------------------------------------------------------------

// GM_Astrology

// required int32 m_enumId = 1;
inline bool GM_Astrology::has_m_enumid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_Astrology::set_has_m_enumid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_Astrology::clear_has_m_enumid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_Astrology::clear_m_enumid() {
  m_enumid_ = 0;
  clear_has_m_enumid();
}
inline ::google::protobuf::int32 GM_Astrology::m_enumid() const {
  return m_enumid_;
}
inline void GM_Astrology::set_m_enumid(::google::protobuf::int32 value) {
  set_has_m_enumid();
  m_enumid_ = value;
}

// optional int32 m_enumtype = 2;
inline bool GM_Astrology::has_m_enumtype() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void GM_Astrology::set_has_m_enumtype() {
  _has_bits_[0] |= 0x00000002u;
}
inline void GM_Astrology::clear_has_m_enumtype() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void GM_Astrology::clear_m_enumtype() {
  m_enumtype_ = 0;
  clear_has_m_enumtype();
}
inline ::google::protobuf::int32 GM_Astrology::m_enumtype() const {
  return m_enumtype_;
}
inline void GM_Astrology::set_m_enumtype(::google::protobuf::int32 value) {
  set_has_m_enumtype();
  m_enumtype_ = value;
}

// optional int32 m_value = 3;
inline bool GM_Astrology::has_m_value() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void GM_Astrology::set_has_m_value() {
  _has_bits_[0] |= 0x00000004u;
}
inline void GM_Astrology::clear_has_m_value() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void GM_Astrology::clear_m_value() {
  m_value_ = 0;
  clear_has_m_value();
}
inline ::google::protobuf::int32 GM_Astrology::m_value() const {
  return m_value_;
}
inline void GM_Astrology::set_m_value(::google::protobuf::int32 value) {
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

#endif  // PROTOBUF_astrology_2etxt__INCLUDED
