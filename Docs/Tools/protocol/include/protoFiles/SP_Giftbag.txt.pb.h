// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_Giftbag.txt

#ifndef PROTOBUF_SP_5fGiftbag_2etxt__INCLUDED
#define PROTOBUF_SP_5fGiftbag_2etxt__INCLUDED

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
void  protobuf_AddDesc_SP_5fGiftbag_2etxt();
void protobuf_AssignDesc_SP_5fGiftbag_2etxt();
void protobuf_ShutdownFile_SP_5fGiftbag_2etxt();

class GM_GiftBagData;
class GM_GiftBagItem;
class GM_GiftBagTypeId;
class GM_GiftBagRecord;
class GM_GiftBagGift;
class GM_GiftBagList;

// ===================================================================

class GM_GiftBagData : public ::google::protobuf::Message {
 public:
  GM_GiftBagData();
  virtual ~GM_GiftBagData();

  GM_GiftBagData(const GM_GiftBagData& from);

  inline GM_GiftBagData& operator=(const GM_GiftBagData& from) {
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
  static const GM_GiftBagData& default_instance();

  void Swap(GM_GiftBagData* other);

  // implements Message ----------------------------------------------

  GM_GiftBagData* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_GiftBagData& from);
  void MergeFrom(const GM_GiftBagData& from);
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

  // required int32 type_id = 2;
  inline bool has_type_id() const;
  inline void clear_type_id();
  static const int kTypeIdFieldNumber = 2;
  inline ::google::protobuf::int32 type_id() const;
  inline void set_type_id(::google::protobuf::int32 value);

  // repeated .GM_GiftBagItem giftbag_item = 1;
  inline int giftbag_item_size() const;
  inline void clear_giftbag_item();
  static const int kGiftbagItemFieldNumber = 1;
  inline const ::GM_GiftBagItem& giftbag_item(int index) const;
  inline ::GM_GiftBagItem* mutable_giftbag_item(int index);
  inline ::GM_GiftBagItem* add_giftbag_item();
  inline const ::google::protobuf::RepeatedPtrField< ::GM_GiftBagItem >&
      giftbag_item() const;
  inline ::google::protobuf::RepeatedPtrField< ::GM_GiftBagItem >*
      mutable_giftbag_item();

  // @@protoc_insertion_point(class_scope:GM_GiftBagData)
 private:
  inline void set_has_type_id();
  inline void clear_has_type_id();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::RepeatedPtrField< ::GM_GiftBagItem > giftbag_item_;
  ::google::protobuf::int32 type_id_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(2 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fGiftbag_2etxt();
  friend void protobuf_AssignDesc_SP_5fGiftbag_2etxt();
  friend void protobuf_ShutdownFile_SP_5fGiftbag_2etxt();

  void InitAsDefaultInstance();
  static GM_GiftBagData* default_instance_;
};
// -------------------------------------------------------------------

class GM_GiftBagItem : public ::google::protobuf::Message {
 public:
  GM_GiftBagItem();
  virtual ~GM_GiftBagItem();

  GM_GiftBagItem(const GM_GiftBagItem& from);

  inline GM_GiftBagItem& operator=(const GM_GiftBagItem& from) {
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
  static const GM_GiftBagItem& default_instance();

  void Swap(GM_GiftBagItem* other);

  // implements Message ----------------------------------------------

  GM_GiftBagItem* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_GiftBagItem& from);
  void MergeFrom(const GM_GiftBagItem& from);
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

  // required int32 objectid = 1;
  inline bool has_objectid() const;
  inline void clear_objectid();
  static const int kObjectidFieldNumber = 1;
  inline ::google::protobuf::int32 objectid() const;
  inline void set_objectid(::google::protobuf::int32 value);

  // required int32 objcount = 2;
  inline bool has_objcount() const;
  inline void clear_objcount();
  static const int kObjcountFieldNumber = 2;
  inline ::google::protobuf::int32 objcount() const;
  inline void set_objcount(::google::protobuf::int32 value);

