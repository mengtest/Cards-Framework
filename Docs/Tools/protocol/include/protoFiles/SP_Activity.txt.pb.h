// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_Activity.txt

#ifndef PROTOBUF_SP_5fActivity_2etxt__INCLUDED
#define PROTOBUF_SP_5fActivity_2etxt__INCLUDED

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
void  protobuf_AddDesc_SP_5fActivity_2etxt();
void protobuf_AssignDesc_SP_5fActivity_2etxt();
void protobuf_ShutdownFile_SP_5fActivity_2etxt();

class GM_ChargeActivityData;
class GM_ChargeActivityDataList;

// ===================================================================

class GM_ChargeActivityData : public ::google::protobuf::Message {
 public:
  GM_ChargeActivityData();
  virtual ~GM_ChargeActivityData();

  GM_ChargeActivityData(const GM_ChargeActivityData& from);

  inline GM_ChargeActivityData& operator=(const GM_ChargeActivityData& from) {
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
  static const GM_ChargeActivityData& default_instance();

  void Swap(GM_ChargeActivityData* other);

  // implements Message ----------------------------------------------

  GM_ChargeActivityData* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_ChargeActivityData& from);
  void MergeFrom(const GM_ChargeActivityData& from);
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

  // required int64 gmid = 1;
  inline bool has_gmid() const;
  inline void clear_gmid();
  static const int kGmidFieldNumber = 1;
  inline ::google::protobuf::int64 gmid() const;
  inline void set_gmid(::google::protobuf::int64 value);

  // required int32 roleid = 2;
  inline bool has_roleid() const;
  inline void clear_roleid();
  static const int kRoleidFieldNumber = 2;
  inline ::google::protobuf::int32 roleid() const;
  inline void set_roleid(::google::protobuf::int32 value);

  // required int32 chargecount = 3;
  inline bool has_chargecount() const;
  inline void clear_chargecount();
  static const int kChargecountFieldNumber = 3;
  inline ::google::protobuf::int32 chargecount() const;
  inline void set_chargecount(::google::protobuf::int32 value);

  // required int32 giftbagid = 4;
  inline bool has_giftbagid() const;
  inline void clear_giftbagid();
  static const int kGiftbagidFieldNumber = 4;
  inline ::google::protobuf::int32 giftbagid() const;
  inline void set_giftbagid(::google::protobuf::int32 value);

  // required int32 kind = 5;
  inline bool has_kind() const;
  inline void clear_kind();
  static const int kKindFieldNumber = 5;
  inline ::google::protobuf::int32 kind() const;
  inline void set_kind(::google::protobuf::int32 value);

  // required int32 status = 6;
  inline bool has_status() const;
  inline void clear_status();
  static const int kStatusFieldNumber = 6;
  inline ::google::protobuf::int32 status() const;
  inline void set_status(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:GM_ChargeActivityData)
 private:
  inline void set_has_gmid();
  inline void clear_has_gmid();
  inline void set_has_roleid();
  inline void clear_has_roleid();
  inline void set_has_chargecount();
  inline void clear_has_chargecount();
  inline void set_has_giftbagid();
  inline void clear_has_giftbagid();
  inline void set_has_kind();
  inline void clear_has_kind();
  inline void set_has_status();
  inline void clear_has_status();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int64 gmid_;
  ::google::protobuf::int32 roleid_;
  ::google::protobuf::int32 chargecount_;
  ::google::protobuf::int32 giftbagid_;
  ::google::protobuf::int32 kind_;
  ::google::protobuf::int32 status_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(6 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fActivity_2etxt();
  friend void protobuf_AssignDesc_SP_5fActivity_2etxt();
  friend void protobuf_ShutdownFile_SP_5fActivity_2etxt();

  void InitAsDefaultInstance();
  static GM_ChargeActivityData* default_instance_;
};
// -------------------------------------------------------------------

class GM_ChargeActivityDataList : public ::google::protobuf::Message {
 public:
  GM_ChargeActivityDataList();
  virtual ~GM_ChargeActivityDataList();

