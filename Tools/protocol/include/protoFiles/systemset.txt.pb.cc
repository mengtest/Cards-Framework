// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: systemset.txt

#define INTERNAL_SUPPRESS_PROTOBUF_FIELD_DEPRECATION
#include "systemset.txt.pb.h"
#ifdef _MSC_VER
#  pragma warning(push)
#  pragma warning(disable: 4127 4244 4267 4996)
#endif

#include <algorithm>

#include <google/protobuf/stubs/common.h>
#include <google/protobuf/stubs/once.h>
#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/wire_format_lite_inl.h>
#include <google/protobuf/descriptor.h>
#include <google/protobuf/generated_message_reflection.h>
#include <google/protobuf/reflection_ops.h>
#include <google/protobuf/wire_format.h>
// @@protoc_insertion_point(includes)

namespace {

const ::google::protobuf::Descriptor* GM_SystemSet_CDKey_Request_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  GM_SystemSet_CDKey_Request_reflection_ = NULL;
const ::google::protobuf::Descriptor* GM_SystemSet_subData_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  GM_SystemSet_subData_reflection_ = NULL;
const ::google::protobuf::Descriptor* GM_SystemSet_Data_Return_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  GM_SystemSet_Data_Return_reflection_ = NULL;

}  // namespace


void protobuf_AssignDesc_systemset_2etxt() {
  protobuf_AddDesc_systemset_2etxt();
  const ::google::protobuf::FileDescriptor* file =
    ::google::protobuf::DescriptorPool::generated_pool()->FindFileByName(
      "systemset.txt");
  GOOGLE_CHECK(file != NULL);
  GM_SystemSet_CDKey_Request_descriptor_ = file->message_type(0);
  static const int GM_SystemSet_CDKey_Request_offsets_[1] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_SystemSet_CDKey_Request, m_cdkey_),
  };
  GM_SystemSet_CDKey_Request_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      GM_SystemSet_CDKey_Request_descriptor_,
      GM_SystemSet_CDKey_Request::default_instance_,
      GM_SystemSet_CDKey_Request_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_SystemSet_CDKey_Request, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_SystemSet_CDKey_Request, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(GM_SystemSet_CDKey_Request));
  GM_SystemSet_subData_descriptor_ = file->message_type(1);
  static const int GM_SystemSet_subData_offsets_[2] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_SystemSet_subData, m_type_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_SystemSet_subData, m_value_),
  };
  GM_SystemSet_subData_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      GM_SystemSet_subData_descriptor_,
      GM_SystemSet_subData::default_instance_,
      GM_SystemSet_subData_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_SystemSet_subData, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_SystemSet_subData, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(GM_SystemSet_subData));
  GM_SystemSet_Data_Return_descriptor_ = file->message_type(2);
  static const int GM_SystemSet_Data_Return_offsets_[2] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_SystemSet_Data_Return, m_request_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_SystemSet_Data_Return, m_subdata_),
  };
  GM_SystemSet_Data_Return_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      GM_SystemSet_Data_Return_descriptor_,
      GM_SystemSet_Data_Return::default_instance_,
      GM_SystemSet_Data_Return_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_SystemSet_Data_Return, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_SystemSet_Data_Return, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(GM_SystemSet_Data_Return));
}

namespace {

GOOGLE_PROTOBUF_DECLARE_ONCE(protobuf_AssignDescriptors_once_);
inline void protobuf_AssignDescriptorsOnce() {
  ::google::protobuf::GoogleOnceInit(&protobuf_AssignDescriptors_once_,
                 &protobuf_AssignDesc_systemset_2etxt);
}

void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    GM_SystemSet_CDKey_Request_descriptor_, &GM_SystemSet_CDKey_Request::default_instance());
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    GM_SystemSet_subData_descriptor_, &GM_SystemSet_subData::default_instance());
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    GM_SystemSet_Data_Return_descriptor_, &GM_SystemSet_Data_Return::default_instance());
}

}  // namespace

