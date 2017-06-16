// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: guide.txt

#ifndef PROTOBUF_guide_2etxt__INCLUDED
#define PROTOBUF_guide_2etxt__INCLUDED

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
void  protobuf_AddDesc_guide_2etxt();
void protobuf_AssignDesc_guide_2etxt();
void protobuf_ShutdownFile_guide_2etxt();

class GM_Guide_System_Item;
class GM_Guide_AllSystem_Return;
class GM_Guide_AllGuide_Return;
class GM_Guide_Guide_Item;
class GM_Guide_FinishGuide_Request;
class GM_Guide_FinishGuide_Return;
class GM_GuideClose_level_Return;

// ===================================================================

class GM_Guide_System_Item : public ::google::protobuf::Message {
 public:
  GM_Guide_System_Item();
  virtual ~GM_Guide_System_Item();

  GM_Guide_System_Item(const GM_Guide_System_Item& from);

  inline GM_Guide_System_Item& operator=(const GM_Guide_System_Item& from) {
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
  static const GM_Guide_System_Item& default_instance();

  void Swap(GM_Guide_System_Item* other);

  // implements Message ----------------------------------------------

  GM_Guide_System_Item* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_Guide_System_Item& from);
  void MergeFrom(const GM_Guide_System_Item& from);
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

  // required int32 level = 1;
  inline bool has_level() const;
  inline void clear_level();
  static const int kLevelFieldNumber = 1;
  inline ::google::protobuf::int32 level() const;
  inline void set_level(::google::protobuf::int32 value);

  // required int32 systemid = 2;
  inline bool has_systemid() const;
  inline void clear_systemid();
  static const int kSystemidFieldNumber = 2;
  inline ::google::protobuf::int32 systemid() const;
  inline void set_systemid(::google::protobuf::int32 value);

  // required int32 unlocked = 3;
  inline bool has_unlocked() const;
  inline void clear_unlocked();
  static const int kUnlockedFieldNumber = 3;
  inline ::google::protobuf::int32 unlocked() const;
  inline void set_unlocked(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:GM_Guide_System_Item)
 private:
  inline void set_has_level();
  inline void clear_has_level();
  inline void set_has_systemid();
  inline void clear_has_systemid();
  inline void set_has_unlocked();
  inline void clear_has_unlocked();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 level_;
  ::google::protobuf::int32 systemid_;
  ::google::protobuf::int32 unlocked_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(3 + 31) / 32];

  friend void  protobuf_AddDesc_guide_2etxt();
  friend void protobuf_AssignDesc_guide_2etxt();
  friend void protobuf_ShutdownFile_guide_2etxt();

  void InitAsDefaultInstance();
  static GM_Guide_System_Item* default_instance_;
};
// -------------------------------------------------------------------

class GM_Guide_AllSystem_Return : public ::google::protobuf::Message {
 public:
  GM_Guide_AllSystem_Return();
  virtual ~GM_Guide_AllSystem_Return();

  GM_Guide_AllSystem_Return(const GM_Guide_AllSystem_Return& from);

  inline GM_Guide_AllSystem_Return& operator=(const GM_Guide_AllSystem_Return& from) {
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
  static const GM_Guide_AllSystem_Return& default_instance();

  void Swap(GM_Guide_AllSystem_Return* other);

  // implements Message ----------------------------------------------

  GM_Guide_AllSystem_Return* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_Guide_AllSystem_Return& from);
  void MergeFrom(const GM_Guide_AllSystem_Return& from);
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

  // repeated .GM_Guide_System_Item item = 2;
  inline int item_size() const;
  inline void clear_item();
  static const int kItemFieldNumber = 2;
  inline const ::GM_Guide_System_Item& item(int index) const;
  inline ::GM_Guide_System_Item* mutable_item(int index);
  inline ::GM_Guide_System_Item* add_item();
  inline const ::google::protobuf::RepeatedPtrField< ::GM_Guide_System_Item >&
      item() const;
  inline ::google::protobuf::RepeatedPtrField< ::GM_Guide_System_Item >*
      mutable_item();

