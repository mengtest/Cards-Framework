// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_Chat.txt

#ifndef PROTOBUF_SP_5fChat_2etxt__INCLUDED
#define PROTOBUF_SP_5fChat_2etxt__INCLUDED

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
void  protobuf_AddDesc_SP_5fChat_2etxt();
void protobuf_AssignDesc_SP_5fChat_2etxt();
void protobuf_ShutdownFile_SP_5fChat_2etxt();

class GM_SystemChatPack;
class GM_ToolAudios;
class GM_AudiosContent;

// ===================================================================

class GM_SystemChatPack : public ::google::protobuf::Message {
 public:
  GM_SystemChatPack();
  virtual ~GM_SystemChatPack();

  GM_SystemChatPack(const GM_SystemChatPack& from);

  inline GM_SystemChatPack& operator=(const GM_SystemChatPack& from) {
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
  static const GM_SystemChatPack& default_instance();

  void Swap(GM_SystemChatPack* other);

  // implements Message ----------------------------------------------

  GM_SystemChatPack* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_SystemChatPack& from);
  void MergeFrom(const GM_SystemChatPack& from);
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

  // required int32 colorType = 1;
  inline bool has_colortype() const;
  inline void clear_colortype();
  static const int kColorTypeFieldNumber = 1;
  inline ::google::protobuf::int32 colortype() const;
  inline void set_colortype(::google::protobuf::int32 value);

  // required int32 sendType = 2;
  inline bool has_sendtype() const;
  inline void clear_sendtype();
  static const int kSendTypeFieldNumber = 2;
  inline ::google::protobuf::int32 sendtype() const;
  inline void set_sendtype(::google::protobuf::int32 value);

  // optional string userData = 3;
  inline bool has_userdata() const;
  inline void clear_userdata();
  static const int kUserDataFieldNumber = 3;
  inline const ::std::string& userdata() const;
  inline void set_userdata(const ::std::string& value);
  inline void set_userdata(const char* value);
  inline void set_userdata(const char* value, size_t size);
  inline ::std::string* mutable_userdata();
  inline ::std::string* release_userdata();
  inline void set_allocated_userdata(::std::string* userdata);

  // repeated string sendStr = 4;
  inline int sendstr_size() const;
  inline void clear_sendstr();
  static const int kSendStrFieldNumber = 4;
  inline const ::std::string& sendstr(int index) const;
  inline ::std::string* mutable_sendstr(int index);
  inline void set_sendstr(int index, const ::std::string& value);
  inline void set_sendstr(int index, const char* value);
  inline void set_sendstr(int index, const char* value, size_t size);
  inline ::std::string* add_sendstr();
  inline void add_sendstr(const ::std::string& value);
  inline void add_sendstr(const char* value);
  inline void add_sendstr(const char* value, size_t size);
  inline const ::google::protobuf::RepeatedPtrField< ::std::string>& sendstr() const;
  inline ::google::protobuf::RepeatedPtrField< ::std::string>* mutable_sendstr();

  // required int32 channel = 5;
  inline bool has_channel() const;
  inline void clear_channel();
  static const int kChannelFieldNumber = 5;
  inline ::google::protobuf::int32 channel() const;
  inline void set_channel(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:GM_SystemChatPack)
 private:
  inline void set_has_colortype();
  inline void clear_has_colortype();
  inline void set_has_sendtype();
  inline void clear_has_sendtype();
  inline void set_has_userdata();
  inline void clear_has_userdata();
  inline void set_has_channel();
  inline void clear_has_channel();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 colortype_;
  ::google::protobuf::int32 sendtype_;
  ::std::string* userdata_;
  ::google::protobuf::RepeatedPtrField< ::std::string> sendstr_;
  ::google::protobuf::int32 channel_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(5 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fChat_2etxt();
  friend void protobuf_AssignDesc_SP_5fChat_2etxt();
  friend void protobuf_ShutdownFile_SP_5fChat_2etxt();

  void InitAsDefaultInstance();
  static GM_SystemChatPack* default_instance_;
};
// -------------------------------------------------------------------

class GM_ToolAudios : public ::google::protobuf::Message {
 public:
  GM_ToolAudios();
  virtual ~GM_ToolAudios();

  GM_ToolAudios(const GM_ToolAudios& from);

  inline GM_ToolAudios& operator=(const GM_ToolAudios& from) {
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
  static const GM_ToolAudios& default_instance();

  void Swap(GM_ToolAudios* other);

  // implements Message ----------------------------------------------

  GM_ToolAudios* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_ToolAudios& from);
  void MergeFrom(const GM_ToolAudios& from);
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