  // required int32 objlevel = 3;
  inline bool has_objlevel() const;
  inline void clear_objlevel();
  static const int kObjlevelFieldNumber = 3;
  inline ::google::protobuf::int32 objlevel() const;
  inline void set_objlevel(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:GM_GiftBagItem)
 private:
  inline void set_has_objectid();
  inline void clear_has_objectid();
  inline void set_has_objcount();
  inline void clear_has_objcount();
  inline void set_has_objlevel();
  inline void clear_has_objlevel();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 objectid_;
  ::google::protobuf::int32 objcount_;
  ::google::protobuf::int32 objlevel_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(3 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fGiftbag_2etxt();
  friend void protobuf_AssignDesc_SP_5fGiftbag_2etxt();
  friend void protobuf_ShutdownFile_SP_5fGiftbag_2etxt();

  void InitAsDefaultInstance();
  static GM_GiftBagItem* default_instance_;
};
// -------------------------------------------------------------------

class GM_GiftBagTypeId : public ::google::protobuf::Message {
 public:
  GM_GiftBagTypeId();
  virtual ~GM_GiftBagTypeId();

  GM_GiftBagTypeId(const GM_GiftBagTypeId& from);

  inline GM_GiftBagTypeId& operator=(const GM_GiftBagTypeId& from) {
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
  static const GM_GiftBagTypeId& default_instance();

  void Swap(GM_GiftBagTypeId* other);

  // implements Message ----------------------------------------------

  GM_GiftBagTypeId* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_GiftBagTypeId& from);
  void MergeFrom(const GM_GiftBagTypeId& from);
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

  // required int32 type_id = 1;
  inline bool has_type_id() const;
  inline void clear_type_id();
  static const int kTypeIdFieldNumber = 1;
  inline ::google::protobuf::int32 type_id() const;
  inline void set_type_id(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:GM_GiftBagTypeId)
 private:
  inline void set_has_type_id();
  inline void clear_has_type_id();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 type_id_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(1 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fGiftbag_2etxt();
  friend void protobuf_AssignDesc_SP_5fGiftbag_2etxt();
  friend void protobuf_ShutdownFile_SP_5fGiftbag_2etxt();

  void InitAsDefaultInstance();
  static GM_GiftBagTypeId* default_instance_;
};
// -------------------------------------------------------------------

class GM_GiftBagRecord : public ::google::protobuf::Message {
 public:
  GM_GiftBagRecord();
  virtual ~GM_GiftBagRecord();

  GM_GiftBagRecord(const GM_GiftBagRecord& from);

  inline GM_GiftBagRecord& operator=(const GM_GiftBagRecord& from) {
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
  static const GM_GiftBagRecord& default_instance();

  void Swap(GM_GiftBagRecord* other);

  // implements Message ----------------------------------------------

  GM_GiftBagRecord* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_GiftBagRecord& from);
  void MergeFrom(const GM_GiftBagRecord& from);
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

  // required int32 type_id = 1;
  inline bool has_type_id() const;
  inline void clear_type_id();
  static const int kTypeIdFieldNumber = 1;
  inline ::google::protobuf::int32 type_id() const;
  inline void set_type_id(::google::protobuf::int32 value);

  // required int32 objectid = 2;
  inline bool has_objectid() const;
  inline void clear_objectid();
  static const int kObjectidFieldNumber = 2;
  inline ::google::protobuf::int32 objectid() const;
  inline void set_objectid(::google::protobuf::int32 value);

  // required int32 objcount = 3;
  inline bool has_objcount() const;
  inline void clear_objcount();
  static const int kObjcountFieldNumber = 3;
  inline ::google::protobuf::int32 objcount() const;
  inline void set_objcount(::google::protobuf::int32 value);

  // required int32 objlevel = 4;
  inline bool has_objlevel() const;
  inline void clear_objlevel();
  static const int kObjlevelFieldNumber = 4;
  inline ::google::protobuf::int32 objlevel() const;
  inline void set_objlevel(::google::protobuf::int32 value);

  // required int32 profession = 5;
  inline bool has_profession() const;
  inline void clear_profession();
  static const int kProfessionFieldNumber = 5;
  inline ::google::protobuf::int32 profession() const;
  inline void set_profession(::google::protobuf::int32 value);

