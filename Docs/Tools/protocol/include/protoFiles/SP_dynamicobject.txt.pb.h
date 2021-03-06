// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_dynamicobject.txt

#ifndef PROTOBUF_SP_5fdynamicobject_2etxt__INCLUDED
#define PROTOBUF_SP_5fdynamicobject_2etxt__INCLUDED

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
void  protobuf_AddDesc_SP_5fdynamicobject_2etxt();
void protobuf_AssignDesc_SP_5fdynamicobject_2etxt();
void protobuf_ShutdownFile_SP_5fdynamicobject_2etxt();

class GM_DynamicObject;
class GM_DynamicObjectTypeId;
class GM_DynObjects;

// ===================================================================

class GM_DynamicObject : public ::google::protobuf::Message {
 public:
  GM_DynamicObject();
  virtual ~GM_DynamicObject();

  GM_DynamicObject(const GM_DynamicObject& from);

  inline GM_DynamicObject& operator=(const GM_DynamicObject& from) {
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
  static const GM_DynamicObject& default_instance();

  void Swap(GM_DynamicObject* other);

  // implements Message ----------------------------------------------

  GM_DynamicObject* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_DynamicObject& from);
  void MergeFrom(const GM_DynamicObject& from);
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

  // required int32 m_TypeID = 1;
  inline bool has_m_typeid() const;
  inline void clear_m_typeid();
  static const int kMTypeIDFieldNumber = 1;
  inline ::google::protobuf::int32 m_typeid() const;
  inline void set_m_typeid(::google::protobuf::int32 value);

  // required string m_Name = 2;
  inline bool has_m_name() const;
  inline void clear_m_name();
  static const int kMNameFieldNumber = 2;
  inline const ::std::string& m_name() const;
  inline void set_m_name(const ::std::string& value);
  inline void set_m_name(const char* value);
  inline void set_m_name(const char* value, size_t size);
  inline ::std::string* mutable_m_name();
  inline ::std::string* release_m_name();
  inline void set_allocated_m_name(::std::string* m_name);

  // required int32 m_UsedLevel = 3;
  inline bool has_m_usedlevel() const;
  inline void clear_m_usedlevel();
  static const int kMUsedLevelFieldNumber = 3;
  inline ::google::protobuf::int32 m_usedlevel() const;
  inline void set_m_usedlevel(::google::protobuf::int32 value);

  // required int32 m_bagType = 4;
  inline bool has_m_bagtype() const;
  inline void clear_m_bagtype();
  static const int kMBagTypeFieldNumber = 4;
  inline ::google::protobuf::int32 m_bagtype() const;
  inline void set_m_bagtype(::google::protobuf::int32 value);

  // required int32 m_objType = 5;
  inline bool has_m_objtype() const;
  inline void clear_m_objtype();
  static const int kMObjTypeFieldNumber = 5;
  inline ::google::protobuf::int32 m_objtype() const;
  inline void set_m_objtype(::google::protobuf::int32 value);

  // required int32 m_Color = 6;
  inline bool has_m_color() const;
  inline void clear_m_color();
  static const int kMColorFieldNumber = 6;
  inline ::google::protobuf::int32 m_color() const;
  inline void set_m_color(::google::protobuf::int32 value);

  // required int32 m_StackLimit = 7;
  inline bool has_m_stacklimit() const;
  inline void clear_m_stacklimit();
  static const int kMStackLimitFieldNumber = 7;
  inline ::google::protobuf::int32 m_stacklimit() const;
  inline void set_m_stacklimit(::google::protobuf::int32 value);

  // required int32 m_BuyGold = 8;
  inline bool has_m_buygold() const;
  inline void clear_m_buygold();
  static const int kMBuyGoldFieldNumber = 8;
  inline ::google::protobuf::int32 m_buygold() const;
  inline void set_m_buygold(::google::protobuf::int32 value);

