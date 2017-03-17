// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_Title.txt

#ifndef PROTOBUF_SP_5fTitle_2etxt__INCLUDED
#define PROTOBUF_SP_5fTitle_2etxt__INCLUDED

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
void  protobuf_AddDesc_SP_5fTitle_2etxt();
void protobuf_AssignDesc_SP_5fTitle_2etxt();
void protobuf_ShutdownFile_SP_5fTitle_2etxt();

class DB_EquipTitle;
class DB_AllTitle;
class GM_Title;
class DB_LimitTitleNotify;

// ===================================================================

class DB_EquipTitle : public ::google::protobuf::Message {
 public:
  DB_EquipTitle();
  virtual ~DB_EquipTitle();

  DB_EquipTitle(const DB_EquipTitle& from);

  inline DB_EquipTitle& operator=(const DB_EquipTitle& from) {
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
  static const DB_EquipTitle& default_instance();

  void Swap(DB_EquipTitle* other);

  // implements Message ----------------------------------------------

  DB_EquipTitle* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const DB_EquipTitle& from);
  void MergeFrom(const DB_EquipTitle& from);
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

  // repeated int32 m_equipId = 2;
  inline int m_equipid_size() const;
  inline void clear_m_equipid();
  static const int kMEquipIdFieldNumber = 2;
  inline ::google::protobuf::int32 m_equipid(int index) const;
  inline void set_m_equipid(int index, ::google::protobuf::int32 value);
  inline void add_m_equipid(::google::protobuf::int32 value);
  inline const ::google::protobuf::RepeatedField< ::google::protobuf::int32 >&
      m_equipid() const;
  inline ::google::protobuf::RepeatedField< ::google::protobuf::int32 >*
      mutable_m_equipid();

  // @@protoc_insertion_point(class_scope:DB_EquipTitle)
 private:
  inline void set_has_m_roleid();
  inline void clear_has_m_roleid();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::RepeatedField< ::google::protobuf::int32 > m_equipid_;
  ::google::protobuf::int32 m_roleid_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(2 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fTitle_2etxt();
  friend void protobuf_AssignDesc_SP_5fTitle_2etxt();
  friend void protobuf_ShutdownFile_SP_5fTitle_2etxt();

  void InitAsDefaultInstance();
  static DB_EquipTitle* default_instance_;
};
// -------------------------------------------------------------------

class DB_AllTitle : public ::google::protobuf::Message {
 public:
  DB_AllTitle();
  virtual ~DB_AllTitle();

  DB_AllTitle(const DB_AllTitle& from);

  inline DB_AllTitle& operator=(const DB_AllTitle& from) {
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
  static const DB_AllTitle& default_instance();

  void Swap(DB_AllTitle* other);

  // implements Message ----------------------------------------------

  DB_AllTitle* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const DB_AllTitle& from);
  void MergeFrom(const DB_AllTitle& from);
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

  // repeated .GM_Title m_titles = 2;
  inline int m_titles_size() const;
  inline void clear_m_titles();
  static const int kMTitlesFieldNumber = 2;
  inline const ::GM_Title& m_titles(int index) const;
  inline ::GM_Title* mutable_m_titles(int index);
  inline ::GM_Title* add_m_titles();
  inline const ::google::protobuf::RepeatedPtrField< ::GM_Title >&
      m_titles() const;
  inline ::google::protobuf::RepeatedPtrField< ::GM_Title >*
      mutable_m_titles();

  // @@protoc_insertion_point(class_scope:DB_AllTitle)
 private:
  inline void set_has_m_roleid();
  inline void clear_has_m_roleid();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::RepeatedPtrField< ::GM_Title > m_titles_;
  ::google::protobuf::int32 m_roleid_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(2 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fTitle_2etxt();
  friend void protobuf_AssignDesc_SP_5fTitle_2etxt();
  friend void protobuf_ShutdownFile_SP_5fTitle_2etxt();

  void InitAsDefaultInstance();
  static DB_AllTitle* default_instance_;
};
// -------------------------------------------------------------------

class GM_Title : public ::google::protobuf::Message {
 public:
  GM_Title();
  virtual ~GM_Title();

