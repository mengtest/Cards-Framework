// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_Marry.txt

#ifndef PROTOBUF_SP_5fMarry_2etxt__INCLUDED
#define PROTOBUF_SP_5fMarry_2etxt__INCLUDED

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
void  protobuf_AddDesc_SP_5fMarry_2etxt();
void protobuf_AssignDesc_SP_5fMarry_2etxt();
void protobuf_ShutdownFile_SP_5fMarry_2etxt();

class DB_MarryDataRequest;
class DB_ConTreeDataReturn;
class ConTreeData;
class DB_CoupleDataReturn;

// ===================================================================

class DB_MarryDataRequest : public ::google::protobuf::Message {
 public:
  DB_MarryDataRequest();
  virtual ~DB_MarryDataRequest();

  DB_MarryDataRequest(const DB_MarryDataRequest& from);

  inline DB_MarryDataRequest& operator=(const DB_MarryDataRequest& from) {
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
  static const DB_MarryDataRequest& default_instance();

  void Swap(DB_MarryDataRequest* other);

  // implements Message ----------------------------------------------

  DB_MarryDataRequest* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const DB_MarryDataRequest& from);
  void MergeFrom(const DB_MarryDataRequest& from);
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

  // @@protoc_insertion_point(class_scope:DB_MarryDataRequest)
 private:
  inline void set_has_m_roleid();
  inline void clear_has_m_roleid();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 m_roleid_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(1 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fMarry_2etxt();
  friend void protobuf_AssignDesc_SP_5fMarry_2etxt();
  friend void protobuf_ShutdownFile_SP_5fMarry_2etxt();

  void InitAsDefaultInstance();
  static DB_MarryDataRequest* default_instance_;
};
// -------------------------------------------------------------------

class DB_ConTreeDataReturn : public ::google::protobuf::Message {
 public:
  DB_ConTreeDataReturn();
  virtual ~DB_ConTreeDataReturn();

  DB_ConTreeDataReturn(const DB_ConTreeDataReturn& from);

  inline DB_ConTreeDataReturn& operator=(const DB_ConTreeDataReturn& from) {
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
  static const DB_ConTreeDataReturn& default_instance();

  void Swap(DB_ConTreeDataReturn* other);

  // implements Message ----------------------------------------------

  DB_ConTreeDataReturn* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const DB_ConTreeDataReturn& from);
  void MergeFrom(const DB_ConTreeDataReturn& from);
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

  // required int64 m_count = 1;
  inline bool has_m_count() const;
  inline void clear_m_count();
  static const int kMCountFieldNumber = 1;
  inline ::google::protobuf::int64 m_count() const;
  inline void set_m_count(::google::protobuf::int64 value);

  // repeated .ConTreeData item = 2;
  inline int item_size() const;
  inline void clear_item();
  static const int kItemFieldNumber = 2;
  inline const ::ConTreeData& item(int index) const;
  inline ::ConTreeData* mutable_item(int index);
  inline ::ConTreeData* add_item();
  inline const ::google::protobuf::RepeatedPtrField< ::ConTreeData >&
      item() const;
  inline ::google::protobuf::RepeatedPtrField< ::ConTreeData >*
      mutable_item();

  // @@protoc_insertion_point(class_scope:DB_ConTreeDataReturn)
 private:
  inline void set_has_m_count();
  inline void clear_has_m_count();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int64 m_count_;
  ::google::protobuf::RepeatedPtrField< ::ConTreeData > item_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(2 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fMarry_2etxt();
  friend void protobuf_AssignDesc_SP_5fMarry_2etxt();
  friend void protobuf_ShutdownFile_SP_5fMarry_2etxt();

  void InitAsDefaultInstance();
  static DB_ConTreeDataReturn* default_instance_;
};
// -------------------------------------------------------------------

class ConTreeData : public ::google::protobuf::Message {
 public:
  ConTreeData();
  virtual ~ConTreeData();

  ConTreeData(const ConTreeData& from);

  inline ConTreeData& operator=(const ConTreeData& from) {
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
  static const ConTreeData& default_instance();

  void Swap(ConTreeData* other);

  // implements Message ----------------------------------------------

  ConTreeData* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const ConTreeData& from);
  void MergeFrom(const ConTreeData& from);
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

