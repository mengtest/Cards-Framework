// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_gshj.txt

#ifndef PROTOBUF_SP_5fgshj_2etxt__INCLUDED
#define PROTOBUF_SP_5fgshj_2etxt__INCLUDED

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
void  protobuf_AddDesc_SP_5fgshj_2etxt();
void protobuf_AssignDesc_SP_5fgshj_2etxt();
void protobuf_ShutdownFile_SP_5fgshj_2etxt();

class GM_Gshj_ChallengeInfo;
class GM_Gshj_ChallengeInfo_Result;

// ===================================================================

class GM_Gshj_ChallengeInfo : public ::google::protobuf::Message {
 public:
  GM_Gshj_ChallengeInfo();
  virtual ~GM_Gshj_ChallengeInfo();

  GM_Gshj_ChallengeInfo(const GM_Gshj_ChallengeInfo& from);

  inline GM_Gshj_ChallengeInfo& operator=(const GM_Gshj_ChallengeInfo& from) {
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
  static const GM_Gshj_ChallengeInfo& default_instance();

  void Swap(GM_Gshj_ChallengeInfo* other);

  // implements Message ----------------------------------------------

  GM_Gshj_ChallengeInfo* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_Gshj_ChallengeInfo& from);
  void MergeFrom(const GM_Gshj_ChallengeInfo& from);
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

  // required int32 joined = 1;
  inline bool has_joined() const;
  inline void clear_joined();
  static const int kJoinedFieldNumber = 1;
  inline ::google::protobuf::int32 joined() const;
  inline void set_joined(::google::protobuf::int32 value);

  // required int32 lasttime = 2;
  inline bool has_lasttime() const;
  inline void clear_lasttime();
  static const int kLasttimeFieldNumber = 2;
  inline ::google::protobuf::int32 lasttime() const;
  inline void set_lasttime(::google::protobuf::int32 value);

  // required int32 moralelv = 3;
  inline bool has_moralelv() const;
  inline void clear_moralelv();
  static const int kMoralelvFieldNumber = 3;
  inline ::google::protobuf::int32 moralelv() const;
  inline void set_moralelv(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:GM_Gshj_ChallengeInfo)
 private:
  inline void set_has_joined();
  inline void clear_has_joined();
  inline void set_has_lasttime();
  inline void clear_has_lasttime();
  inline void set_has_moralelv();
  inline void clear_has_moralelv();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 joined_;
  ::google::protobuf::int32 lasttime_;
  ::google::protobuf::int32 moralelv_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(3 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fgshj_2etxt();
  friend void protobuf_AssignDesc_SP_5fgshj_2etxt();
  friend void protobuf_ShutdownFile_SP_5fgshj_2etxt();

  void InitAsDefaultInstance();
  static GM_Gshj_ChallengeInfo* default_instance_;
};
// -------------------------------------------------------------------

class GM_Gshj_ChallengeInfo_Result : public ::google::protobuf::Message {
 public:
  GM_Gshj_ChallengeInfo_Result();
  virtual ~GM_Gshj_ChallengeInfo_Result();

  GM_Gshj_ChallengeInfo_Result(const GM_Gshj_ChallengeInfo_Result& from);

  inline GM_Gshj_ChallengeInfo_Result& operator=(const GM_Gshj_ChallengeInfo_Result& from) {
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
  static const GM_Gshj_ChallengeInfo_Result& default_instance();

  void Swap(GM_Gshj_ChallengeInfo_Result* other);

  // implements Message ----------------------------------------------

  GM_Gshj_ChallengeInfo_Result* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_Gshj_ChallengeInfo_Result& from);
  void MergeFrom(const GM_Gshj_ChallengeInfo_Result& from);
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

  // optional .GM_Gshj_ChallengeInfo info = 2;
  inline bool has_info() const;
  inline void clear_info();
  static const int kInfoFieldNumber = 2;
  inline const ::GM_Gshj_ChallengeInfo& info() const;
  inline ::GM_Gshj_ChallengeInfo* mutable_info();
  inline ::GM_Gshj_ChallengeInfo* release_info();
  inline void set_allocated_info(::GM_Gshj_ChallengeInfo* info);

