// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: checkTime.txt

#define INTERNAL_SUPPRESS_PROTOBUF_FIELD_DEPRECATION
#include "checkTime.txt.pb.h"
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

const ::google::protobuf::Descriptor* GM_ServerTime_t_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  GM_ServerTime_t_reflection_ = NULL;

}  // namespace


void protobuf_AssignDesc_checkTime_2etxt() {
  protobuf_AddDesc_checkTime_2etxt();
  const ::google::protobuf::FileDescriptor* file =
    ::google::protobuf::DescriptorPool::generated_pool()->FindFileByName(
      "checkTime.txt");
  GOOGLE_CHECK(file != NULL);
  GM_ServerTime_t_descriptor_ = file->message_type(0);
  static const int GM_ServerTime_t_offsets_[1] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_ServerTime_t, time_t_),
  };
  GM_ServerTime_t_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      GM_ServerTime_t_descriptor_,
      GM_ServerTime_t::default_instance_,
      GM_ServerTime_t_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_ServerTime_t, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_ServerTime_t, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(GM_ServerTime_t));
}

namespace {

GOOGLE_PROTOBUF_DECLARE_ONCE(protobuf_AssignDescriptors_once_);
inline void protobuf_AssignDescriptorsOnce() {
  ::google::protobuf::GoogleOnceInit(&protobuf_AssignDescriptors_once_,
                 &protobuf_AssignDesc_checkTime_2etxt);
}

void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    GM_ServerTime_t_descriptor_, &GM_ServerTime_t::default_instance());
}

}  // namespace

void protobuf_ShutdownFile_checkTime_2etxt() {
  delete GM_ServerTime_t::default_instance_;
  delete GM_ServerTime_t_reflection_;
}

void protobuf_AddDesc_checkTime_2etxt() {
  static bool already_here = false;
  if (already_here) return;
  already_here = true;
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  ::google::protobuf::DescriptorPool::InternalAddGeneratedFile(
    "\n\rcheckTime.txt\"!\n\017GM_ServerTime_t\022\016\n\006ti"
    "me_t\030\001 \002(\003", 50);
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "checkTime.txt", &protobuf_RegisterTypes);
  GM_ServerTime_t::default_instance_ = new GM_ServerTime_t();
  GM_ServerTime_t::default_instance_->InitAsDefaultInstance();
  ::google::protobuf::internal::OnShutdown(&protobuf_ShutdownFile_checkTime_2etxt);
}

// Force AddDescriptors() to be called at static initialization time.
struct StaticDescriptorInitializer_checkTime_2etxt {
  StaticDescriptorInitializer_checkTime_2etxt() {
    protobuf_AddDesc_checkTime_2etxt();
  }
} static_descriptor_initializer_checkTime_2etxt_;

// ===================================================================

#ifndef _MSC_VER
const int GM_ServerTime_t::kTimeTFieldNumber;
#endif  // !_MSC_VER

GM_ServerTime_t::GM_ServerTime_t()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void GM_ServerTime_t::InitAsDefaultInstance() {
}

GM_ServerTime_t::GM_ServerTime_t(const GM_ServerTime_t& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void GM_ServerTime_t::SharedCtor() {
  _cached_size_ = 0;
  time_t_ = GOOGLE_LONGLONG(0);
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

GM_ServerTime_t::~GM_ServerTime_t() {
  SharedDtor();
}

void GM_ServerTime_t::SharedDtor() {
  if (this != default_instance_) {
  }
}

void GM_ServerTime_t::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* GM_ServerTime_t::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return GM_ServerTime_t_descriptor_;
}

const GM_ServerTime_t& GM_ServerTime_t::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_checkTime_2etxt();
  return *default_instance_;
}

GM_ServerTime_t* GM_ServerTime_t::default_instance_ = NULL;

GM_ServerTime_t* GM_ServerTime_t::New() const {
  return new GM_ServerTime_t;
}

void GM_ServerTime_t::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    time_t_ = GOOGLE_LONGLONG(0);
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool GM_ServerTime_t::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required int64 time_t = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int64, ::google::protobuf::internal::WireFormatLite::TYPE_INT64>(
                 input, &time_t_)));
          set_has_time_t();
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

void GM_ServerTime_t::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int64 time_t = 1;
  if (has_time_t()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt64(1, this->time_t(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* GM_ServerTime_t::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int64 time_t = 1;
  if (has_time_t()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt64ToArray(1, this->time_t(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int GM_ServerTime_t::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int64 time_t = 1;
    if (has_time_t()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int64Size(
          this->time_t());
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

void GM_ServerTime_t::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const GM_ServerTime_t* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const GM_ServerTime_t*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void GM_ServerTime_t::MergeFrom(const GM_ServerTime_t& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_time_t()) {
      set_time_t(from.time_t());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void GM_ServerTime_t::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void GM_ServerTime_t::CopyFrom(const GM_ServerTime_t& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool GM_ServerTime_t::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000001) != 0x00000001) return false;

  return true;
}

void GM_ServerTime_t::Swap(GM_ServerTime_t* other) {
  if (other != this) {
    std::swap(time_t_, other->time_t_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata GM_ServerTime_t::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = GM_ServerTime_t_descriptor_;
  metadata.reflection = GM_ServerTime_t_reflection_;
  return metadata;
}


// @@protoc_insertion_point(namespace_scope)

// @@protoc_insertion_point(global_scope)
#ifdef _MSC_VER
#  pragma warning(pop)
#endif