  // required int32 audioStart = 1;
  inline bool has_audiostart() const;
  inline void clear_audiostart();
  static const int kAudioStartFieldNumber = 1;
  inline ::google::protobuf::int32 audiostart() const;
  inline void set_audiostart(::google::protobuf::int32 value);

  // required int32 audioEnd = 2;
  inline bool has_audioend() const;
  inline void clear_audioend();
  static const int kAudioEndFieldNumber = 2;
  inline ::google::protobuf::int32 audioend() const;
  inline void set_audioend(::google::protobuf::int32 value);

  // @@protoc_insertion_point(class_scope:GM_ToolAudios)
 private:
  inline void set_has_audiostart();
  inline void clear_has_audiostart();
  inline void set_has_audioend();
  inline void clear_has_audioend();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::int32 audiostart_;
  ::google::protobuf::int32 audioend_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(2 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fChat_2etxt();
  friend void protobuf_AssignDesc_SP_5fChat_2etxt();
  friend void protobuf_ShutdownFile_SP_5fChat_2etxt();

  void InitAsDefaultInstance();
  static GM_ToolAudios* default_instance_;
};
// -------------------------------------------------------------------

class GM_AudiosContent : public ::google::protobuf::Message {
 public:
  GM_AudiosContent();
  virtual ~GM_AudiosContent();

  GM_AudiosContent(const GM_AudiosContent& from);

  inline GM_AudiosContent& operator=(const GM_AudiosContent& from) {
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
  static const GM_AudiosContent& default_instance();

  void Swap(GM_AudiosContent* other);

  // implements Message ----------------------------------------------

  GM_AudiosContent* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const GM_AudiosContent& from);
  void MergeFrom(const GM_AudiosContent& from);
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

  // required int32 audiosNum = 1;
  inline bool has_audiosnum() const;
  inline void clear_audiosnum();
  static const int kAudiosNumFieldNumber = 1;
  inline ::google::protobuf::int32 audiosnum() const;
  inline void set_audiosnum(::google::protobuf::int32 value);

  // repeated bytes audios = 2;
  inline int audios_size() const;
  inline void clear_audios();
  static const int kAudiosFieldNumber = 2;
  inline const ::std::string& audios(int index) const;
  inline ::std::string* mutable_audios(int index);
  inline void set_audios(int index, const ::std::string& value);
  inline void set_audios(int index, const char* value);
  inline void set_audios(int index, const void* value, size_t size);
  inline ::std::string* add_audios();
  inline void add_audios(const ::std::string& value);
  inline void add_audios(const char* value);
  inline void add_audios(const void* value, size_t size);
  inline const ::google::protobuf::RepeatedPtrField< ::std::string>& audios() const;
  inline ::google::protobuf::RepeatedPtrField< ::std::string>* mutable_audios();

  // @@protoc_insertion_point(class_scope:GM_AudiosContent)
 private:
  inline void set_has_audiosnum();
  inline void clear_has_audiosnum();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::RepeatedPtrField< ::std::string> audios_;
  ::google::protobuf::int32 audiosnum_;

  mutable int _cached_size_;
  ::google::protobuf::uint32 _has_bits_[(2 + 31) / 32];

  friend void  protobuf_AddDesc_SP_5fChat_2etxt();
  friend void protobuf_AssignDesc_SP_5fChat_2etxt();
  friend void protobuf_ShutdownFile_SP_5fChat_2etxt();