  // @@protoc_insertion_point(class_scope:GM_Gshj_ChallengeInfo_Result)
 private:
  inline void set_has_count();
  inline void clear_has_count();
  inline void set_has_info();
  inline void clear_has_info();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::GM_Gshj_ChallengeInfo* info_;
  ::google::protobuf::int32 count_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(2 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fgshj_2etxt();
  friend void protobuf_AssignDesc_SP_5fgshj_2etxt();
  friend void protobuf_ShutdownFile_SP_5fgshj_2etxt();

  void InitAsDefaultInstance();
  static GM_Gshj_ChallengeInfo_Result* default_instance_;
};
// ===================================================================


// ===================================================================

// GM_Gshj_ChallengeInfo

// required int32 joined = 1;
inline bool GM_Gshj_ChallengeInfo::has_joined() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_Gshj_ChallengeInfo::set_has_joined() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_Gshj_ChallengeInfo::clear_has_joined() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_Gshj_ChallengeInfo::clear_joined() {
  joined_ = 0;
  clear_has_joined();
}
inline ::google::protobuf::int32 GM_Gshj_ChallengeInfo::joined() const {
  return joined_;
}
inline void GM_Gshj_ChallengeInfo::set_joined(::google::protobuf::int32 value) {
  set_has_joined();
  joined_ = value;
}

// required int32 lasttime = 2;
inline bool GM_Gshj_ChallengeInfo::has_lasttime() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void GM_Gshj_ChallengeInfo::set_has_lasttime() {
  _has_bits_[0] |= 0x00000002u;
}
inline void GM_Gshj_ChallengeInfo::clear_has_lasttime() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void GM_Gshj_ChallengeInfo::clear_lasttime() {
  lasttime_ = 0;
  clear_has_lasttime();
}
inline ::google::protobuf::int32 GM_Gshj_ChallengeInfo::lasttime() const {
  return lasttime_;
}
inline void GM_Gshj_ChallengeInfo::set_lasttime(::google::protobuf::int32 value) {
  set_has_lasttime();
  lasttime_ = value;
}

// required int32 moralelv = 3;
inline bool GM_Gshj_ChallengeInfo::has_moralelv() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void GM_Gshj_ChallengeInfo::set_has_moralelv() {
  _has_bits_[0] |= 0x00000004u;
}
inline void GM_Gshj_ChallengeInfo::clear_has_moralelv() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void GM_Gshj_ChallengeInfo::clear_moralelv() {
  moralelv_ = 0;
  clear_has_moralelv();
}
inline ::google::protobuf::int32 GM_Gshj_ChallengeInfo::moralelv() const {
  return moralelv_;
}
inline void GM_Gshj_ChallengeInfo::set_moralelv(::google::protobuf::int32 value) {
  set_has_moralelv();
  moralelv_ = value;
}

// -------------------------------------------------------------------

// GM_Gshj_ChallengeInfo_Result

// required int32 count = 1;
inline bool GM_Gshj_ChallengeInfo_Result::has_count() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_Gshj_ChallengeInfo_Result::set_has_count() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_Gshj_ChallengeInfo_Result::clear_has_count() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_Gshj_ChallengeInfo_Result::clear_count() {
  count_ = 0;
  clear_has_count();
}
inline ::google::protobuf::int32 GM_Gshj_ChallengeInfo_Result::count() const {
  return count_;
}
inline void GM_Gshj_ChallengeInfo_Result::set_count(::google::protobuf::int32 value) {
  set_has_count();
  count_ = value;
}

// optional .GM_Gshj_ChallengeInfo info = 2;
inline bool GM_Gshj_ChallengeInfo_Result::has_info() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void GM_Gshj_ChallengeInfo_Result::set_has_info() {
  _has_bits_[0] |= 0x00000002u;
}
inline void GM_Gshj_ChallengeInfo_Result::clear_has_info() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void GM_Gshj_ChallengeInfo_Result::clear_info() {
  if (info_ != NULL) info_->::GM_Gshj_ChallengeInfo::Clear();
  clear_has_info();
}
inline const ::GM_Gshj_ChallengeInfo& GM_Gshj_ChallengeInfo_Result::info() const {
  return info_ != NULL ? *info_ : *default_instance_->info_;
}
inline ::GM_Gshj_ChallengeInfo* GM_Gshj_ChallengeInfo_Result::mutable_info() {
  set_has_info();
  if (info_ == NULL) info_ = new ::GM_Gshj_ChallengeInfo;
  return info_;
}
inline ::GM_Gshj_ChallengeInfo* GM_Gshj_ChallengeInfo_Result::release_info() {
  clear_has_info();
  ::GM_Gshj_ChallengeInfo* temp = info_;
  info_ = NULL;
  return temp;
}
inline void GM_Gshj_ChallengeInfo_Result::set_allocated_info(::GM_Gshj_ChallengeInfo* info) {
  delete info_;
  info_ = info;
  if (info) {
    set_has_info();
  } else {
    clear_has_info();
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

#endif  // PROTOBUF_SP_5fgshj_2etxt__INCLUDED