  GM_ChargeActivityDataList(const GM_ChargeActivityDataList& from);

  inline GM_ChargeActivityDataList& operator=(const GM_ChargeActivityDataList& from) {
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
  static const GM_ChargeActivityDataList& default_instance();

  void Swap(GM_ChargeActivityDataList* other);

  // implements Message ----------------------------------------------

  GM_ChargeActivityDataList* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_ChargeActivityDataList& from);
  void MergeFrom(const GM_ChargeActivityDataList& from);
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

  // required int32 count = 1;
  inline bool has_count() const;
  inline void clear_count();
  static const int kCountFieldNumber = 1;
  inline ::google::protobuf::int32 count() const;
  inline void set_count(::google::protobuf::int32 value);

  // repeated .GM_ChargeActivityData datalist = 2;
  inline int datalist_size() const;
  inline void clear_datalist();
  static const int kDatalistFieldNumber = 2;
  inline const ::GM_ChargeActivityData& datalist(int index) const;
  inline ::GM_ChargeActivityData* mutable_datalist(int index);
  inline ::GM_ChargeActivityData* add_datalist();
  inline const ::google::protobuf::RepeatedPtrField< ::GM_ChargeActivityData >&
      datalist() const;
  inline ::google::protobuf::RepeatedPtrField< ::GM_ChargeActivityData >*
      mutable_datalist();