  // @@protoc_insertion_point(class_scope:GM_Guide_AllSystem_Return)
 private:
  inline void set_has_count();
  inline void clear_has_count();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::RepeatedPtrField< ::GM_Guide_System_Item > item_;
  ::google::protobuf::int32 count_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(2 + 31) / 32];

  friend void  protobuf_AddDesc_guide_2etxt();
  friend void protobuf_AssignDesc_guide_2etxt();
  friend void protobuf_ShutdownFile_guide_2etxt();

  void InitAsDefaultInstance();
  static GM_Guide_AllSystem_Return* default_instance_;
};
// -------------------------------------------------------------------

class GM_Guide_AllGuide_Return : public ::google::protobuf::Message {
 public:
  GM_Guide_AllGuide_Return();
  virtual ~GM_Guide_AllGuide_Return();

  GM_Guide_AllGuide_Return(const GM_Guide_AllGuide_Return& from);

  inline GM_Guide_AllGuide_Return& operator=(const GM_Guide_AllGuide_Return& from) {
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
  static const GM_Guide_AllGuide_Return& default_instance();

  void Swap(GM_Guide_AllGuide_Return* other);

  // implements Message ----------------------------------------------

  GM_Guide_AllGuide_Return* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_Guide_AllGuide_Return& from);
  void MergeFrom(const GM_Guide_AllGuide_Return& from);
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

  // repeated int32 guides = 2;
  inline int guides_size() const;
  inline void clear_guides();
  static const int kGuidesFieldNumber = 2;
  inline ::google::protobuf::int32 guides(int index) const;
  inline void set_guides(int index, ::google::protobuf::int32 value);
  inline void add_guides(::google::protobuf::int32 value);
  inline const ::google::protobuf::RepeatedField< ::google::protobuf::int32 >&
      guides() const;
  inline ::google::protobuf::RepeatedField< ::google::protobuf::int32 >*
      mutable_guides();

  // @@protoc_insertion_point(class_scope:GM_Guide_AllGuide_Return)
 private:
  inline void set_has_count();
  inline void clear_has_count();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::RepeatedField< ::google::protobuf::int32 > guides_;
  ::google::protobuf::int32 count_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(2 + 31) / 32];

  friend void  protobuf_AddDesc_guide_2etxt();
  friend void protobuf_AssignDesc_guide_2etxt();
  friend void protobuf_ShutdownFile_guide_2etxt();

  void InitAsDefaultInstance();
  static GM_Guide_AllGuide_Return* default_instance_;
};
// -------------------------------------------------------------------

class GM_Guide_Guide_Item : public ::google::protobuf::Message {
 public:
  GM_Guide_Guide_Item();
  virtual ~GM_Guide_Guide_Item();

  GM_Guide_Guide_Item(const GM_Guide_Guide_Item& from);

  inline GM_Guide_Guide_Item& operator=(const GM_Guide_Guide_Item& from) {
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
  static const GM_Guide_Guide_Item& default_instance();

  void Swap(GM_Guide_Guide_Item* other);

  // implements Message ----------------------------------------------

  GM_Guide_Guide_Item* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_Guide_Guide_Item& from);
  void MergeFrom(const GM_Guide_Guide_Item& from);
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

  // required int32 guideid = 1;
  inline bool has_guideid() const;
  inline void clear_guideid();
  static const int kGuideidFieldNumber = 1;
  inline ::google::protobuf::int32 guideid() const;
  inline void set_guideid(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:GM_Guide_Guide_Item)
 private:
  inline void set_has_guideid();
  inline void clear_has_guideid();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 guideid_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(1 + 31) / 32];

  friend void  protobuf_AddDesc_guide_2etxt();
  friend void protobuf_AssignDesc_guide_2etxt();
  friend void protobuf_ShutdownFile_guide_2etxt();

  void InitAsDefaultInstance();
  static GM_Guide_Guide_Item* default_instance_;
};
// -------------------------------------------------------------------