void protobuf_ShutdownFile_systemset_2etxt() {
  delete GM_SystemSet_CDKey_Request::default_instance_;
  delete GM_SystemSet_CDKey_Request_reflection_;
  delete GM_SystemSet_subData::default_instance_;
  delete GM_SystemSet_subData_reflection_;
  delete GM_SystemSet_Data_Return::default_instance_;
  delete GM_SystemSet_Data_Return_reflection_;
}

void protobuf_AddDesc_systemset_2etxt() {
  static bool already_here = false;
  if (already_here) return;
  already_here = true;
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  ::google::protobuf::DescriptorPool::InternalAddGeneratedFile(
    "\n\rsystemset.txt\"-\n\032GM_SystemSet_CDKey_Re"
    "quest\022\017\n\007m_cdkey\030\001 \002(\t\"7\n\024GM_SystemSet_s"
    "ubData\022\016\n\006m_type\030\001 \002(\005\022\017\n\007m_value\030\002 \002(\005\""
    "W\n\030GM_SystemSet_Data_Return\022\021\n\tm_request"
    "\030\001 \002(\005\022(\n\tm_subdata\030\002 \003(\0132\025.GM_SystemSet"
    "_subData", 208);
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "systemset.txt", &protobuf_RegisterTypes);
  GM_SystemSet_CDKey_Request::default_instance_ = new GM_SystemSet_CDKey_Request();
  GM_SystemSet_subData::default_instance_ = new GM_SystemSet_subData();
  GM_SystemSet_Data_Return::default_instance_ = new GM_SystemSet_Data_Return();
  GM_SystemSet_CDKey_Request::default_instance_->InitAsDefaultInstance();
  GM_SystemSet_subData::default_instance_->InitAsDefaultInstance();
  GM_SystemSet_Data_Return::default_instance_->InitAsDefaultInstance();
  ::google::protobuf::internal::OnShutdown(&protobuf_ShutdownFile_systemset_2etxt);
}

// Force AddDescriptors() to be called at static initialization time.
struct StaticDescriptorInitializer_systemset_2etxt {
  StaticDescriptorInitializer_systemset_2etxt() {
    protobuf_AddDesc_systemset_2etxt();
  }
} static_descriptor_initializer_systemset_2etxt_;

// ===================================================================

#ifndef _MSC_VER
const int GM_SystemSet_CDKey_Request::kMCdkeyFieldNumber;
#endif  // !_MSC_VER

GM_SystemSet_CDKey_Request::GM_SystemSet_CDKey_Request()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void GM_SystemSet_CDKey_Request::InitAsDefaultInstance() {
}

GM_SystemSet_CDKey_Request::GM_SystemSet_CDKey_Request(const GM_SystemSet_CDKey_Request& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void GM_SystemSet_CDKey_Request::SharedCtor() {
  _cached_size_ = 0;
  m_cdkey_ = const_cast< ::std::string*>(&::google::protobuf::internal::kEmptyString);
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

GM_SystemSet_CDKey_Request::~GM_SystemSet_CDKey_Request() {
  SharedDtor();
}

void GM_SystemSet_CDKey_Request::SharedDtor() {
  if (m_cdkey_ != &::google::protobuf::internal::kEmptyString) {
    delete m_cdkey_;
  }
  if (this != default_instance_) {
  }
}

void GM_SystemSet_CDKey_Request::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* GM_SystemSet_CDKey_Request::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return GM_SystemSet_CDKey_Request_descriptor_;
}

const GM_SystemSet_CDKey_Request& GM_SystemSet_CDKey_Request::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_systemset_2etxt();
  return *default_instance_;
}

GM_SystemSet_CDKey_Request* GM_SystemSet_CDKey_Request::default_instance_ = NULL;

GM_SystemSet_CDKey_Request* GM_SystemSet_CDKey_Request::New() const {
  return new GM_SystemSet_CDKey_Request;
}