  // required string m_Icon = 9;
  inline bool has_m_icon() const;
  inline void clear_m_icon();
  static const int kMIconFieldNumber = 9;
  inline const ::std::string& m_icon() const;
  inline void set_m_icon(const ::std::string& value);
  inline void set_m_icon(const char* value);
  inline void set_m_icon(const char* value, size_t size);
  inline ::std::string* mutable_m_icon();
  inline ::std::string* release_m_icon();
  inline void set_allocated_m_icon(::std::string* m_icon);

  // required int32 m_SellGold = 10;
  inline bool has_m_sellgold() const;
  inline void clear_m_sellgold();
  static const int kMSellGoldFieldNumber = 10;
  inline ::google::protobuf::int32 m_sellgold() const;
  inline void set_m_sellgold(::google::protobuf::int32 value);

  // required int32 m_ValidTime = 11;
  inline bool has_m_validtime() const;
  inline void clear_m_validtime();
  static const int kMValidTimeFieldNumber = 11;
  inline ::google::protobuf::int32 m_validtime() const;
  inline void set_m_validtime(::google::protobuf::int32 value);

  // required string m_Describe = 12;
  inline bool has_m_describe() const;
  inline void clear_m_describe();
  static const int kMDescribeFieldNumber = 12;
  inline const ::std::string& m_describe() const;
  inline void set_m_describe(const ::std::string& value);
  inline void set_m_describe(const char* value);
  inline void set_m_describe(const char* value, size_t size);
  inline ::std::string* mutable_m_describe();
  inline ::std::string* release_m_describe();
  inline void set_allocated_m_describe(::std::string* m_describe);

  // @@protoc_insertion_point(class_scope:GM_DynamicObject)
 private:
  inline void set_has_m_typeid();
  inline void clear_has_m_typeid();
  inline void set_has_m_name();
  inline void clear_has_m_name();
  inline void set_has_m_usedlevel();
  inline void clear_has_m_usedlevel();
  inline void set_has_m_bagtype();
  inline void clear_has_m_bagtype();
  inline void set_has_m_objtype();
  inline void clear_has_m_objtype();
  inline void set_has_m_color();
  inline void clear_has_m_color();
  inline void set_has_m_stacklimit();
  inline void clear_has_m_stacklimit();
  inline void set_has_m_buygold();
  inline void clear_has_m_buygold();
  inline void set_has_m_icon();
  inline void clear_has_m_icon();
  inline void set_has_m_sellgold();
  inline void clear_has_m_sellgold();
  inline void set_has_m_validtime();
  inline void clear_has_m_validtime();
  inline void set_has_m_describe();
  inline void clear_has_m_describe();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::std::string* m_name_;
  ::google::protobuf::int32 m_typeid_;
  ::google::protobuf::int32 m_usedlevel_;
  ::google::protobuf::int32 m_bagtype_;
  ::google::protobuf::int32 m_objtype_;
  ::google::protobuf::int32 m_color_;
  ::google::protobuf::int32 m_stacklimit_;
  ::std::string* m_icon_;
  ::google::protobuf::int32 m_buygold_;
  ::google::protobuf::int32 m_sellgold_;
  ::std::string* m_describe_;
  ::google::protobuf::int32 m_validtime_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(12 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fdynamicobject_2etxt();
  friend void protobuf_AssignDesc_SP_5fdynamicobject_2etxt();
  friend void protobuf_ShutdownFile_SP_5fdynamicobject_2etxt();

  void InitAsDefaultInstance();
  static GM_DynamicObject* default_instance_;
};
// -------------------------------------------------------------------

class GM_DynamicObjectTypeId : public ::google::protobuf::Message {
 public:
  GM_DynamicObjectTypeId();
  virtual ~GM_DynamicObjectTypeId();

  GM_DynamicObjectTypeId(const GM_DynamicObjectTypeId& from);