  // @@protoc_insertion_point(class_scope:GM_ChargeActivityDataList)
 private:
  inline void set_has_count();
  inline void clear_has_count();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::RepeatedPtrField< ::GM_ChargeActivityData > datalist_;
  ::google::protobuf::int32 count_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(2 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fActivity_2etxt();
  friend void protobuf_AssignDesc_SP_5fActivity_2etxt();
  friend void protobuf_ShutdownFile_SP_5fActivity_2etxt();

  void InitAsDefaultInstance();
  static GM_ChargeActivityDataList* default_instance_;
};
// ===================================================================


// ===================================================================

// GM_ChargeActivityData

// required int64 gmid = 1;
inline bool GM_ChargeActivityData::has_gmid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_ChargeActivityData::set_has_gmid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_ChargeActivityData::clear_has_gmid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_ChargeActivityData::clear_gmid() {
  gmid_ = GOOGLE_LONGLONG(0);
  clear_has_gmid();
}
inline ::google::protobuf::int64 GM_ChargeActivityData::gmid() const {
  return gmid_;
}
inline void GM_ChargeActivityData::set_gmid(::google::protobuf::int64 value) {
  set_has_gmid();
  gmid_ = value;
}

// required int32 roleid = 2;
inline bool GM_ChargeActivityData::has_roleid() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void GM_ChargeActivityData::set_has_roleid() {
  _has_bits_[0] |= 0x00000002u;
}
inline void GM_ChargeActivityData::clear_has_roleid() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void GM_ChargeActivityData::clear_roleid() {
  roleid_ = 0;
  clear_has_roleid();
}
inline ::google::protobuf::int32 GM_ChargeActivityData::roleid() const {
  return roleid_;
}
inline void GM_ChargeActivityData::set_roleid(::google::protobuf::int32 value) {
  set_has_roleid();
  roleid_ = value;
}

// required int32 chargecount = 3;
inline bool GM_ChargeActivityData::has_chargecount() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void GM_ChargeActivityData::set_has_chargecount() {
  _has_bits_[0] |= 0x00000004u;
}
inline void GM_ChargeActivityData::clear_has_chargecount() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void GM_ChargeActivityData::clear_chargecount() {
  chargecount_ = 0;
  clear_has_chargecount();
}
inline ::google::protobuf::int32 GM_ChargeActivityData::chargecount() const {
  return chargecount_;
}
inline void GM_ChargeActivityData::set_chargecount(::google::protobuf::int32 value) {
  set_has_chargecount();
  chargecount_ = value;
}

// required int32 giftbagid = 4;
inline bool GM_ChargeActivityData::has_giftbagid() const {
  return (_has_bits_[0] & 0x00000008u) != 0;
}
inline void GM_ChargeActivityData::set_has_giftbagid() {
  _has_bits_[0] |= 0x00000008u;
}
inline void GM_ChargeActivityData::clear_has_giftbagid() {
  _has_bits_[0] &= ~0x00000008u;
}
inline void GM_ChargeActivityData::clear_giftbagid() {
  giftbagid_ = 0;
  clear_has_giftbagid();
}
inline ::google::protobuf::int32 GM_ChargeActivityData::giftbagid() const {
  return giftbagid_;
}
inline void GM_ChargeActivityData::set_giftbagid(::google::protobuf::int32 value) {
  set_has_giftbagid();
  giftbagid_ = value;
}

// required int32 kind = 5;
inline bool GM_ChargeActivityData::has_kind() const {
  return (_has_bits_[0] & 0x00000010u) != 0;
}
inline void GM_ChargeActivityData::set_has_kind() {
  _has_bits_[0] |= 0x00000010u;
}
inline void GM_ChargeActivityData::clear_has_kind() {
  _has_bits_[0] &= ~0x00000010u;
}
inline void GM_ChargeActivityData::clear_kind() {
  kind_ = 0;
  clear_has_kind();
}
inline ::google::protobuf::int32 GM_ChargeActivityData::kind() const {
  return kind_;
}
inline void GM_ChargeActivityData::set_kind(::google::protobuf::int32 value) {
  set_has_kind();
  kind_ = value;
}

// required int32 status = 6;
inline bool GM_ChargeActivityData::has_status() const {
  return (_has_bits_[0] & 0x00000020u) != 0;
}
inline void GM_ChargeActivityData::set_has_status() {
  _has_bits_[0] |= 0x00000020u;
}
inline void GM_ChargeActivityData::clear_has_status() {
  _has_bits_[0] &= ~0x00000020u;
}
inline void GM_ChargeActivityData::clear_status() {
  status_ = 0;
  clear_has_status();
}
inline ::google::protobuf::int32 GM_ChargeActivityData::status() const {
  return status_;
}
inline void GM_ChargeActivityData::set_status(::google::protobuf::int32 value) {
  set_has_status();
  status_ = value;
}

// -------------------------------------------------------------------

// GM_ChargeActivityDataList

// required int32 count = 1;
inline bool GM_ChargeActivityDataList::has_count() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_ChargeActivityDataList::set_has_count() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_ChargeActivityDataList::clear_has_count() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_ChargeActivityDataList::clear_count() {
  count_ = 0;
  clear_has_count();
}
inline ::google::protobuf::int32 GM_ChargeActivityDataList::count() const {
  return count_;
}
inline void GM_ChargeActivityDataList::set_count(::google::protobuf::int32 value) {
  set_has_count();
  count_ = value;
}

// repeated .GM_ChargeActivityData datalist = 2;
inline int GM_ChargeActivityDataList::datalist_size() const {
  return datalist_.size();
}
inline void GM_ChargeActivityDataList::clear_datalist() {
  datalist_.Clear();
}
inline const ::GM_ChargeActivityData& GM_ChargeActivityDataList::datalist(int index) const {
  return datalist_.Get(index);
}
inline ::GM_ChargeActivityData* GM_ChargeActivityDataList::mutable_datalist(int index) {
  return datalist_.Mutable(index);
}
inline ::GM_ChargeActivityData* GM_ChargeActivityDataList::add_datalist() {
  return datalist_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::GM_ChargeActivityData >&
GM_ChargeActivityDataList::datalist() const {
  return datalist_;
}
inline ::google::protobuf::RepeatedPtrField< ::GM_ChargeActivityData >*
GM_ChargeActivityDataList::mutable_datalist() {
  return &datalist_;
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

#endif  // PROTOBUF_SP_5fActivity_2etxt__INCLUDED