  // required int32 treelv = 2;
  inline bool has_treelv() const;
  inline void clear_treelv();
  static const int kTreelvFieldNumber = 2;
  inline ::google::protobuf::int32 treelv() const;
  inline void set_treelv(::google::protobuf::int32 value);

  // required int32 treeexp = 3;
  inline bool has_treeexp() const;
  inline void clear_treeexp();
  static const int kTreeexpFieldNumber = 3;
  inline ::google::protobuf::int32 treeexp() const;
  inline void set_treeexp(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:ConTreeData)
 private:
  inline void set_has_gmid();
  inline void clear_has_gmid();
  inline void set_has_treelv();
  inline void clear_has_treelv();
  inline void set_has_treeexp();
  inline void clear_has_treeexp();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int64 gmid_;
  ::google::protobuf::int32 treelv_;
  ::google::protobuf::int32 treeexp_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(3 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fMarry_2etxt();
  friend void protobuf_AssignDesc_SP_5fMarry_2etxt();
  friend void protobuf_ShutdownFile_SP_5fMarry_2etxt();

  void InitAsDefaultInstance();
  static ConTreeData* default_instance_;
};
// -------------------------------------------------------------------

class DB_CoupleDataReturn : public ::google::protobuf::Message {
 public:
  DB_CoupleDataReturn();
  virtual ~DB_CoupleDataReturn();

  DB_CoupleDataReturn(const DB_CoupleDataReturn& from);

  inline DB_CoupleDataReturn& operator=(const DB_CoupleDataReturn& from) {
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
  static const DB_CoupleDataReturn& default_instance();

  void Swap(DB_CoupleDataReturn* other);

  // implements Message ----------------------------------------------

  DB_CoupleDataReturn* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const DB_CoupleDataReturn& from);
  void MergeFrom(const DB_CoupleDataReturn& from);
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

  // required int32 roleid = 1;
  inline bool has_roleid() const;
  inline void clear_roleid();
  static const int kRoleidFieldNumber = 1;
  inline ::google::protobuf::int32 roleid() const;
  inline void set_roleid(::google::protobuf::int32 value);

  // optional int64 tree_gmid = 2;
  inline bool has_tree_gmid() const;
  inline void clear_tree_gmid();
  static const int kTreeGmidFieldNumber = 2;
  inline ::google::protobuf::int64 tree_gmid() const;
  inline void set_tree_gmid(::google::protobuf::int64 value);

  // optional int32 marrytype = 3;
  inline bool has_marrytype() const;
  inline void clear_marrytype();
  static const int kMarrytypeFieldNumber = 3;
  inline ::google::protobuf::int32 marrytype() const;
  inline void set_marrytype(::google::protobuf::int32 value);

  // optional int32 marriagetime = 4;
  inline bool has_marriagetime() const;
  inline void clear_marriagetime();
  static const int kMarriagetimeFieldNumber = 4;
  inline ::google::protobuf::int32 marriagetime() const;
  inline void set_marriagetime(::google::protobuf::int32 value);

  // optional int32 lastgettime = 5;
  inline bool has_lastgettime() const;
  inline void clear_lastgettime();
  static const int kLastgettimeFieldNumber = 5;
  inline ::google::protobuf::int32 lastgettime() const;
  inline void set_lastgettime(::google::protobuf::int32 value);

  // optional int32 divorcetime = 6;
  inline bool has_divorcetime() const;
  inline void clear_divorcetime();
  static const int kDivorcetimeFieldNumber = 6;
  inline ::google::protobuf::int32 divorcetime() const;
  inline void set_divorcetime(::google::protobuf::int32 value);

  // optional int32 marrystate = 7;
  inline bool has_marrystate() const;
  inline void clear_marrystate();
  static const int kMarrystateFieldNumber = 7;
  inline ::google::protobuf::int32 marrystate() const;
  inline void set_marrystate(::google::protobuf::int32 value);

  // optional int32 ordertime = 8;
  inline bool has_ordertime() const;
  inline void clear_ordertime();
  static const int kOrdertimeFieldNumber = 8;
  inline ::google::protobuf::int32 ordertime() const;
  inline void set_ordertime(::google::protobuf::int32 value);