  // required int32 validtime = 6;
  inline bool has_validtime() const;
  inline void clear_validtime();
  static const int kValidtimeFieldNumber = 6;
  inline ::google::protobuf::int32 validtime() const;
  inline void set_validtime(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:GM_GiftBagRecord)
 private:
  inline void set_has_type_id();
  inline void clear_has_type_id();
  inline void set_has_objectid();
  inline void clear_has_objectid();
  inline void set_has_objcount();
  inline void clear_has_objcount();
  inline void set_has_objlevel();
  inline void clear_has_objlevel();
  inline void set_has_profession();
  inline void clear_has_profession();
  inline void set_has_validtime();
  inline void clear_has_validtime();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 type_id_;
  ::google::protobuf::int32 objectid_;
  ::google::protobuf::int32 objcount_;
  ::google::protobuf::int32 objlevel_;
  ::google::protobuf::int32 profession_;
  ::google::protobuf::int32 validtime_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(6 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fGiftbag_2etxt();
  friend void protobuf_AssignDesc_SP_5fGiftbag_2etxt();
  friend void protobuf_ShutdownFile_SP_5fGiftbag_2etxt();

  void InitAsDefaultInstance();
  static GM_GiftBagRecord* default_instance_;
};
// -------------------------------------------------------------------

class GM_GiftBagGift : public ::google::protobuf::Message {
 public:
  GM_GiftBagGift();
  virtual ~GM_GiftBagGift();

  GM_GiftBagGift(const GM_GiftBagGift& from);

  inline GM_GiftBagGift& operator=(const GM_GiftBagGift& from) {
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
  static const GM_GiftBagGift& default_instance();

  void Swap(GM_GiftBagGift* other);

  // implements Message ----------------------------------------------

  GM_GiftBagGift* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_GiftBagGift& from);
  void MergeFrom(const GM_GiftBagGift& from);
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

  // required int32 giftid = 1;
  inline bool has_giftid() const;
  inline void clear_giftid();
  static const int kGiftidFieldNumber = 1;
  inline ::google::protobuf::int32 giftid() const;
  inline void set_giftid(::google::protobuf::int32 value);

  // repeated .GM_GiftBagRecord gift = 2;
  inline int gift_size() const;
  inline void clear_gift();
  static const int kGiftFieldNumber = 2;
  inline const ::GM_GiftBagRecord& gift(int index) const;
  inline ::GM_GiftBagRecord* mutable_gift(int index);
  inline ::GM_GiftBagRecord* add_gift();
  inline const ::google::protobuf::RepeatedPtrField< ::GM_GiftBagRecord >&
      gift() const;
  inline ::google::protobuf::RepeatedPtrField< ::GM_GiftBagRecord >*
      mutable_gift();

  // @@protoc_insertion_point(class_scope:GM_GiftBagGift)
 private:
  inline void set_has_giftid();
  inline void clear_has_giftid();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::RepeatedPtrField< ::GM_GiftBagRecord > gift_;
  ::google::protobuf::int32 giftid_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(2 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fGiftbag_2etxt();
  friend void protobuf_AssignDesc_SP_5fGiftbag_2etxt();
  friend void protobuf_ShutdownFile_SP_5fGiftbag_2etxt();

  void InitAsDefaultInstance();
  static GM_GiftBagGift* default_instance_;
};
// -------------------------------------------------------------------

class GM_GiftBagList : public ::google::protobuf::Message {
 public:
  GM_GiftBagList();
  virtual ~GM_GiftBagList();

  GM_GiftBagList(const GM_GiftBagList& from);

  inline GM_GiftBagList& operator=(const GM_GiftBagList& from) {
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
  static const GM_GiftBagList& default_instance();

  void Swap(GM_GiftBagList* other);

  // implements Message ----------------------------------------------

  GM_GiftBagList* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_GiftBagList& from);
  void MergeFrom(const GM_GiftBagList& from);
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

  // required uint32 count = 1;
  inline bool has_count() const;
  inline void clear_count();
  static const int kCountFieldNumber = 1;
  inline ::google::protobuf::uint32 count() const;
  inline void set_count(::google::protobuf::uint32 value);

  // required uint32 version = 2;
  inline bool has_version() const;
  inline void clear_version();
  static const int kVersionFieldNumber = 2;
  inline ::google::protobuf::uint32 version() const;
  inline void set_version(::google::protobuf::uint32 value);