  GM_Title(const GM_Title& from);

  inline GM_Title& operator=(const GM_Title& from) {
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
  static const GM_Title& default_instance();

  void Swap(GM_Title* other);

  // implements Message ----------------------------------------------

  GM_Title* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_Title& from);
  void MergeFrom(const GM_Title& from);
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

  // required int32 titleId = 1;
  inline bool has_titleid() const;
  inline void clear_titleid();
  static const int kTitleIdFieldNumber = 1;
  inline ::google::protobuf::int32 titleid() const;
  inline void set_titleid(::google::protobuf::int32 value);

  // optional int32 titletype = 2;
  inline bool has_titletype() const;
  inline void clear_titletype();
  static const int kTitletypeFieldNumber = 2;
  inline ::google::protobuf::int32 titletype() const;
  inline void set_titletype(::google::protobuf::int32 value);

  // optional int32 endtime = 3;
  inline bool has_endtime() const;
  inline void clear_endtime();
  static const int kEndtimeFieldNumber = 3;
  inline ::google::protobuf::int32 endtime() const;
  inline void set_endtime(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:GM_Title)
 private:
  inline void set_has_titleid();
  inline void clear_has_titleid();
  inline void set_has_titletype();
  inline void clear_has_titletype();
  inline void set_has_endtime();
  inline void clear_has_endtime();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 titleid_;
  ::google::protobuf::int32 titletype_;
  ::google::protobuf::int32 endtime_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(3 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fTitle_2etxt();
  friend void protobuf_AssignDesc_SP_5fTitle_2etxt();
  friend void protobuf_ShutdownFile_SP_5fTitle_2etxt();

  void InitAsDefaultInstance();
  static GM_Title* default_instance_;
};
// -------------------------------------------------------------------

class DB_LimitTitleNotify : public ::google::protobuf::Message {
 public:
  DB_LimitTitleNotify();
  virtual ~DB_LimitTitleNotify();

  DB_LimitTitleNotify(const DB_LimitTitleNotify& from);

  inline DB_LimitTitleNotify& operator=(const DB_LimitTitleNotify& from) {
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
  static const DB_LimitTitleNotify& default_instance();

  void Swap(DB_LimitTitleNotify* other);

  // implements Message ----------------------------------------------

  DB_LimitTitleNotify* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const DB_LimitTitleNotify& from);
  void MergeFrom(const DB_LimitTitleNotify& from);
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

  // optional int32 m_isdelete = 2;
  inline bool has_m_isdelete() const;
  inline void clear_m_isdelete();
  static const int kMIsdeleteFieldNumber = 2;
  inline ::google::protobuf::int32 m_isdelete() const;
  inline void set_m_isdelete(::google::protobuf::int32 value);

  // optional int32 m_titleids = 3;
  inline bool has_m_titleids() const;
  inline void clear_m_titleids();
  static const int kMTitleidsFieldNumber = 3;
  inline ::google::protobuf::int32 m_titleids() const;
  inline void set_m_titleids(::google::protobuf::int32 value);