  // optional int32 ordercount = 9;
  inline bool has_ordercount() const;
  inline void clear_ordercount();
  static const int kOrdercountFieldNumber = 9;
  inline ::google::protobuf::int32 ordercount() const;
  inline void set_ordercount(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:DB_CoupleDataReturn)
 private:
  inline void set_has_roleid();
  inline void clear_has_roleid();
  inline void set_has_tree_gmid();
  inline void clear_has_tree_gmid();
  inline void set_has_marrytype();
  inline void clear_has_marrytype();
  inline void set_has_marriagetime();
  inline void clear_has_marriagetime();
  inline void set_has_lastgettime();
  inline void clear_has_lastgettime();
  inline void set_has_divorcetime();
  inline void clear_has_divorcetime();
  inline void set_has_marrystate();
  inline void clear_has_marrystate();
  inline void set_has_ordertime();
  inline void clear_has_ordertime();
  inline void set_has_ordercount();
  inline void clear_has_ordercount();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int64 tree_gmid_;
  ::google::protobuf::int32 roleid_;
  ::google::protobuf::int32 marrytype_;
  ::google::protobuf::int32 marriagetime_;
  ::google::protobuf::int32 lastgettime_;
  ::google::protobuf::int32 divorcetime_;
  ::google::protobuf::int32 marrystate_;
  ::google::protobuf::int32 ordertime_;
  ::google::protobuf::int32 ordercount_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(9 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fMarry_2etxt();
  friend void protobuf_AssignDesc_SP_5fMarry_2etxt();
  friend void protobuf_ShutdownFile_SP_5fMarry_2etxt();

  void InitAsDefaultInstance();
  static DB_CoupleDataReturn* default_instance_;
};
// ===================================================================


// ===================================================================

// DB_MarryDataRequest

// required int32 m_roleId = 1;
inline bool DB_MarryDataRequest::has_m_roleid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void DB_MarryDataRequest::set_has_m_roleid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void DB_MarryDataRequest::clear_has_m_roleid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void DB_MarryDataRequest::clear_m_roleid() {
  m_roleid_ = 0;
  clear_has_m_roleid();
}
inline ::google::protobuf::int32 DB_MarryDataRequest::m_roleid() const {
  return m_roleid_;
}
inline void DB_MarryDataRequest::set_m_roleid(::google::protobuf::int32 value) {
  set_has_m_roleid();
  m_roleid_ = value;
}

// -------------------------------------------------------------------

// DB_ConTreeDataReturn

// required int64 m_count = 1;
inline bool DB_ConTreeDataReturn::has_m_count() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void DB_ConTreeDataReturn::set_has_m_count() {
  _has_bits_[0] |= 0x00000001u;
}
inline void DB_ConTreeDataReturn::clear_has_m_count() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void DB_ConTreeDataReturn::clear_m_count() {
  m_count_ = GOOGLE_LONGLONG(0);
  clear_has_m_count();
}
inline ::google::protobuf::int64 DB_ConTreeDataReturn::m_count() const {
  return m_count_;
}
inline void DB_ConTreeDataReturn::set_m_count(::google::protobuf::int64 value) {
  set_has_m_count();
  m_count_ = value;
}

// repeated .ConTreeData item = 2;
inline int DB_ConTreeDataReturn::item_size() const {
  return item_.size();
}
inline void DB_ConTreeDataReturn::clear_item() {
  item_.Clear();
}
inline const ::ConTreeData& DB_ConTreeDataReturn::item(int index) const {
  return item_.Get(index);
}
inline ::ConTreeData* DB_ConTreeDataReturn::mutable_item(int index) {
  return item_.Mutable(index);
}
inline ::ConTreeData* DB_ConTreeDataReturn::add_item() {
  return item_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::ConTreeData >&
DB_ConTreeDataReturn::item() const {
  return item_;
}
inline ::google::protobuf::RepeatedPtrField< ::ConTreeData >*
DB_ConTreeDataReturn::mutable_item() {
  return &item_;
}

// -------------------------------------------------------------------

// ConTreeData

// required int64 gmid = 1;
inline bool ConTreeData::has_gmid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void ConTreeData::set_has_gmid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void ConTreeData::clear_has_gmid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void ConTreeData::clear_gmid() {
  gmid_ = GOOGLE_LONGLONG(0);
  clear_has_gmid();
}
inline ::google::protobuf::int64 ConTreeData::gmid() const {
  return gmid_;
}
inline void ConTreeData::set_gmid(::google::protobuf::int64 value) {
  set_has_gmid();
  gmid_ = value;
}

// required int32 treelv = 2;
inline bool ConTreeData::has_treelv() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void ConTreeData::set_has_treelv() {
  _has_bits_[0] |= 0x00000002u;
}
inline void ConTreeData::clear_has_treelv() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void ConTreeData::clear_treelv() {
  treelv_ = 0;
  clear_has_treelv();
}
inline ::google::protobuf::int32 ConTreeData::treelv() const {
  return treelv_;
}
inline void ConTreeData::set_treelv(::google::protobuf::int32 value) {
  set_has_treelv();
  treelv_ = value;
}

// required int32 treeexp = 3;
inline bool ConTreeData::has_treeexp() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void ConTreeData::set_has_treeexp() {
  _has_bits_[0] |= 0x00000004u;
}
inline void ConTreeData::clear_has_treeexp() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void ConTreeData::clear_treeexp() {
  treeexp_ = 0;
  clear_has_treeexp();
}
inline ::google::protobuf::int32 ConTreeData::treeexp() const {
  return treeexp_;
}
inline void ConTreeData::set_treeexp(::google::protobuf::int32 value) {
  set_has_treeexp();
  treeexp_ = value;
}

// -------------------------------------------------------------------

// DB_CoupleDataReturn

// required int32 roleid = 1;
inline bool DB_CoupleDataReturn::has_roleid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void DB_CoupleDataReturn::set_has_roleid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void DB_CoupleDataReturn::clear_has_roleid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void DB_CoupleDataReturn::clear_roleid() {
  roleid_ = 0;
  clear_has_roleid();
}
inline ::google::protobuf::int32 DB_CoupleDataReturn::roleid() const {
  return roleid_;
}
inline void DB_CoupleDataReturn::set_roleid(::google::protobuf::int32 value) {
  set_has_roleid();
  roleid_ = value;
}

// optional int64 tree_gmid = 2;
inline bool DB_CoupleDataReturn::has_tree_gmid() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void DB_CoupleDataReturn::set_has_tree_gmid() {
  _has_bits_[0] |= 0x00000002u;
}
inline void DB_CoupleDataReturn::clear_has_tree_gmid() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void DB_CoupleDataReturn::clear_tree_gmid() {
  tree_gmid_ = GOOGLE_LONGLONG(0);
  clear_has_tree_gmid();
}
inline ::google::protobuf::int64 DB_CoupleDataReturn::tree_gmid() const {
  return tree_gmid_;
}
inline void DB_CoupleDataReturn::set_tree_gmid(::google::protobuf::int64 value) {
  set_has_tree_gmid();
  tree_gmid_ = value;
}

// optional int32 marrytype = 3;
inline bool DB_CoupleDataReturn::has_marrytype() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void DB_CoupleDataReturn::set_has_marrytype() {
  _has_bits_[0] |= 0x00000004u;
}
inline void DB_CoupleDataReturn::clear_has_marrytype() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void DB_CoupleDataReturn::clear_marrytype() {
  marrytype_ = 0;
  clear_has_marrytype();
}
inline ::google::protobuf::int32 DB_CoupleDataReturn::marrytype() const {
  return marrytype_;
}
inline void DB_CoupleDataReturn::set_marrytype(::google::protobuf::int32 value) {
  set_has_marrytype();
  marrytype_ = value;
}

// optional int32 marriagetime = 4;
inline bool DB_CoupleDataReturn::has_marriagetime() const {
  return (_has_bits_[0] & 0x00000008u) != 0;
}
inline void DB_CoupleDataReturn::set_has_marriagetime() {
  _has_bits_[0] |= 0x00000008u;
}
inline void DB_CoupleDataReturn::clear_has_marriagetime() {
  _has_bits_[0] &= ~0x00000008u;
}
inline void DB_CoupleDataReturn::clear_marriagetime() {
  marriagetime_ = 0;
  clear_has_marriagetime();
}
inline ::google::protobuf::int32 DB_CoupleDataReturn::marriagetime() const {
  return marriagetime_;
}
inline void DB_CoupleDataReturn::set_marriagetime(::google::protobuf::int32 value) {
  set_has_marriagetime();
  marriagetime_ = value;
}

// optional int32 lastgettime = 5;
inline bool DB_CoupleDataReturn::has_lastgettime() const {
  return (_has_bits_[0] & 0x00000010u) != 0;
}
inline void DB_CoupleDataReturn::set_has_lastgettime() {
  _has_bits_[0] |= 0x00000010u;
}
inline void DB_CoupleDataReturn::clear_has_lastgettime() {
  _has_bits_[0] &= ~0x00000010u;
}
inline void DB_CoupleDataReturn::clear_lastgettime() {
  lastgettime_ = 0;
  clear_has_lastgettime();
}
inline ::google::protobuf::int32 DB_CoupleDataReturn::lastgettime() const {
  return lastgettime_;
}
inline void DB_CoupleDataReturn::set_lastgettime(::google::protobuf::int32 value) {
  set_has_lastgettime();
  lastgettime_ = value;
}

// optional int32 divorcetime = 6;
inline bool DB_CoupleDataReturn::has_divorcetime() const {
  return (_has_bits_[0] & 0x00000020u) != 0;
}
inline void DB_CoupleDataReturn::set_has_divorcetime() {
  _has_bits_[0] |= 0x00000020u;
}
inline void DB_CoupleDataReturn::clear_has_divorcetime() {
  _has_bits_[0] &= ~0x00000020u;
}
inline void DB_CoupleDataReturn::clear_divorcetime() {
  divorcetime_ = 0;
  clear_has_divorcetime();
}
inline ::google::protobuf::int32 DB_CoupleDataReturn::divorcetime() const {
  return divorcetime_;
}
inline void DB_CoupleDataReturn::set_divorcetime(::google::protobuf::int32 value) {
  set_has_divorcetime();
  divorcetime_ = value;
}

// optional int32 marrystate = 7;
inline bool DB_CoupleDataReturn::has_marrystate() const {
  return (_has_bits_[0] & 0x00000040u) != 0;
}
inline void DB_CoupleDataReturn::set_has_marrystate() {
  _has_bits_[0] |= 0x00000040u;
}
inline void DB_CoupleDataReturn::clear_has_marrystate() {
  _has_bits_[0] &= ~0x00000040u;
}
inline void DB_CoupleDataReturn::clear_marrystate() {
  marrystate_ = 0;
  clear_has_marrystate();
}
inline ::google::protobuf::int32 DB_CoupleDataReturn::marrystate() const {
  return marrystate_;
}
inline void DB_CoupleDataReturn::set_marrystate(::google::protobuf::int32 value) {
  set_has_marrystate();
  marrystate_ = value;
}

// optional int32 ordertime = 8;
inline bool DB_CoupleDataReturn::has_ordertime() const {
  return (_has_bits_[0] & 0x00000080u) != 0;
}
inline void DB_CoupleDataReturn::set_has_ordertime() {
  _has_bits_[0] |= 0x00000080u;
}
inline void DB_CoupleDataReturn::clear_has_ordertime() {
  _has_bits_[0] &= ~0x00000080u;
}
inline void DB_CoupleDataReturn::clear_ordertime() {
  ordertime_ = 0;
  clear_has_ordertime();
}
inline ::google::protobuf::int32 DB_CoupleDataReturn::ordertime() const {
  return ordertime_;
}
inline void DB_CoupleDataReturn::set_ordertime(::google::protobuf::int32 value) {
  set_has_ordertime();
  ordertime_ = value;
}

// optional int32 ordercount = 9;
inline bool DB_CoupleDataReturn::has_ordercount() const {
  return (_has_bits_[0] & 0x00000100u) != 0;
}
inline void DB_CoupleDataReturn::set_has_ordercount() {
  _has_bits_[0] |= 0x00000100u;
}
inline void DB_CoupleDataReturn::clear_has_ordercount() {
  _has_bits_[0] &= ~0x00000100u;
}
inline void DB_CoupleDataReturn::clear_ordercount() {
  ordercount_ = 0;
  clear_has_ordercount();
}
inline ::google::protobuf::int32 DB_CoupleDataReturn::ordercount() const {
  return ordercount_;
}
inline void DB_CoupleDataReturn::set_ordercount(::google::protobuf::int32 value) {
  set_has_ordercount();
  ordercount_ = value;
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

#endif  // PROTOBUF_SP_5fMarry_2etxt__INCLUDED