class GM_Guide_FinishGuide_Request : public ::google::protobuf::Message {
 public:
  GM_Guide_FinishGuide_Request();
  virtual ~GM_Guide_FinishGuide_Request();

  GM_Guide_FinishGuide_Request(const GM_Guide_FinishGuide_Request& from);

  inline GM_Guide_FinishGuide_Request& operator=(const GM_Guide_FinishGuide_Request& from) {
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
  static const GM_Guide_FinishGuide_Request& default_instance();

  void Swap(GM_Guide_FinishGuide_Request* other);

  // implements Message ----------------------------------------------

  GM_Guide_FinishGuide_Request* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_Guide_FinishGuide_Request& from);
  void MergeFrom(const GM_Guide_FinishGuide_Request& from);
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

  // required int32 guideid = 1;
  inline bool has_guideid() const;
  inline void clear_guideid();
  static const int kGuideidFieldNumber = 1;
  inline ::google::protobuf::int32 guideid() const;
  inline void set_guideid(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:GM_Guide_FinishGuide_Request)
 private:
  inline void set_has_guideid();
  inline void clear_has_guideid();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 guideid_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(1 + 31) / 32];

  friend void  protobuf_AddDesc_guide_2etxt();
  friend void protobuf_AssignDesc_guide_2etxt();
  friend void protobuf_ShutdownFile_guide_2etxt();

  void InitAsDefaultInstance();
  static GM_Guide_FinishGuide_Request* default_instance_;
};
// -------------------------------------------------------------------

class GM_Guide_FinishGuide_Return : public ::google::protobuf::Message {
 public:
  GM_Guide_FinishGuide_Return();
  virtual ~GM_Guide_FinishGuide_Return();

  GM_Guide_FinishGuide_Return(const GM_Guide_FinishGuide_Return& from);

  inline GM_Guide_FinishGuide_Return& operator=(const GM_Guide_FinishGuide_Return& from) {
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
  static const GM_Guide_FinishGuide_Return& default_instance();

  void Swap(GM_Guide_FinishGuide_Return* other);

  // implements Message ----------------------------------------------

  GM_Guide_FinishGuide_Return* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_Guide_FinishGuide_Return& from);
  void MergeFrom(const GM_Guide_FinishGuide_Return& from);
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

  // required int32 result = 1;
  inline bool has_result() const;
  inline void clear_result();
  static const int kResultFieldNumber = 1;
  inline ::google::protobuf::int32 result() const;
  inline void set_result(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:GM_Guide_FinishGuide_Return)
 private:
  inline void set_has_result();
  inline void clear_has_result();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 result_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(1 + 31) / 32];

  friend void  protobuf_AddDesc_guide_2etxt();
  friend void protobuf_AssignDesc_guide_2etxt();
  friend void protobuf_ShutdownFile_guide_2etxt();

  void InitAsDefaultInstance();
  static GM_Guide_FinishGuide_Return* default_instance_;
};
// -------------------------------------------------------------------

class GM_GuideClose_level_Return : public ::google::protobuf::Message {
 public:
  GM_GuideClose_level_Return();
  virtual ~GM_GuideClose_level_Return();

  GM_GuideClose_level_Return(const GM_GuideClose_level_Return& from);

  inline GM_GuideClose_level_Return& operator=(const GM_GuideClose_level_Return& from) {
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
  static const GM_GuideClose_level_Return& default_instance();

  void Swap(GM_GuideClose_level_Return* other);

  // implements Message ----------------------------------------------

  GM_GuideClose_level_Return* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_GuideClose_level_Return& from);
  void MergeFrom(const GM_GuideClose_level_Return& from);
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

  // required int32 level = 1;
  inline bool has_level() const;
  inline void clear_level();
  static const int kLevelFieldNumber = 1;
  inline ::google::protobuf::int32 level() const;
  inline void set_level(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:GM_GuideClose_level_Return)
 private:
  inline void set_has_level();
  inline void clear_has_level();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 level_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(1 + 31) / 32];

  friend void  protobuf_AddDesc_guide_2etxt();
  friend void protobuf_AssignDesc_guide_2etxt();
  friend void protobuf_ShutdownFile_guide_2etxt();

  void InitAsDefaultInstance();
  static GM_GuideClose_level_Return* default_instance_;
};
// ===================================================================