void GM_SystemSet_CDKey_Request::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (has_m_cdkey()) {
      if (m_cdkey_ != &::google::protobuf::internal::kEmptyString) {
        m_cdkey_->clear();
      }
    }
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool GM_SystemSet_CDKey_Request::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required string m_cdkey = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_LENGTH_DELIMITED) {
          DO_(::google::protobuf::internal::WireFormatLite::ReadString(
                input, this->mutable_m_cdkey()));
          ::google::protobuf::internal::WireFormat::VerifyUTF8String(
            this->m_cdkey().data(), this->m_cdkey().length(),
            ::google::protobuf::internal::WireFormat::PARSE);
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectAtEnd()) return true;
        break;
      }

      default: {
      handle_uninterpreted:
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_END_GROUP) {
          return true;
        }
        DO_(::google::protobuf::internal::WireFormat::SkipField(
              input, tag, mutable_unknown_fields()));
        break;
      }
    }
  }
  return true;
#undef DO_
}

void GM_SystemSet_CDKey_Request::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required string m_cdkey = 1;
  if (has_m_cdkey()) {
    ::google::protobuf::internal::WireFormat::VerifyUTF8String(
      this->m_cdkey().data(), this->m_cdkey().length(),
      ::google::protobuf::internal::WireFormat::SERIALIZE);
    ::google::protobuf::internal::WireFormatLite::WriteString(
      1, this->m_cdkey(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* GM_SystemSet_CDKey_Request::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required string m_cdkey = 1;
  if (has_m_cdkey()) {
    ::google::protobuf::internal::WireFormat::VerifyUTF8String(
      this->m_cdkey().data(), this->m_cdkey().length(),
      ::google::protobuf::internal::WireFormat::SERIALIZE);
    target =
      ::google::protobuf::internal::WireFormatLite::WriteStringToArray(
        1, this->m_cdkey(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int GM_SystemSet_CDKey_Request::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required string m_cdkey = 1;
    if (has_m_cdkey()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::StringSize(
          this->m_cdkey());
    }

  }
  if (!unknown_fields().empty()) {
    total_size +=
      ::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(
        unknown_fields());
  }
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = total_size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
  return total_size;
}

void GM_SystemSet_CDKey_Request::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const GM_SystemSet_CDKey_Request* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const GM_SystemSet_CDKey_Request*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void GM_SystemSet_CDKey_Request::MergeFrom(const GM_SystemSet_CDKey_Request& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_m_cdkey()) {
      set_m_cdkey(from.m_cdkey());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void GM_SystemSet_CDKey_Request::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void GM_SystemSet_CDKey_Request::CopyFrom(const GM_SystemSet_CDKey_Request& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool GM_SystemSet_CDKey_Request::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000001) != 0x00000001) return false;

  return true;
}

void GM_SystemSet_CDKey_Request::Swap(GM_SystemSet_CDKey_Request* other) {
  if (other != this) {
    std::swap(m_cdkey_, other->m_cdkey_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata GM_SystemSet_CDKey_Request::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = GM_SystemSet_CDKey_Request_descriptor_;
  metadata.reflection = GM_SystemSet_CDKey_Request_reflection_;
  return metadata;
}


// ===================================================================

#ifndef _MSC_VER
const int GM_SystemSet_subData::kMTypeFieldNumber;
const int GM_SystemSet_subData::kMValueFieldNumber;
#endif  // !_MSC_VER

GM_SystemSet_subData::GM_SystemSet_subData()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void GM_SystemSet_subData::InitAsDefaultInstance() {
}

GM_SystemSet_subData::GM_SystemSet_subData(const GM_SystemSet_subData& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void GM_SystemSet_subData::SharedCtor() {
  _cached_size_ = 0;
  m_type_ = 0;
  m_value_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

GM_SystemSet_subData::~GM_SystemSet_subData() {
  SharedDtor();
}

void GM_SystemSet_subData::SharedDtor() {
  if (this != default_instance_) {
  }
}

void GM_SystemSet_subData::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* GM_SystemSet_subData::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return GM_SystemSet_subData_descriptor_;
}

const GM_SystemSet_subData& GM_SystemSet_subData::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_systemset_2etxt();
  return *default_instance_;
}

GM_SystemSet_subData* GM_SystemSet_subData::default_instance_ = NULL;

GM_SystemSet_subData* GM_SystemSet_subData::New() const {
  return new GM_SystemSet_subData;
}

void GM_SystemSet_subData::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    m_type_ = 0;
    m_value_ = 0;
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool GM_SystemSet_subData::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required int32 m_type = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_type_)));
          set_has_m_type();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(16)) goto parse_m_value;
        break;
      }

      // required int32 m_value = 2;
      case 2: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_m_value:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_value_)));
          set_has_m_value();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectAtEnd()) return true;
        break;
      }

      default: {
      handle_uninterpreted:
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_END_GROUP) {
          return true;
        }
        DO_(::google::protobuf::internal::WireFormat::SkipField(
              input, tag, mutable_unknown_fields()));
        break;
      }
    }
  }
  return true;