  void InitAsDefaultInstance();
  static GM_AudiosContent* default_instance_;
};
// ===================================================================


// ===================================================================

// GM_SystemChatPack

// required int32 colorType = 1;
inline bool GM_SystemChatPack::has_colortype() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_SystemChatPack::set_has_colortype() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_SystemChatPack::clear_has_colortype() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_SystemChatPack::clear_colortype() {
  colortype_ = 0;
  clear_has_colortype();
}
inline ::google::protobuf::int32 GM_SystemChatPack::colortype() const {
  return colortype_;
}
inline void GM_SystemChatPack::set_colortype(::google::protobuf::int32 value) {
  set_has_colortype();
  colortype_ = value;
}

// required int32 sendType = 2;
inline bool GM_SystemChatPack::has_sendtype() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void GM_SystemChatPack::set_has_sendtype() {
  _has_bits_[0] |= 0x00000002u;
}
inline void GM_SystemChatPack::clear_has_sendtype() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void GM_SystemChatPack::clear_sendtype() {
  sendtype_ = 0;
  clear_has_sendtype();
}
inline ::google::protobuf::int32 GM_SystemChatPack::sendtype() const {
  return sendtype_;
}
inline void GM_SystemChatPack::set_sendtype(::google::protobuf::int32 value) {
  set_has_sendtype();
  sendtype_ = value;
}

// optional string userData = 3;
inline bool GM_SystemChatPack::has_userdata() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void GM_SystemChatPack::set_has_userdata() {
  _has_bits_[0] |= 0x00000004u;
}
inline void GM_SystemChatPack::clear_has_userdata() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void GM_SystemChatPack::clear_userdata() {
  if (userdata_ != &::google::protobuf::internal::kEmptyString) {
    userdata_->clear();
  }
  clear_has_userdata();
}
inline const ::std::string& GM_SystemChatPack::userdata() const {
  return *userdata_;
}
inline void GM_SystemChatPack::set_userdata(const ::std::string& value) {
  set_has_userdata();
  if (userdata_ == &::google::protobuf::internal::kEmptyString) {
    userdata_ = new ::std::string;
  }
  userdata_->assign(value);
}
inline void GM_SystemChatPack::set_userdata(const char* value) {
  set_has_userdata();
  if (userdata_ == &::google::protobuf::internal::kEmptyString) {
    userdata_ = new ::std::string;
  }
  userdata_->assign(value);
}
inline void GM_SystemChatPack::set_userdata(const char* value, size_t size) {
  set_has_userdata();
  if (userdata_ == &::google::protobuf::internal::kEmptyString) {
    userdata_ = new ::std::string;
  }
  userdata_->assign(reinterpret_cast<const char*>(value), size);
}
inline ::std::string* GM_SystemChatPack::mutable_userdata() {
  set_has_userdata();
  if (userdata_ == &::google::protobuf::internal::kEmptyString) {
    userdata_ = new ::std::string;
  }
  return userdata_;
}
inline ::std::string* GM_SystemChatPack::release_userdata() {
  clear_has_userdata();
  if (userdata_ == &::google::protobuf::internal::kEmptyString) {
    return NULL;
  } else {
    ::std::string* temp = userdata_;
    userdata_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
    return temp;
  }
}
inline void GM_SystemChatPack::set_allocated_userdata(::std::string* userdata) {
  if (userdata_ != &::google::protobuf::internal::kEmptyString) {
    delete userdata_;
  }
  if (userdata) {
    set_has_userdata();
    userdata_ = userdata;
  } else {
    clear_has_userdata();
    userdata_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
  }
}

// repeated string sendStr = 4;
inline int GM_SystemChatPack::sendstr_size() const {
  return sendstr_.size();
}
inline void GM_SystemChatPack::clear_sendstr() {
  sendstr_.Clear();
}
inline const ::std::string& GM_SystemChatPack::sendstr(int index) const {
  return sendstr_.Get(index);
}
inline ::std::string* GM_SystemChatPack::mutable_sendstr(int index) {
  return sendstr_.Mutable(index);
}
inline void GM_SystemChatPack::set_sendstr(int index, const ::std::string& value) {
  sendstr_.Mutable(index)->assign(value);
}
inline void GM_SystemChatPack::set_sendstr(int index, const char* value) {
  sendstr_.Mutable(index)->assign(value);
}
inline void GM_SystemChatPack::set_sendstr(int index, const char* value, size_t size) {
  sendstr_.Mutable(index)->assign(
    reinterpret_cast<const char*>(value), size);
}
inline ::std::string* GM_SystemChatPack::add_sendstr() {
  return sendstr_.Add();
}
inline void GM_SystemChatPack::add_sendstr(const ::std::string& value) {
  sendstr_.Add()->assign(value);
}
inline void GM_SystemChatPack::add_sendstr(const char* value) {
  sendstr_.Add()->assign(value);
}
inline void GM_SystemChatPack::add_sendstr(const char* value, size_t size) {
  sendstr_.Add()->assign(reinterpret_cast<const char*>(value), size);
}
inline const ::google::protobuf::RepeatedPtrField< ::std::string>&
GM_SystemChatPack::sendstr() const {
  return sendstr_;
}
inline ::google::protobuf::RepeatedPtrField< ::std::string>*
GM_SystemChatPack::mutable_sendstr() {
  return &sendstr_;
}

// required int32 channel = 5;
inline bool GM_SystemChatPack::has_channel() const {
  return (_has_bits_[0] & 0x00000010u) != 0;
}
inline void GM_SystemChatPack::set_has_channel() {
  _has_bits_[0] |= 0x00000010u;
}
inline void GM_SystemChatPack::clear_has_channel() {
  _has_bits_[0] &= ~0x00000010u;
}
inline void GM_SystemChatPack::clear_channel() {
  channel_ = 0;
  clear_has_channel();
}
inline ::google::protobuf::int32 GM_SystemChatPack::channel() const {
  return channel_;
}
inline void GM_SystemChatPack::set_channel(::google::protobuf::int32 value) {
  set_has_channel();
  channel_ = value;
}

// -------------------------------------------------------------------

// GM_ToolAudios

// required int32 audioStart = 1;
inline bool GM_ToolAudios::has_audiostart() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_ToolAudios::set_has_audiostart() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_ToolAudios::clear_has_audiostart() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_ToolAudios::clear_audiostart() {
  audiostart_ = 0;
  clear_has_audiostart();
}
inline ::google::protobuf::int32 GM_ToolAudios::audiostart() const {
  return audiostart_;
}
inline void GM_ToolAudios::set_audiostart(::google::protobuf::int32 value) {
  set_has_audiostart();
  audiostart_ = value;
}

// required int32 audioEnd = 2;
inline bool GM_ToolAudios::has_audioend() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void GM_ToolAudios::set_has_audioend() {
  _has_bits_[0] |= 0x00000002u;
}
inline void GM_ToolAudios::clear_has_audioend() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void GM_ToolAudios::clear_audioend() {
  audioend_ = 0;
  clear_has_audioend();
}
inline ::google::protobuf::int32 GM_ToolAudios::audioend() const {
  return audioend_;
}
inline void GM_ToolAudios::set_audioend(::google::protobuf::int32 value) {
  set_has_audioend();
  audioend_ = value;
}

// -------------------------------------------------------------------

// GM_AudiosContent

// required int32 audiosNum = 1;
inline bool GM_AudiosContent::has_audiosnum() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void GM_AudiosContent::set_has_audiosnum() {
  _has_bits_[0] |= 0x00000001u;
}
inline void GM_AudiosContent::clear_has_audiosnum() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void GM_AudiosContent::clear_audiosnum() {
  audiosnum_ = 0;
  clear_has_audiosnum();
}
inline ::google::protobuf::int32 GM_AudiosContent::audiosnum() const {
  return audiosnum_;
}
inline void GM_AudiosContent::set_audiosnum(::google::protobuf::int32 value) {
  set_has_audiosnum();
  audiosnum_ = value;
}

// repeated bytes audios = 2;
inline int GM_AudiosContent::audios_size() const {
  return audios_.size();
}
inline void GM_AudiosContent::clear_audios() {
  audios_.Clear();
}
inline const ::std::string& GM_AudiosContent::audios(int index) const {
  return audios_.Get(index);
}
inline ::std::string* GM_AudiosContent::mutable_audios(int index) {
  return audios_.Mutable(index);
}
inline void GM_AudiosContent::set_audios(int index, const ::std::string& value) {
  audios_.Mutable(index)->assign(value);
}
inline void GM_AudiosContent::set_audios(int index, const char* value) {
  audios_.Mutable(index)->assign(value);
}
inline void GM_AudiosContent::set_audios(int index, const void* value, size_t size) {
  audios_.Mutable(index)->assign(
    reinterpret_cast<const char*>(value), size);
}
inline ::std::string* GM_AudiosContent::add_audios() {
  return audios_.Add();
}
inline void GM_AudiosContent::add_audios(const ::std::string& value) {
  audios_.Add()->assign(value);
}
inline void GM_AudiosContent::add_audios(const char* value) {
  audios_.Add()->assign(value);
}
inline void GM_AudiosContent::add_audios(const void* value, size_t size) {
  audios_.Add()->assign(reinterpret_cast<const char*>(value), size);
}
inline const ::google::protobuf::RepeatedPtrField< ::std::string>&
GM_AudiosContent::audios() const {
  return audios_;
}
inline ::google::protobuf::RepeatedPtrField< ::std::string>*
GM_AudiosContent::mutable_audios() {
  return &audios_;
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

#endif  // PROTOBUF_SP_5fChat_2etxt__INCLUDED