// ===================================================================

// GM_Guide_System_Item

// required int32 level = 1;
inline bool GM_Guide_System_Item::has_level() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_Guide_System_Item::set_has_level() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_Guide_System_Item::clear_has_level() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_Guide_System_Item::clear_level() {
  level_ = 0;
  clear_has_level();
}
inline ::google::protobuf::int32 GM_Guide_System_Item::level() const {
  return level_;
}
inline void GM_Guide_System_Item::set_level(::google::protobuf::int32 value) {
  set_has_level();
  level_ = value;
}

// required int32 systemid = 2;
inline bool GM_Guide_System_Item::has_systemid() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void GM_Guide_System_Item::set_has_systemid() {
  _has_bits_[0] |= 0x00000002u;
}
inline void GM_Guide_System_Item::clear_has_systemid() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void GM_Guide_System_Item::clear_systemid() {
  systemid_ = 0;
  clear_has_systemid();
}
inline ::google::protobuf::int32 GM_Guide_System_Item::systemid() const {
  return systemid_;
}
inline void GM_Guide_System_Item::set_systemid(::google::protobuf::int32 value) {
  set_has_systemid();
  systemid_ = value;
}

// required int32 unlocked = 3;
inline bool GM_Guide_System_Item::has_unlocked() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void GM_Guide_System_Item::set_has_unlocked() {
  _has_bits_[0] |= 0x00000004u;
}
inline void GM_Guide_System_Item::clear_has_unlocked() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void GM_Guide_System_Item::clear_unlocked() {
  unlocked_ = 0;
  clear_has_unlocked();
}
inline ::google::protobuf::int32 GM_Guide_System_Item::unlocked() const {
  return unlocked_;
}
inline void GM_Guide_System_Item::set_unlocked(::google::protobuf::int32 value) {
  set_has_unlocked();
  unlocked_ = value;
}

// -------------------------------------------------------------------

// GM_Guide_AllSystem_Return

// required int32 count = 1;
inline bool GM_Guide_AllSystem_Return::has_count() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_Guide_AllSystem_Return::set_has_count() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_Guide_AllSystem_Return::clear_has_count() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_Guide_AllSystem_Return::clear_count() {
  count_ = 0;
  clear_has_count();
}
inline ::google::protobuf::int32 GM_Guide_AllSystem_Return::count() const {
  return count_;
}
inline void GM_Guide_AllSystem_Return::set_count(::google::protobuf::int32 value) {
  set_has_count();
  count_ = value;
}