  inline GM_DynamicObjectTypeId& operator=(const GM_DynamicObjectTypeId& from) {
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
  static const GM_DynamicObjectTypeId& default_instance();

  void Swap(GM_DynamicObjectTypeId* other);

  // implements Message ----------------------------------------------

  GM_DynamicObjectTypeId* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_DynamicObjectTypeId& from);
  void MergeFrom(const GM_DynamicObjectTypeId& from);
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

  // @@protoc_insertion_point(class_scope:GM_DynamicObjectTypeId)
 private:
  inline void set_has_type_id();
  inline void clear_has_type_id();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 type_id_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(1 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fdynamicobject_2etxt();
  friend void protobuf_AssignDesc_SP_5fdynamicobject_2etxt();
  friend void protobuf_ShutdownFile_SP_5fdynamicobject_2etxt();

  void InitAsDefaultInstance();
  static GM_DynamicObjectTypeId* default_instance_;
};
// -------------------------------------------------------------------

class GM_DynObjects : public ::google::protobuf::Message {
 public:
  GM_DynObjects();
  virtual ~GM_DynObjects();

  GM_DynObjects(const GM_DynObjects& from);

  inline GM_DynObjects& operator=(const GM_DynObjects& from) {
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
  static const GM_DynObjects& default_instance();

  void Swap(GM_DynObjects* other);

  // implements Message ----------------------------------------------

  GM_DynObjects* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_DynObjects& from);
  void MergeFrom(const GM_DynObjects& from);
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

  // required int32 version = 2;
  inline bool has_version() const;
  inline void clear_version();
  static const int kVersionFieldNumber = 2;
  inline ::google::protobuf::int32 version() const;
  inline void set_version(::google::protobuf::int32 value);

  // repeated .GM_DynamicObject object = 3;
  inline int object_size() const;
  inline void clear_object();
  static const int kObjectFieldNumber = 3;
  inline const ::GM_DynamicObject& object(int index) const;
  inline ::GM_DynamicObject* mutable_object(int index);
  inline ::GM_DynamicObject* add_object();
  inline const ::google::protobuf::RepeatedPtrField< ::GM_DynamicObject >&
      object() const;
  inline ::google::protobuf::RepeatedPtrField< ::GM_DynamicObject >*
      mutable_object();

