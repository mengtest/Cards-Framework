// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_Queen.txt

#define INTERNAL_SUPPRESS_PROTOBUF_FIELD_DEPRECATION
#include "SP_Queen.txt.pb.h"
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

const ::google::protobuf::Descriptor* GM_NotifyDisconnect_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  GM_NotifyDisconnect_reflection_ = NULL;

}  // namespace


void protobuf_AssignDesc_SP_5fQueen_2etxt() {
  protobuf_AddDesc_SP_5fQueen_2etxt();
  const ::google::protobuf::FileDescriptor* file =
    ::google::protobuf::DescriptorPool::generated_pool()->FindFileByName(
      "SP_Queen.txt");
  GOOGLE_CHECK(file != NULL);
  GM_NotifyDisconnect_descriptor_ = file->message_type(0);
  static const int GM_NotifyDisconnect_offsets_[1] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_NotifyDisconnect, tempid_),
  };
  GM_NotifyDisconnect_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      GM_NotifyDisconnect_descriptor_,
      GM_NotifyDisconnect::default_instance_,
      GM_NotifyDisconnect_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_NotifyDisconnect, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_NotifyDisconnect, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(GM_NotifyDisconnect));
}

namespace {

GOOGLE_PROTOBUF_DECLARE_ONCE(protobuf_AssignDescriptors_once_);
inline void protobuf_AssignDescriptorsOnce() {
  ::google::protobuf::GoogleOnceInit(&protobuf_AssignDescriptors_once_,
                 &protobuf_AssignDesc_SP_5fQueen_2etxt);
}

void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    GM_NotifyDisconnect_descriptor_, &GM_NotifyDisconnect::default_instance());
}

}  // namespace

void protobuf_ShutdownFile_SP_5fQueen_2etxt() {
  delete GM_NotifyDisconnect::default_instance_;
  delete GM_NotifyDisconnect_reflection_;
}

void protobuf_AddDesc_SP_5fQueen_2etxt() {
  static bool already_here = false;
  if (already_here) return;
  already_here = true;
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  ::google::protobuf::DescriptorPool::InternalAddGeneratedFile(
    "\n\014SP_Queen.txt\"%\n\023GM_NotifyDisconnect\022\016\n"
    "\006tempid\030\001 \002(\005", 53);
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "SP_Queen.txt", &protobuf_RegisterTypes);
  GM_NotifyDisconnect::default_instance_ = new GM_NotifyDisconnect();
  GM_NotifyDisconnect::default_instance_->InitAsDefaultInstance();
  ::google::protobuf::internal::OnShutdown(&protobuf_ShutdownFile_SP_5fQueen_2etxt);
}

// Force AddDescriptors() to be called at static initialization time.
struct StaticDescriptorInitializer_SP_5fQueen_2etxt {
  StaticDescriptorInitializer_SP_5fQueen_2etxt() {
    protobuf_AddDesc_SP_5fQueen_2etxt();
  }
} static_descriptor_initializer_SP_5fQueen_2etxt_;

// ===================================================================

#ifndef _MSC_VER
const int GM_NotifyDisconnect::kTempidFieldNumber;
#endif  // !_MSC_VER

GM_NotifyDisconnect::GM_NotifyDisconnect()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void GM_NotifyDisconnect::InitAsDefaultInstance() {
}

GM_NotifyDisconnect::GM_NotifyDisconnect(const GM_NotifyDisconnect& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void GM_NotifyDisconnect::SharedCtor() {
  _cached_size_ = 0;
  tempid_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

GM_NotifyDisconnect::~GM_NotifyDisconnect() {
  SharedDtor();
}

void GM_NotifyDisconnect::SharedDtor() {
  if (this != default_instance_) {
  }
}

void GM_NotifyDisconnect::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* GM_NotifyDisconnect::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return GM_NotifyDisconnect_descriptor_;
}

const GM_NotifyDisconnect& GM_NotifyDisconnect::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fQueen_2etxt();
  return *default_instance_;
}

GM_NotifyDisconnect* GM_NotifyDisconnect::default_instance_ = NULL;

GM_NotifyDisconnect* GM_NotifyDisconnect::New() const {
  return new GM_NotifyDisconnect;
}

void GM_NotifyDisconnect::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    tempid_ = 0;
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool GM_NotifyDisconnect::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required int32 tempid = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &tempid_)));
          set_has_tempid();
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

void GM_NotifyDisconnect::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int32 tempid = 1;
  if (has_tempid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->tempid(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* GM_NotifyDisconnect::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int32 tempid = 1;
  if (has_tempid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->tempid(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int GM_NotifyDisconnect::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int32 tempid = 1;
    if (has_tempid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->tempid());
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

void GM_NotifyDisconnect::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const GM_NotifyDisconnect* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const GM_NotifyDisconnect*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void GM_NotifyDisconnect::MergeFrom(const GM_NotifyDisconnect& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_tempid()) {
      set_tempid(from.tempid());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void GM_NotifyDisconnect::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void GM_NotifyDisconnect::CopyFrom(const GM_NotifyDisconnect& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool GM_NotifyDisconnect::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000001) != 0x00000001) return false;

  return true;
}

void GM_NotifyDisconnect::Swap(GM_NotifyDisconnect* other) {
  if (other != this) {
    std::swap(tempid_, other->tempid_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata GM_NotifyDisconnect::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = GM_NotifyDisconnect_descriptor_;
  metadata.reflection = GM_NotifyDisconnect_reflection_;
  return metadata;
}


// @@protoc_insertion_point(namespace_scope)

// @@protoc_insertion_point(global_scope)
#ifdef _MSC_VER
#  pragma warning(pop)
#endif