// repeated .GM_Guide_System_Item item = 2;
inline int GM_Guide_AllSystem_Return::item_size() const {
  return item_.size();
}
inline void GM_Guide_AllSystem_Return::clear_item() {
  item_.Clear();
}
inline const ::GM_Guide_System_Item& GM_Guide_AllSystem_Return::item(int index) const {
  return item_.Get(index);
}
inline ::GM_Guide_System_Item* GM_Guide_AllSystem_Return::mutable_item(int index) {
  return item_.Mutable(index);
}
inline ::GM_Guide_System_Item* GM_Guide_AllSystem_Return::add_item() {
  return item_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::GM_Guide_System_Item >&
GM_Guide_AllSystem_Return::item() const {
  return item_;
}
inline ::google::protobuf::RepeatedPtrField< ::GM_Guide_System_Item >*
GM_Guide_AllSystem_Return::mutable_item() {
  return &item_;
}

// -------------------------------------------------------------------

// GM_Guide_AllGuide_Return

// required int32 count = 1;
inline bool GM_Guide_AllGuide_Return::has_count() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_Guide_AllGuide_Return::set_has_count() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_Guide_AllGuide_Return::clear_has_count() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_Guide_AllGuide_Return::clear_count() {
  count_ = 0;
  clear_has_count();
}
inline ::google::protobuf::int32 GM_Guide_AllGuide_Return::count() const {
  return count_;
}
inline void GM_Guide_AllGuide_Return::set_count(::google::protobuf::int32 value) {
  set_has_count();
  count_ = value;
}

// repeated int32 guides = 2;
inline int GM_Guide_AllGuide_Return::guides_size() const {
  return guides_.size();
}
inline void GM_Guide_AllGuide_Return::clear_guides() {
  guides_.Clear();
}
inline ::google::protobuf::int32 GM_Guide_AllGuide_Return::guides(int index) const {
  return guides_.Get(index);
}
inline void GM_Guide_AllGuide_Return::set_guides(int index, ::google::protobuf::int32 value) {
  guides_.Set(index, value);
}
inline void GM_Guide_AllGuide_Return::add_guides(::google::protobuf::int32 value) {
  guides_.Add(value);
}
inline const ::google::protobuf::RepeatedField< ::google::protobuf::int32 >&
GM_Guide_AllGuide_Return::guides() const {
  return guides_;
}
inline ::google::protobuf::RepeatedField< ::google::protobuf::int32 >*
GM_Guide_AllGuide_Return::mutable_guides() {
  return &guides_;
}

// -------------------------------------------------------------------

// GM_Guide_Guide_Item

// required int32 guideid = 1;
inline bool GM_Guide_Guide_Item::has_guideid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_Guide_Guide_Item::set_has_guideid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_Guide_Guide_Item::clear_has_guideid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_Guide_Guide_Item::clear_guideid() {
  guideid_ = 0;
  clear_has_guideid();
}
inline ::google::protobuf::int32 GM_Guide_Guide_Item::guideid() const {
  return guideid_;
}
inline void GM_Guide_Guide_Item::set_guideid(::google::protobuf::int32 value) {
  set_has_guideid();
  guideid_ = value;
}

// -------------------------------------------------------------------

// GM_Guide_FinishGuide_Request

// required int32 guideid = 1;
inline bool GM_Guide_FinishGuide_Request::has_guideid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_Guide_FinishGuide_Request::set_has_guideid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_Guide_FinishGuide_Request::clear_has_guideid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_Guide_FinishGuide_Request::clear_guideid() {
  guideid_ = 0;
  clear_has_guideid();
}
inline ::google::protobuf::int32 GM_Guide_FinishGuide_Request::guideid() const {
  return guideid_;
}
inline void GM_Guide_FinishGuide_Request::set_guideid(::google::protobuf::int32 value) {
  set_has_guideid();
  guideid_ = value;
}

// -------------------------------------------------------------------

// GM_Guide_FinishGuide_Return

// required int32 result = 1;
inline bool GM_Guide_FinishGuide_Return::has_result() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_Guide_FinishGuide_Return::set_has_result() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_Guide_FinishGuide_Return::clear_has_result() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_Guide_FinishGuide_Return::clear_result() {
  result_ = 0;
  clear_has_result();
}
inline ::google::protobuf::int32 GM_Guide_FinishGuide_Return::result() const {
  return result_;
}
inline void GM_Guide_FinishGuide_Return::set_result(::google::protobuf::int32 value) {
  set_has_result();
  result_ = value;
}

// -------------------------------------------------------------------

// GM_GuideClose_level_Return

// required int32 level = 1;
inline bool GM_GuideClose_level_Return::has_level() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_GuideClose_level_Return::set_has_level() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_GuideClose_level_Return::clear_has_level() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_GuideClose_level_Return::clear_level() {
  level_ = 0;
  clear_has_level();
}
inline ::google::protobuf::int32 GM_GuideClose_level_Return::level() const {
  return level_;
}
inline void GM_GuideClose_level_Return::set_level(::google::protobuf::int32 value) {
  set_has_level();
  level_ = value;
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

#endif  // PROTOBUF_guide_2etxt__INCLUDED