#undef DO_
}

void GM_SystemSet_subData::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int32 m_type = 1;
  if (has_m_type()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->m_type(), output);
  }

  // required int32 m_value = 2;
  if (has_m_value()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(2, this->m_value(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* GM_SystemSet_subData::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int32 m_type = 1;
  if (has_m_type()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->m_type(), target);
  }

  // required int32 m_value = 2;
  if (has_m_value()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(2, this->m_value(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int GM_SystemSet_subData::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int32 m_type = 1;
    if (has_m_type()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_type());
    }

    // required int32 m_value = 2;
    if (has_m_value()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_value());
    }

  }
  if (!unknown_fields().empty()) {
    total_size +=
      ::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(
        unknown_fields());
  }
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = total_size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
  return total_size;
}

void GM_SystemSet_subData::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const GM_SystemSet_subData* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const GM_SystemSet_subData*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void GM_SystemSet_subData::MergeFrom(const GM_SystemSet_subData& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_m_type()) {
      set_m_type(from.m_type());
    }
    if (from.has_m_value()) {
      set_m_value(from.m_value());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void GM_SystemSet_subData::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void GM_SystemSet_subData::CopyFrom(const GM_SystemSet_subData& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool GM_SystemSet_subData::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000003) != 0x00000003) return false;

  return true;
}

void GM_SystemSet_subData::Swap(GM_SystemSet_subData* other) {
  if (other != this) {
    std::swap(m_type_, other->m_type_);
    std::swap(m_value_, other->m_value_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata GM_SystemSet_subData::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = GM_SystemSet_subData_descriptor_;
  metadata.reflection = GM_SystemSet_subData_reflection_;
  return metadata;
}


// ===================================================================

#ifndef _MSC_VER
const int GM_SystemSet_Data_Return::kMRequestFieldNumber;
const int GM_SystemSet_Data_Return::kMSubdataFieldNumber;
#endif  // !_MSC_VER

GM_SystemSet_Data_Return::GM_SystemSet_Data_Return()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void GM_SystemSet_Data_Return::InitAsDefaultInstance() {
}

GM_SystemSet_Data_Return::GM_SystemSet_Data_Return(const GM_SystemSet_Data_Return& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void GM_SystemSet_Data_Return::SharedCtor() {
  _cached_size_ = 0;
  m_request_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

GM_SystemSet_Data_Return::~GM_SystemSet_Data_Return() {
  SharedDtor();
}

void GM_SystemSet_Data_Return::SharedDtor() {
  if (this != default_instance_) {
  }
}

void GM_SystemSet_Data_Return::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* GM_SystemSet_Data_Return::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return GM_SystemSet_Data_Return_descriptor_;
}

const GM_SystemSet_Data_Return& GM_SystemSet_Data_Return::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_systemset_2etxt();
  return *default_instance_;
}

GM_SystemSet_Data_Return* GM_SystemSet_Data_Return::default_instance_ = NULL;

GM_SystemSet_Data_Return* GM_SystemSet_Data_Return::New() const {
  return new GM_SystemSet_Data_Return;
}

void GM_SystemSet_Data_Return::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    m_request_ = 0;
  }
  m_subdata_.Clear();
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool GM_SystemSet_Data_Return::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required int32 m_request = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_request_)));
          set_has_m_request();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(18)) goto parse_m_subdata;
        break;
      }

      // repeated .GM_SystemSet_subData m_subdata = 2;
      case 2: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_LENGTH_DELIMITED) {
         parse_m_subdata:
          DO_(::google::protobuf::internal::WireFormatLite::ReadMessageNoVirtual(
                input, add_m_subdata()));
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(18)) goto parse_m_subdata;
        if (input->ExpectAtEnd()) return true;
        break;
      }

      default: {
      handle_uninterpreted:
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_END_GROUP) {
          return true;
        }
        DO_(::google::protobuf::internal::WireFormat::SkipField(
              input, tag, mutable_unknown_fields()));
        break;
      }
    }
  }
  return true;
