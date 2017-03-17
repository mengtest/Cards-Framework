// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_FBServerInfo.txt

#define INTERNAL_SUPPRESS_PROTOBUF_FIELD_DEPRECATION
#include "SP_FBServerInfo.txt.pb.h"
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

const ::google::protobuf::Descriptor* SM_FBServerLoadInfo_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  SM_FBServerLoadInfo_reflection_ = NULL;

}  // namespace


void protobuf_AssignDesc_SP_5fFBServerInfo_2etxt() {
  protobuf_AddDesc_SP_5fFBServerInfo_2etxt();
  const ::google::protobuf::FileDescriptor* file =
    ::google::protobuf::DescriptorPool::generated_pool()->FindFileByName(
      "SP_FBServerInfo.txt");
  GOOGLE_CHECK(file != NULL);
  SM_FBServerLoadInfo_descriptor_ = file->message_type(0);
  static const int SM_FBServerLoadInfo_offsets_[2] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_FBServerLoadInfo, m_serverid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_FBServerLoadInfo, m_activenum_),
  };
  SM_FBServerLoadInfo_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      SM_FBServerLoadInfo_descriptor_,
      SM_FBServerLoadInfo::default_instance_,
      SM_FBServerLoadInfo_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_FBServerLoadInfo, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_FBServerLoadInfo, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(SM_FBServerLoadInfo));
}

namespace {

GOOGLE_PROTOBUF_DECLARE_ONCE(protobuf_AssignDescriptors_once_);
inline void protobuf_AssignDescriptorsOnce() {
  ::google::protobuf::GoogleOnceInit(&protobuf_AssignDescriptors_once_,
                 &protobuf_AssignDesc_SP_5fFBServerInfo_2etxt);
}

void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    SM_FBServerLoadInfo_descriptor_, &SM_FBServerLoadInfo::default_instance());
}

}  // namespace

void protobuf_ShutdownFile_SP_5fFBServerInfo_2etxt() {
  delete SM_FBServerLoadInfo::default_instance_;
  delete SM_FBServerLoadInfo_reflection_;
}

void protobuf_AddDesc_SP_5fFBServerInfo_2etxt() {
  static bool already_here = false;
  if (already_here) return;
  already_here = true;
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  ::google::protobuf::DescriptorPool::InternalAddGeneratedFile(
    "\n\023SP_FBServerInfo.txt\">\n\023SM_FBServerLoad"
    "Info\022\022\n\nm_ServerID\030\001 \002(\005\022\023\n\013m_ActiveNum\030"
    "\002 \002(\005", 85);
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "SP_FBServerInfo.txt", &protobuf_RegisterTypes);
  SM_FBServerLoadInfo::default_instance_ = new SM_FBServerLoadInfo();
  SM_FBServerLoadInfo::default_instance_->InitAsDefaultInstance();
  ::google::protobuf::internal::OnShutdown(&protobuf_ShutdownFile_SP_5fFBServerInfo_2etxt);
}

// Force AddDescriptors() to be called at static initialization time.
struct StaticDescriptorInitializer_SP_5fFBServerInfo_2etxt {
  StaticDescriptorInitializer_SP_5fFBServerInfo_2etxt() {
    protobuf_AddDesc_SP_5fFBServerInfo_2etxt();
  }
} static_descriptor_initializer_SP_5fFBServerInfo_2etxt_;

// ===================================================================

#ifndef _MSC_VER
const int SM_FBServerLoadInfo::kMServerIDFieldNumber;
const int SM_FBServerLoadInfo::kMActiveNumFieldNumber;
#endif  // !_MSC_VER

SM_FBServerLoadInfo::SM_FBServerLoadInfo()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void SM_FBServerLoadInfo::InitAsDefaultInstance() {
}

SM_FBServerLoadInfo::SM_FBServerLoadInfo(const SM_FBServerLoadInfo& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void SM_FBServerLoadInfo::SharedCtor() {
  _cached_size_ = 0;
  m_serverid_ = 0;
  m_activenum_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

SM_FBServerLoadInfo::~SM_FBServerLoadInfo() {
  SharedDtor();
}

void SM_FBServerLoadInfo::SharedDtor() {
  if (this != default_instance_) {
  }
}

void SM_FBServerLoadInfo::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* SM_FBServerLoadInfo::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return SM_FBServerLoadInfo_descriptor_;
}

const SM_FBServerLoadInfo& SM_FBServerLoadInfo::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fFBServerInfo_2etxt();
  return *default_instance_;
}

SM_FBServerLoadInfo* SM_FBServerLoadInfo::default_instance_ = NULL;

SM_FBServerLoadInfo* SM_FBServerLoadInfo::New() const {
  return new SM_FBServerLoadInfo;
}

void SM_FBServerLoadInfo::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    m_serverid_ = 0;
    m_activenum_ = 0;
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool SM_FBServerLoadInfo::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required int32 m_ServerID = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_serverid_)));
          set_has_m_serverid();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(16)) goto parse_m_ActiveNum;
        break;
      }

      // required int32 m_ActiveNum = 2;
      case 2: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_m_ActiveNum:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_activenum_)));
          set_has_m_activenum();
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

void SM_FBServerLoadInfo::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int32 m_ServerID = 1;
  if (has_m_serverid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->m_serverid(), output);
  }

  // required int32 m_ActiveNum = 2;
  if (has_m_activenum()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(2, this->m_activenum(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* SM_FBServerLoadInfo::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int32 m_ServerID = 1;
  if (has_m_serverid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->m_serverid(), target);
  }

  // required int32 m_ActiveNum = 2;
  if (has_m_activenum()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(2, this->m_activenum(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int SM_FBServerLoadInfo::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int32 m_ServerID = 1;
    if (has_m_serverid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_serverid());
    }

    // required int32 m_ActiveNum = 2;
    if (has_m_activenum()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_activenum());
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

void SM_FBServerLoadInfo::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const SM_FBServerLoadInfo* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const SM_FBServerLoadInfo*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void SM_FBServerLoadInfo::MergeFrom(const SM_FBServerLoadInfo& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_m_serverid()) {
      set_m_serverid(from.m_serverid());
    }
    if (from.has_m_activenum()) {
      set_m_activenum(from.m_activenum());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void SM_FBServerLoadInfo::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void SM_FBServerLoadInfo::CopyFrom(const SM_FBServerLoadInfo& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool SM_FBServerLoadInfo::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000003) != 0x00000003) return false;

  return true;
}

void SM_FBServerLoadInfo::Swap(SM_FBServerLoadInfo* other) {
  if (other != this) {
    std::swap(m_serverid_, other->m_serverid_);
    std::swap(m_activenum_, other->m_activenum_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata SM_FBServerLoadInfo::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = SM_FBServerLoadInfo_descriptor_;
  metadata.reflection = SM_FBServerLoadInfo_reflection_;
  return metadata;
}


// @@protoc_insertion_point(namespace_scope)

// @@protoc_insertion_point(global_scope)
#ifdef _MSC_VER
#  pragma warning(pop)
#endif
