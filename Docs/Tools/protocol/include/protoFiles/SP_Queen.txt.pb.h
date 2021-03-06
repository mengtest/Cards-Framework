// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_Queen.txt

#ifndef PROTOBUF_SP_5fQueen_2etxt__INCLUDED
#define PROTOBUF_SP_5fQueen_2etxt__INCLUDED

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
void  protobuf_AddDesc_SP_5fQueen_2etxt();
void protobuf_AssignDesc_SP_5fQueen_2etxt();
void protobuf_ShutdownFile_SP_5fQueen_2etxt();

class GM_NotifyDisconnect;

// ===================================================================

class GM_NotifyDisconnect : public ::google::protobuf::Message {
 public:
  GM_NotifyDisconnect();
  virtual ~GM_NotifyDisconnect();

  GM_NotifyDisconnect(const GM_NotifyDisconnect& from);

  inline GM_NotifyDisconnect& operator=(const GM_NotifyDisconnect& from) {
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
  static const GM_NotifyDisconnect& default_instance();

  void Swap(GM_NotifyDisconnect* other);

  // implements Message ----------------------------------------------

  GM_NotifyDisconnect* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_NotifyDisconnect& from);
  void MergeFrom(const GM_NotifyDisconnect& from);
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

  // required int32 tempid = 1;
  inline bool has_tempid() const;
  inline void clear_tempid();
  static const int kTempidFieldNumber = 1;
  inline ::google::protobuf::int32 tempid() const;
  inline void set_tempid(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:GM_NotifyDisconnect)
 private:
  inline void set_has_tempid();
  inline void clear_has_tempid();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 tempid_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(1 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fQueen_2etxt();
  friend void protobuf_AssignDesc_SP_5fQueen_2etxt();
  friend void protobuf_ShutdownFile_SP_5fQueen_2etxt();

  void InitAsDefaultInstance();
  static GM_NotifyDisconnect* default_instance_;
};
// ===================================================================


// ===================================================================

// GM_NotifyDisconnect

// required int32 tempid = 1;
inline bool GM_NotifyDisconnect::has_tempid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_NotifyDisconnect::set_has_tempid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_NotifyDisconnect::clear_has_tempid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_NotifyDisconnect::clear_tempid() {
  tempid_ = 0;
  clear_has_tempid();
}
inline ::google::protobuf::int32 GM_NotifyDisconnect::tempid() const {
  return tempid_;
}
inline void GM_NotifyDisconnect::set_tempid(::google::protobuf::int32 value) {
  set_has_tempid();
  tempid_ = value;
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

#endif  // PROTOBUF_SP_5fQueen_2etxt__INCLUDED