  // repeated .GM_GiftBagGift gifts = 3;
  inline int gifts_size() const;
  inline void clear_gifts();
  static const int kGiftsFieldNumber = 3;
  inline const ::GM_GiftBagGift& gifts(int index) const;
  inline ::GM_GiftBagGift* mutable_gifts(int index);
  inline ::GM_GiftBagGift* add_gifts();
  inline const ::google::protobuf::RepeatedPtrField< ::GM_GiftBagGift >&
      gifts() const;
  inline ::google::protobuf::RepeatedPtrField< ::GM_GiftBagGift >*
      mutable_gifts();

  // @@protoc_insertion_point(class_scope:GM_GiftBagList)
 private:
  inline void set_has_count();
  inline void clear_has_count();
  inline void set_has_version();
  inline void clear_has_version();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 count_;
  ::google::protobuf::uint32 version_;
  ::google::protobuf::RepeatedPtrField< ::GM_GiftBagGift > gifts_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(3 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fGiftbag_2etxt();
  friend void protobuf_AssignDesc_SP_5fGiftbag_2etxt();
  friend void protobuf_ShutdownFile_SP_5fGiftbag_2etxt();

  void InitAsDefaultInstance();
  static GM_GiftBagList* default_instance_;
};
// ===================================================================


// ===================================================================

// GM_GiftBagData

// required int32 type_id = 2;
inline bool GM_GiftBagData::has_type_id() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_GiftBagData::set_has_type_id() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_GiftBagData::clear_has_type_id() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_GiftBagData::clear_type_id() {
  type_id_ = 0;
  clear_has_type_id();
}
inline ::google::protobuf::int32 GM_GiftBagData::type_id() const {
  return type_id_;
}
inline void GM_GiftBagData::set_type_id(::google::protobuf::int32 value) {
  set_has_type_id();
  type_id_ = value;
}

// repeated .GM_GiftBagItem giftbag_item = 1;
inline int GM_GiftBagData::giftbag_item_size() const {
  return giftbag_item_.size();
}
inline void GM_GiftBagData::clear_giftbag_item() {
  giftbag_item_.Clear();
}
inline const ::GM_GiftBagItem& GM_GiftBagData::giftbag_item(int index) const {
  return giftbag_item_.Get(index);
}
inline ::GM_GiftBagItem* GM_GiftBagData::mutable_giftbag_item(int index) {
  return giftbag_item_.Mutable(index);
}
inline ::GM_GiftBagItem* GM_GiftBagData::add_giftbag_item() {
  return giftbag_item_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::GM_GiftBagItem >&
GM_GiftBagData::giftbag_item() const {
  return giftbag_item_;
}
inline ::google::protobuf::RepeatedPtrField< ::GM_GiftBagItem >*
GM_GiftBagData::mutable_giftbag_item() {
  return &giftbag_item_;
}

// -------------------------------------------------------------------

// GM_GiftBagItem

// required int32 objectid = 1;
inline bool GM_GiftBagItem::has_objectid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_GiftBagItem::set_has_objectid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_GiftBagItem::clear_has_objectid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_GiftBagItem::clear_objectid() {
  objectid_ = 0;
  clear_has_objectid();
}
inline ::google::protobuf::int32 GM_GiftBagItem::objectid() const {
  return objectid_;
}
inline void GM_GiftBagItem::set_objectid(::google::protobuf::int32 value) {
  set_has_objectid();
  objectid_ = value;
}

// required int32 objcount = 2;
inline bool GM_GiftBagItem::has_objcount() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void GM_GiftBagItem::set_has_objcount() {
  _has_bits_[0] |= 0x00000002u;
}
inline void GM_GiftBagItem::clear_has_objcount() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void GM_GiftBagItem::clear_objcount() {
  objcount_ = 0;
  clear_has_objcount();
}
inline ::google::protobuf::int32 GM_GiftBagItem::objcount() const {
  return objcount_;
}
inline void GM_GiftBagItem::set_objcount(::google::protobuf::int32 value) {
  set_has_objcount();
  objcount_ = value;
}

// required int32 objlevel = 3;
inline bool GM_GiftBagItem::has_objlevel() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void GM_GiftBagItem::set_has_objlevel() {
  _has_bits_[0] |= 0x00000004u;
}
inline void GM_GiftBagItem::clear_has_objlevel() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void GM_GiftBagItem::clear_objlevel() {
  objlevel_ = 0;
  clear_has_objlevel();
}
inline ::google::protobuf::int32 GM_GiftBagItem::objlevel() const {
  return objlevel_;
}
inline void GM_GiftBagItem::set_objlevel(::google::protobuf::int32 value) {
  set_has_objlevel();
  objlevel_ = value;
}

// -------------------------------------------------------------------

// GM_GiftBagTypeId

// required int32 type_id = 1;
inline bool GM_GiftBagTypeId::has_type_id() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_GiftBagTypeId::set_has_type_id() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_GiftBagTypeId::clear_has_type_id() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_GiftBagTypeId::clear_type_id() {
  type_id_ = 0;
  clear_has_type_id();
}
inline ::google::protobuf::int32 GM_GiftBagTypeId::type_id() const {
  return type_id_;
}
inline void GM_GiftBagTypeId::set_type_id(::google::protobuf::int32 value) {
  set_has_type_id();
  type_id_ = value;
}

// -------------------------------------------------------------------

// GM_GiftBagRecord

// required int32 type_id = 1;
inline bool GM_GiftBagRecord::has_type_id() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_GiftBagRecord::set_has_type_id() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_GiftBagRecord::clear_has_type_id() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_GiftBagRecord::clear_type_id() {
  type_id_ = 0;
  clear_has_type_id();
}
inline ::google::protobuf::int32 GM_GiftBagRecord::type_id() const {
  return type_id_;
}
inline void GM_GiftBagRecord::set_type_id(::google::protobuf::int32 value) {
  set_has_type_id();
  type_id_ = value;
}

// required int32 objectid = 2;
inline bool GM_GiftBagRecord::has_objectid() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void GM_GiftBagRecord::set_has_objectid() {
  _has_bits_[0] |= 0x00000002u;
}
inline void GM_GiftBagRecord::clear_has_objectid() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void GM_GiftBagRecord::clear_objectid() {
  objectid_ = 0;
  clear_has_objectid();
}
inline ::google::protobuf::int32 GM_GiftBagRecord::objectid() const {
  return objectid_;
}
inline void GM_GiftBagRecord::set_objectid(::google::protobuf::int32 value) {
  set_has_objectid();
  objectid_ = value;
}

// required int32 objcount = 3;
inline bool GM_GiftBagRecord::has_objcount() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void GM_GiftBagRecord::set_has_objcount() {
  _has_bits_[0] |= 0x00000004u;
}
inline void GM_GiftBagRecord::clear_has_objcount() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void GM_GiftBagRecord::clear_objcount() {
  objcount_ = 0;
  clear_has_objcount();
}
inline ::google::protobuf::int32 GM_GiftBagRecord::objcount() const {
  return objcount_;
}
inline void GM_GiftBagRecord::set_objcount(::google::protobuf::int32 value) {
  set_has_objcount();
  objcount_ = value;
}

// required int32 objlevel = 4;
inline bool GM_GiftBagRecord::has_objlevel() const {
  return (_has_bits_[0] & 0x00000008u) != 0;
}
inline void GM_GiftBagRecord::set_has_objlevel() {
  _has_bits_[0] |= 0x00000008u;
}
inline void GM_GiftBagRecord::clear_has_objlevel() {
  _has_bits_[0] &= ~0x00000008u;
}
inline void GM_GiftBagRecord::clear_objlevel() {
  objlevel_ = 0;
  clear_has_objlevel();
}
inline ::google::protobuf::int32 GM_GiftBagRecord::objlevel() const {
  return objlevel_;
}
inline void GM_GiftBagRecord::set_objlevel(::google::protobuf::int32 value) {
  set_has_objlevel();
  objlevel_ = value;
}

// required int32 profession = 5;
inline bool GM_GiftBagRecord::has_profession() const {
  return (_has_bits_[0] & 0x00000010u) != 0;
}
inline void GM_GiftBagRecord::set_has_profession() {
  _has_bits_[0] |= 0x00000010u;
}
inline void GM_GiftBagRecord::clear_has_profession() {
  _has_bits_[0] &= ~0x00000010u;
}
inline void GM_GiftBagRecord::clear_profession() {
  profession_ = 0;
  clear_has_profession();
}
inline ::google::protobuf::int32 GM_GiftBagRecord::profession() const {
  return profession_;
}
inline void GM_GiftBagRecord::set_profession(::google::protobuf::int32 value) {
  set_has_profession();
  profession_ = value;
}

// required int32 validtime = 6;
inline bool GM_GiftBagRecord::has_validtime() const {
  return (_has_bits_[0] & 0x00000020u) != 0;
}
inline void GM_GiftBagRecord::set_has_validtime() {
  _has_bits_[0] |= 0x00000020u;
}
inline void GM_GiftBagRecord::clear_has_validtime() {
  _has_bits_[0] &= ~0x00000020u;
}
inline void GM_GiftBagRecord::clear_validtime() {
  validtime_ = 0;
  clear_has_validtime();
}
inline ::google::protobuf::int32 GM_GiftBagRecord::validtime() const {
  return validtime_;
}
inline void GM_GiftBagRecord::set_validtime(::google::protobuf::int32 value) {
  set_has_validtime();
  validtime_ = value;
}

// -------------------------------------------------------------------

// GM_GiftBagGift

// required int32 giftid = 1;
inline bool GM_GiftBagGift::has_giftid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_GiftBagGift::set_has_giftid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_GiftBagGift::clear_has_giftid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_GiftBagGift::clear_giftid() {
  giftid_ = 0;
  clear_has_giftid();
}
inline ::google::protobuf::int32 GM_GiftBagGift::giftid() const {
  return giftid_;
}
inline void GM_GiftBagGift::set_giftid(::google::protobuf::int32 value) {
  set_has_giftid();
  giftid_ = value;
}

// repeated .GM_GiftBagRecord gift = 2;
inline int GM_GiftBagGift::gift_size() const {
  return gift_.size();
}
inline void GM_GiftBagGift::clear_gift() {
  gift_.Clear();
}
inline const ::GM_GiftBagRecord& GM_GiftBagGift::gift(int index) const {
  return gift_.Get(index);
}
inline ::GM_GiftBagRecord* GM_GiftBagGift::mutable_gift(int index) {
  return gift_.Mutable(index);
}
inline ::GM_GiftBagRecord* GM_GiftBagGift::add_gift() {
  return gift_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::GM_GiftBagRecord >&
GM_GiftBagGift::gift() const {
  return gift_;
}
inline ::google::protobuf::RepeatedPtrField< ::GM_GiftBagRecord >*
GM_GiftBagGift::mutable_gift() {
  return &gift_;
}

// -------------------------------------------------------------------

// GM_GiftBagList

// required uint32 count = 1;
inline bool GM_GiftBagList::has_count() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_GiftBagList::set_has_count() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_GiftBagList::clear_has_count() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_GiftBagList::clear_count() {
  count_ = 0u;
  clear_has_count();
}
inline ::google::protobuf::uint32 GM_GiftBagList::count() const {
  return count_;
}
inline void GM_GiftBagList::set_count(::google::protobuf::uint32 value) {
  set_has_count();
  count_ = value;
}

// required uint32 version = 2;
inline bool GM_GiftBagList::has_version() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void GM_GiftBagList::set_has_version() {
  _has_bits_[0] |= 0x00000002u;
}
inline void GM_GiftBagList::clear_has_version() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void GM_GiftBagList::clear_version() {
  version_ = 0u;
  clear_has_version();
}
inline ::google::protobuf::uint32 GM_GiftBagList::version() const {
  return version_;
}
inline void GM_GiftBagList::set_version(::google::protobuf::uint32 value) {
  set_has_version();
  version_ = value;
}

// repeated .GM_GiftBagGift gifts = 3;
inline int GM_GiftBagList::gifts_size() const {
  return gifts_.size();
}
inline void GM_GiftBagList::clear_gifts() {
  gifts_.Clear();
}
inline const ::GM_GiftBagGift& GM_GiftBagList::gifts(int index) const {
  return gifts_.Get(index);
}
inline ::GM_GiftBagGift* GM_GiftBagList::mutable_gifts(int index) {
  return gifts_.Mutable(index);
}
inline ::GM_GiftBagGift* GM_GiftBagList::add_gifts() {
  return gifts_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::GM_GiftBagGift >&
GM_GiftBagList::gifts() const {
  return gifts_;
}
inline ::google::protobuf::RepeatedPtrField< ::GM_GiftBagGift >*
GM_GiftBagList::mutable_gifts() {
  return &gifts_;
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

#endif  // PROTOBUF_SP_5fGiftbag_2etxt__INCLUDED