  // optional int32 m_titletype = 4;
  inline bool has_m_titletype() const;
  inline void clear_m_titletype();
  static const int kMTitletypeFieldNumber = 4;
  inline ::google::protobuf::int32 m_titletype() const;
  inline void set_m_titletype(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:DB_LimitTitleNotify)
 private:
  inline void set_has_m_roleid();
  inline void clear_has_m_roleid();
  inline void set_has_m_isdelete();
  inline void clear_has_m_isdelete();
  inline void set_has_m_titleids();
  inline void clear_has_m_titleids();
  inline void set_has_m_titletype();
  inline void clear_has_m_titletype();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 m_roleid_;
  ::google::protobuf::int32 m_isdelete_;
  ::google::protobuf::int32 m_titleids_;
  ::google::protobuf::int32 m_titletype_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(4 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fTitle_2etxt();
  friend void protobuf_AssignDesc_SP_5fTitle_2etxt();
  friend void protobuf_ShutdownFile_SP_5fTitle_2etxt();

  void InitAsDefaultInstance();
  static DB_LimitTitleNotify* default_instance_;
};
// ===================================================================


// ===================================================================

// DB_EquipTitle

// required int32 m_roleId = 1;
inline bool DB_EquipTitle::has_m_roleid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void DB_EquipTitle::set_has_m_roleid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void DB_EquipTitle::clear_has_m_roleid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void DB_EquipTitle::clear_m_roleid() {
  m_roleid_ = 0;
  clear_has_m_roleid();
}
inline ::google::protobuf::int32 DB_EquipTitle::m_roleid() const {
  return m_roleid_;
}
inline void DB_EquipTitle::set_m_roleid(::google::protobuf::int32 value) {
  set_has_m_roleid();
  m_roleid_ = value;
}

// repeated int32 m_equipId = 2;
inline int DB_EquipTitle::m_equipid_size() const {
  return m_equipid_.size();
}
inline void DB_EquipTitle::clear_m_equipid() {
  m_equipid_.Clear();
}
inline ::google::protobuf::int32 DB_EquipTitle::m_equipid(int index) const {
  return m_equipid_.Get(index);
}
inline void DB_EquipTitle::set_m_equipid(int index, ::google::protobuf::int32 value) {
  m_equipid_.Set(index, value);
}
inline void DB_EquipTitle::add_m_equipid(::google::protobuf::int32 value) {
  m_equipid_.Add(value);
}
inline const ::google::protobuf::RepeatedField< ::google::protobuf::int32 >&
DB_EquipTitle::m_equipid() const {
  return m_equipid_;
}
inline ::google::protobuf::RepeatedField< ::google::protobuf::int32 >*
DB_EquipTitle::mutable_m_equipid() {
  return &m_equipid_;
}

// -------------------------------------------------------------------

// DB_AllTitle

// required int32 m_roleId = 1;
inline bool DB_AllTitle::has_m_roleid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void DB_AllTitle::set_has_m_roleid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void DB_AllTitle::clear_has_m_roleid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void DB_AllTitle::clear_m_roleid() {
  m_roleid_ = 0;
  clear_has_m_roleid();
}
inline ::google::protobuf::int32 DB_AllTitle::m_roleid() const {
  return m_roleid_;
}
inline void DB_AllTitle::set_m_roleid(::google::protobuf::int32 value) {
  set_has_m_roleid();
  m_roleid_ = value;
}

// repeated .GM_Title m_titles = 2;
inline int DB_AllTitle::m_titles_size() const {
  return m_titles_.size();
}
inline void DB_AllTitle::clear_m_titles() {
  m_titles_.Clear();
}
inline const ::GM_Title& DB_AllTitle::m_titles(int index) const {
  return m_titles_.Get(index);
}
inline ::GM_Title* DB_AllTitle::mutable_m_titles(int index) {
  return m_titles_.Mutable(index);
}
inline ::GM_Title* DB_AllTitle::add_m_titles() {
  return m_titles_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::GM_Title >&
DB_AllTitle::m_titles() const {
  return m_titles_;
}
inline ::google::protobuf::RepeatedPtrField< ::GM_Title >*
DB_AllTitle::mutable_m_titles() {
  return &m_titles_;
}

// -------------------------------------------------------------------

// GM_Title

// required int32 titleId = 1;
inline bool GM_Title::has_titleid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_Title::set_has_titleid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_Title::clear_has_titleid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_Title::clear_titleid() {
  titleid_ = 0;
  clear_has_titleid();
}
inline ::google::protobuf::int32 GM_Title::titleid() const {
  return titleid_;
}
inline void GM_Title::set_titleid(::google::protobuf::int32 value) {
  set_has_titleid();
  titleid_ = value;
}

// optional int32 titletype = 2;
inline bool GM_Title::has_titletype() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void GM_Title::set_has_titletype() {
  _has_bits_[0] |= 0x00000002u;
}
inline void GM_Title::clear_has_titletype() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void GM_Title::clear_titletype() {
  titletype_ = 0;
  clear_has_titletype();
}
inline ::google::protobuf::int32 GM_Title::titletype() const {
  return titletype_;
}
inline void GM_Title::set_titletype(::google::protobuf::int32 value) {
  set_has_titletype();
  titletype_ = value;
}

// optional int32 endtime = 3;
inline bool GM_Title::has_endtime() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void GM_Title::set_has_endtime() {
  _has_bits_[0] |= 0x00000004u;
}
inline void GM_Title::clear_has_endtime() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void GM_Title::clear_endtime() {
  endtime_ = 0;
  clear_has_endtime();
}
inline ::google::protobuf::int32 GM_Title::endtime() const {
  return endtime_;
}
inline void GM_Title::set_endtime(::google::protobuf::int32 value) {
  set_has_endtime();
  endtime_ = value;
}

// -------------------------------------------------------------------

// DB_LimitTitleNotify

// required int32 m_roleid = 1;
inline bool DB_LimitTitleNotify::has_m_roleid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void DB_LimitTitleNotify::set_has_m_roleid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void DB_LimitTitleNotify::clear_has_m_roleid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void DB_LimitTitleNotify::clear_m_roleid() {
  m_roleid_ = 0;
  clear_has_m_roleid();
}
inline ::google::protobuf::int32 DB_LimitTitleNotify::m_roleid() const {
  return m_roleid_;
}
inline void DB_LimitTitleNotify::set_m_roleid(::google::protobuf::int32 value) {
  set_has_m_roleid();
  m_roleid_ = value;
}

// optional int32 m_isdelete = 2;
inline bool DB_LimitTitleNotify::has_m_isdelete() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void DB_LimitTitleNotify::set_has_m_isdelete() {
  _has_bits_[0] |= 0x00000002u;
}
inline void DB_LimitTitleNotify::clear_has_m_isdelete() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void DB_LimitTitleNotify::clear_m_isdelete() {
  m_isdelete_ = 0;
  clear_has_m_isdelete();
}
inline ::google::protobuf::int32 DB_LimitTitleNotify::m_isdelete() const {
  return m_isdelete_;
}
inline void DB_LimitTitleNotify::set_m_isdelete(::google::protobuf::int32 value) {
  set_has_m_isdelete();
  m_isdelete_ = value;
}

// optional int32 m_titleids = 3;
inline bool DB_LimitTitleNotify::has_m_titleids() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void DB_LimitTitleNotify::set_has_m_titleids() {
  _has_bits_[0] |= 0x00000004u;
}
inline void DB_LimitTitleNotify::clear_has_m_titleids() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void DB_LimitTitleNotify::clear_m_titleids() {
  m_titleids_ = 0;
  clear_has_m_titleids();
}
inline ::google::protobuf::int32 DB_LimitTitleNotify::m_titleids() const {
  return m_titleids_;
}
inline void DB_LimitTitleNotify::set_m_titleids(::google::protobuf::int32 value) {
  set_has_m_titleids();
  m_titleids_ = value;
}

// optional int32 m_titletype = 4;
inline bool DB_LimitTitleNotify::has_m_titletype() const {
  return (_has_bits_[0] & 0x00000008u) != 0;
}
inline void DB_LimitTitleNotify::set_has_m_titletype() {
  _has_bits_[0] |= 0x00000008u;
}
inline void DB_LimitTitleNotify::clear_has_m_titletype() {
  _has_bits_[0] &= ~0x00000008u;
}
inline void DB_LimitTitleNotify::clear_m_titletype() {
  m_titletype_ = 0;
  clear_has_m_titletype();
}
inline ::google::protobuf::int32 DB_LimitTitleNotify::m_titletype() const {
  return m_titletype_;
}
inline void DB_LimitTitleNotify::set_m_titletype(::google::protobuf::int32 value) {
  set_has_m_titletype();
  m_titletype_ = value;
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

#endif  // PROTOBUF_SP_5fTitle_2etxt__INCLUDED