#undef DO_
}

void GM_SystemSet_Data_Return::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int32 m_request = 1;
  if (has_m_request()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->m_request(), output);
  }

  // repeated .GM_SystemSet_subData m_subdata = 2;
  for (int i = 0; i < this->m_subdata_size(); i++) {
    ::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(
      2, this->m_subdata(i), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* GM_SystemSet_Data_Return::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int32 m_request = 1;
  if (has_m_request()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->m_request(), target);
  }

  // repeated .GM_SystemSet_subData m_subdata = 2;
  for (int i = 0; i < this->m_subdata_size(); i++) {
    target = ::google::protobuf::internal::WireFormatLite::
      WriteMessageNoVirtualToArray(
        2, this->m_subdata(i), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int GM_SystemSet_Data_Return::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int32 m_request = 1;
    if (has_m_request()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_request());
    }

  }
  // repeated .GM_SystemSet_subData m_subdata = 2;
  total_size += 1 * this->m_subdata_size();
  for (int i = 0; i < this->m_subdata_size(); i++) {
    total_size +=
      ::google::protobuf::internal::WireFormatLite::MessageSizeNoVirtual(
        this->m_subdata(i));
  }

  if (!unknown_fields().empty()) {
    total_size +=
      ::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(
        unknown_fields());
  }
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = total_size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
  return total_size;
}

void GM_SystemSet_Data_Return::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const GM_SystemSet_Data_Return* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const GM_SystemSet_Data_Return*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void GM_SystemSet_Data_Return::MergeFrom(const GM_SystemSet_Data_Return& from) {
  GOOGLE_CHECK_NE(&from, this);
  m_subdata_.MergeFrom(from.m_subdata_);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_m_request()) {
      set_m_request(from.m_request());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void GM_SystemSet_Data_Return::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void GM_SystemSet_Data_Return::CopyFrom(const GM_SystemSet_Data_Return& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool GM_SystemSet_Data_Return::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000001) != 0x00000001) return false;

  for (int i = 0; i < m_subdata_size(); i++) {
    if (!this->m_subdata(i).IsInitialized()) return false;
  }
  return true;
}

void GM_SystemSet_Data_Return::Swap(GM_SystemSet_Data_Return* other) {
  if (other != this) {
    std::swap(m_request_, other->m_request_);
    m_subdata_.Swap(&other->m_subdata_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata GM_SystemSet_Data_Return::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = GM_SystemSet_Data_Return_descriptor_;
  metadata.reflection = GM_SystemSet_Data_Return_reflection_;
  return metadata;
}


// @@protoc_insertion_point(namespace_scope)

// @@protoc_insertion_point(global_scope)
#ifdef _MSC_VER
#  pragma warning(pop)
#endif