  // @@protoc_insertion_point(class_scope:GM_DynObjects)
 private:
  inline void set_has_count();
  inline void clear_has_count();
  inline void set_has_version();
  inline void clear_has_version();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 count_;
  ::google::protobuf::int32 version_;
  ::google::protobuf::RepeatedPtrField< ::GM_DynamicObject > object_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(3 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fdynamicobject_2etxt();
  friend void protobuf_AssignDesc_SP_5fdynamicobject_2etxt();
  friend void protobuf_ShutdownFile_SP_5fdynamicobject_2etxt();

  void InitAsDefaultInstance();
  static GM_DynObjects* default_instance_;
};
// ===================================================================


// ===================================================================

// GM_DynamicObject

// required int32 m_TypeID = 1;
inline bool GM_DynamicObject::has_m_typeid() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_DynamicObject::set_has_m_typeid() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_DynamicObject::clear_has_m_typeid() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_DynamicObject::clear_m_typeid() {
  m_typeid_ = 0;
  clear_has_m_typeid();
}
inline ::google::protobuf::int32 GM_DynamicObject::m_typeid() const {
  return m_typeid_;
}
inline void GM_DynamicObject::set_m_typeid(::google::protobuf::int32 value) {
  set_has_m_typeid();
  m_typeid_ = value;
}

// required string m_Name = 2;
inline bool GM_DynamicObject::has_m_name() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void GM_DynamicObject::set_has_m_name() {
  _has_bits_[0] |= 0x00000002u;
}
inline void GM_DynamicObject::clear_has_m_name() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void GM_DynamicObject::clear_m_name() {
  if (m_name_ != &::google::protobuf::internal::kEmptyString) {
    m_name_->clear();
  }
  clear_has_m_name();
}
inline const ::std::string& GM_DynamicObject::m_name() const {
  return *m_name_;
}
inline void GM_DynamicObject::set_m_name(const ::std::string& value) {
  set_has_m_name();
  if (m_name_ == &::google::protobuf::internal::kEmptyString) {
    m_name_ = new ::std::string;
  }
  m_name_->assign(value);
}
inline void GM_DynamicObject::set_m_name(const char* value) {
  set_has_m_name();
  if (m_name_ == &::google::protobuf::internal::kEmptyString) {
    m_name_ = new ::std::string;
  }
  m_name_->assign(value);
}
inline void GM_DynamicObject::set_m_name(const char* value, size_t size) {
  set_has_m_name();
  if (m_name_ == &::google::protobuf::internal::kEmptyString) {
    m_name_ = new ::std::string;
  }
  m_name_->assign(reinterpret_cast<const char*>(value), size);
}
inline ::std::string* GM_DynamicObject::mutable_m_name() {
  set_has_m_name();
  if (m_name_ == &::google::protobuf::internal::kEmptyString) {
    m_name_ = new ::std::string;
  }
  return m_name_;
}
inline ::std::string* GM_DynamicObject::release_m_name() {
  clear_has_m_name();
  if (m_name_ == &::google::protobuf::internal::kEmptyString) {
    return NULL;
  } else {
    ::std::string* temp = m_name_;
    m_name_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
    return temp;
  }
}
inline void GM_DynamicObject::set_allocated_m_name(::std::string* m_name) {
  if (m_name_ != &::google::protobuf::internal::kEmptyString) {
    delete m_name_;
  }
  if (m_name) {
    set_has_m_name();
    m_name_ = m_name;
  } else {
    clear_has_m_name();
    m_name_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
  }
}

// required int32 m_UsedLevel = 3;
inline bool GM_DynamicObject::has_m_usedlevel() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void GM_DynamicObject::set_has_m_usedlevel() {
  _has_bits_[0] |= 0x00000004u;
}
inline void GM_DynamicObject::clear_has_m_usedlevel() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void GM_DynamicObject::clear_m_usedlevel() {
  m_usedlevel_ = 0;
  clear_has_m_usedlevel();
}
inline ::google::protobuf::int32 GM_DynamicObject::m_usedlevel() const {
  return m_usedlevel_;
}
inline void GM_DynamicObject::set_m_usedlevel(::google::protobuf::int32 value) {
  set_has_m_usedlevel();
  m_usedlevel_ = value;
}

// required int32 m_bagType = 4;
inline bool GM_DynamicObject::has_m_bagtype() const {
  return (_has_bits_[0] & 0x00000008u) != 0;
}
inline void GM_DynamicObject::set_has_m_bagtype() {
  _has_bits_[0] |= 0x00000008u;
}
inline void GM_DynamicObject::clear_has_m_bagtype() {
  _has_bits_[0] &= ~0x00000008u;
}
inline void GM_DynamicObject::clear_m_bagtype() {
  m_bagtype_ = 0;
  clear_has_m_bagtype();
}
inline ::google::protobuf::int32 GM_DynamicObject::m_bagtype() const {
  return m_bagtype_;
}
inline void GM_DynamicObject::set_m_bagtype(::google::protobuf::int32 value) {
  set_has_m_bagtype();
  m_bagtype_ = value;
}

// required int32 m_objType = 5;
inline bool GM_DynamicObject::has_m_objtype() const {
  return (_has_bits_[0] & 0x00000010u) != 0;
}
inline void GM_DynamicObject::set_has_m_objtype() {
  _has_bits_[0] |= 0x00000010u;
}
inline void GM_DynamicObject::clear_has_m_objtype() {
  _has_bits_[0] &= ~0x00000010u;
}
inline void GM_DynamicObject::clear_m_objtype() {
  m_objtype_ = 0;
  clear_has_m_objtype();
}
inline ::google::protobuf::int32 GM_DynamicObject::m_objtype() const {
  return m_objtype_;
}
inline void GM_DynamicObject::set_m_objtype(::google::protobuf::int32 value) {
  set_has_m_objtype();
  m_objtype_ = value;
}

// required int32 m_Color = 6;
inline bool GM_DynamicObject::has_m_color() const {
  return (_has_bits_[0] & 0x00000020u) != 0;
}
inline void GM_DynamicObject::set_has_m_color() {
  _has_bits_[0] |= 0x00000020u;
}
inline void GM_DynamicObject::clear_has_m_color() {
  _has_bits_[0] &= ~0x00000020u;
}
inline void GM_DynamicObject::clear_m_color() {
  m_color_ = 0;
  clear_has_m_color();
}
inline ::google::protobuf::int32 GM_DynamicObject::m_color() const {
  return m_color_;
}
inline void GM_DynamicObject::set_m_color(::google::protobuf::int32 value) {
  set_has_m_color();
  m_color_ = value;
}

// required int32 m_StackLimit = 7;
inline bool GM_DynamicObject::has_m_stacklimit() const {
  return (_has_bits_[0] & 0x00000040u) != 0;
}
inline void GM_DynamicObject::set_has_m_stacklimit() {
  _has_bits_[0] |= 0x00000040u;
}
inline void GM_DynamicObject::clear_has_m_stacklimit() {
  _has_bits_[0] &= ~0x00000040u;
}
inline void GM_DynamicObject::clear_m_stacklimit() {
  m_stacklimit_ = 0;
  clear_has_m_stacklimit();
}
inline ::google::protobuf::int32 GM_DynamicObject::m_stacklimit() const {
  return m_stacklimit_;
}
inline void GM_DynamicObject::set_m_stacklimit(::google::protobuf::int32 value) {
  set_has_m_stacklimit();
  m_stacklimit_ = value;
}

// required int32 m_BuyGold = 8;
inline bool GM_DynamicObject::has_m_buygold() const {
  return (_has_bits_[0] & 0x00000080u) != 0;
}
inline void GM_DynamicObject::set_has_m_buygold() {
  _has_bits_[0] |= 0x00000080u;
}
inline void GM_DynamicObject::clear_has_m_buygold() {
  _has_bits_[0] &= ~0x00000080u;
}
inline void GM_DynamicObject::clear_m_buygold() {
  m_buygold_ = 0;
  clear_has_m_buygold();
}
inline ::google::protobuf::int32 GM_DynamicObject::m_buygold() const {
  return m_buygold_;
}
inline void GM_DynamicObject::set_m_buygold(::google::protobuf::int32 value) {
  set_has_m_buygold();
  m_buygold_ = value;
}

// required string m_Icon = 9;
inline bool GM_DynamicObject::has_m_icon() const {
  return (_has_bits_[0] & 0x00000100u) != 0;
}
inline void GM_DynamicObject::set_has_m_icon() {
  _has_bits_[0] |= 0x00000100u;
}
inline void GM_DynamicObject::clear_has_m_icon() {
  _has_bits_[0] &= ~0x00000100u;
}
inline void GM_DynamicObject::clear_m_icon() {
  if (m_icon_ != &::google::protobuf::internal::kEmptyString) {
    m_icon_->clear();
  }
  clear_has_m_icon();
}
inline const ::std::string& GM_DynamicObject::m_icon() const {
  return *m_icon_;
}
inline void GM_DynamicObject::set_m_icon(const ::std::string& value) {
  set_has_m_icon();
  if (m_icon_ == &::google::protobuf::internal::kEmptyString) {
    m_icon_ = new ::std::string;
  }
  m_icon_->assign(value);
}
inline void GM_DynamicObject::set_m_icon(const char* value) {
  set_has_m_icon();
  if (m_icon_ == &::google::protobuf::internal::kEmptyString) {
    m_icon_ = new ::std::string;
  }
  m_icon_->assign(value);
}
inline void GM_DynamicObject::set_m_icon(const char* value, size_t size) {
  set_has_m_icon();
  if (m_icon_ == &::google::protobuf::internal::kEmptyString) {
    m_icon_ = new ::std::string;
  }
  m_icon_->assign(reinterpret_cast<const char*>(value), size);
}
inline ::std::string* GM_DynamicObject::mutable_m_icon() {
  set_has_m_icon();
  if (m_icon_ == &::google::protobuf::internal::kEmptyString) {
    m_icon_ = new ::std::string;
  }
  return m_icon_;
}
inline ::std::string* GM_DynamicObject::release_m_icon() {
  clear_has_m_icon();
  if (m_icon_ == &::google::protobuf::internal::kEmptyString) {
    return NULL;
  } else {
    ::std::string* temp = m_icon_;
    m_icon_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
    return temp;
  }
}
inline void GM_DynamicObject::set_allocated_m_icon(::std::string* m_icon) {
  if (m_icon_ != &::google::protobuf::internal::kEmptyString) {
    delete m_icon_;
  }
  if (m_icon) {
    set_has_m_icon();
    m_icon_ = m_icon;
  } else {
    clear_has_m_icon();
    m_icon_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
  }
}

// required int32 m_SellGold = 10;
inline bool GM_DynamicObject::has_m_sellgold() const {
  return (_has_bits_[0] & 0x00000200u) != 0;
}
inline void GM_DynamicObject::set_has_m_sellgold() {
  _has_bits_[0] |= 0x00000200u;
}
inline void GM_DynamicObject::clear_has_m_sellgold() {
  _has_bits_[0] &= ~0x00000200u;
}
inline void GM_DynamicObject::clear_m_sellgold() {
  m_sellgold_ = 0;
  clear_has_m_sellgold();
}
inline ::google::protobuf::int32 GM_DynamicObject::m_sellgold() const {
  return m_sellgold_;
}
inline void GM_DynamicObject::set_m_sellgold(::google::protobuf::int32 value) {
  set_has_m_sellgold();
  m_sellgold_ = value;
}

// required int32 m_ValidTime = 11;
inline bool GM_DynamicObject::has_m_validtime() const {
  return (_has_bits_[0] & 0x00000400u) != 0;
}
inline void GM_DynamicObject::set_has_m_validtime() {
  _has_bits_[0] |= 0x00000400u;
}
inline void GM_DynamicObject::clear_has_m_validtime() {
  _has_bits_[0] &= ~0x00000400u;
}
inline void GM_DynamicObject::clear_m_validtime() {
  m_validtime_ = 0;
  clear_has_m_validtime();
}
inline ::google::protobuf::int32 GM_DynamicObject::m_validtime() const {
  return m_validtime_;
}
inline void GM_DynamicObject::set_m_validtime(::google::protobuf::int32 value) {
  set_has_m_validtime();
  m_validtime_ = value;
}

// required string m_Describe = 12;
inline bool GM_DynamicObject::has_m_describe() const {
  return (_has_bits_[0] & 0x00000800u) != 0;
}
inline void GM_DynamicObject::set_has_m_describe() {
  _has_bits_[0] |= 0x00000800u;
}
inline void GM_DynamicObject::clear_has_m_describe() {
  _has_bits_[0] &= ~0x00000800u;
}
inline void GM_DynamicObject::clear_m_describe() {
  if (m_describe_ != &::google::protobuf::internal::kEmptyString) {
    m_describe_->clear();
  }
  clear_has_m_describe();
}
inline const ::std::string& GM_DynamicObject::m_describe() const {
  return *m_describe_;
}
inline void GM_DynamicObject::set_m_describe(const ::std::string& value) {
  set_has_m_describe();
  if (m_describe_ == &::google::protobuf::internal::kEmptyString) {
    m_describe_ = new ::std::string;
  }
  m_describe_->assign(value);
}
inline void GM_DynamicObject::set_m_describe(const char* value) {
  set_has_m_describe();
  if (m_describe_ == &::google::protobuf::internal::kEmptyString) {
    m_describe_ = new ::std::string;
  }
  m_describe_->assign(value);
}
inline void GM_DynamicObject::set_m_describe(const char* value, size_t size) {
  set_has_m_describe();
  if (m_describe_ == &::google::protobuf::internal::kEmptyString) {
    m_describe_ = new ::std::string;
  }
  m_describe_->assign(reinterpret_cast<const char*>(value), size);
}
inline ::std::string* GM_DynamicObject::mutable_m_describe() {
  set_has_m_describe();
  if (m_describe_ == &::google::protobuf::internal::kEmptyString) {
    m_describe_ = new ::std::string;
  }
  return m_describe_;
}
inline ::std::string* GM_DynamicObject::release_m_describe() {
  clear_has_m_describe();
  if (m_describe_ == &::google::protobuf::internal::kEmptyString) {
    return NULL;
  } else {
    ::std::string* temp = m_describe_;
    m_describe_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
    return temp;
  }
}
inline void GM_DynamicObject::set_allocated_m_describe(::std::string* m_describe) {
  if (m_describe_ != &::google::protobuf::internal::kEmptyString) {
    delete m_describe_;
  }
  if (m_describe) {
    set_has_m_describe();
    m_describe_ = m_describe;
  } else {
    clear_has_m_describe();
    m_describe_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
  }
}

// -------------------------------------------------------------------

// GM_DynamicObjectTypeId

// required int32 type_id = 1;
inline bool GM_DynamicObjectTypeId::has_type_id() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_DynamicObjectTypeId::set_has_type_id() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_DynamicObjectTypeId::clear_has_type_id() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_DynamicObjectTypeId::clear_type_id() {
  type_id_ = 0;
  clear_has_type_id();
}
inline ::google::protobuf::int32 GM_DynamicObjectTypeId::type_id() const {
  return type_id_;
}
inline void GM_DynamicObjectTypeId::set_type_id(::google::protobuf::int32 value) {
  set_has_type_id();
  type_id_ = value;
}

// -------------------------------------------------------------------

// GM_DynObjects

// required int32 count = 1;
inline bool GM_DynObjects::has_count() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_DynObjects::set_has_count() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_DynObjects::clear_has_count() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_DynObjects::clear_count() {
  count_ = 0;
  clear_has_count();
}
inline ::google::protobuf::int32 GM_DynObjects::count() const {
  return count_;
}
inline void GM_DynObjects::set_count(::google::protobuf::int32 value) {
  set_has_count();
  count_ = value;
}

// required int32 version = 2;
inline bool GM_DynObjects::has_version() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void GM_DynObjects::set_has_version() {
  _has_bits_[0] |= 0x00000002u;
}
inline void GM_DynObjects::clear_has_version() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void GM_DynObjects::clear_version() {
  version_ = 0;
  clear_has_version();
}
inline ::google::protobuf::int32 GM_DynObjects::version() const {
  return version_;
}
inline void GM_DynObjects::set_version(::google::protobuf::int32 value) {
  set_has_version();
  version_ = value;
}

// repeated .GM_DynamicObject object = 3;
inline int GM_DynObjects::object_size() const {
  return object_.size();
}
inline void GM_DynObjects::clear_object() {
  object_.Clear();
}
inline const ::GM_DynamicObject& GM_DynObjects::object(int index) const {
  return object_.Get(index);
}
inline ::GM_DynamicObject* GM_DynObjects::mutable_object(int index) {
  return object_.Mutable(index);
}
inline ::GM_DynamicObject* GM_DynObjects::add_object() {
  return object_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::GM_DynamicObject >&
GM_DynObjects::object() const {
  return object_;
}
inline ::google::protobuf::RepeatedPtrField< ::GM_DynamicObject >*
GM_DynObjects::mutable_object() {
  return &object_;
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

#endif  // PROTOBUF_SP_5fdynamicobject_2etxt__INCLUDED
