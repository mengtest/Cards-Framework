// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_Answer.txt

#define INTERNAL_SUPPRESS_PROTOBUF_FIELD_DEPRECATION
#include "SP_Answer.txt.pb.h"
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

const ::google::protobuf::Descriptor* SM_AnswerData_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  SM_AnswerData_reflection_ = NULL;
const ::google::protobuf::Descriptor* SM_AnswerDataRequest_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  SM_AnswerDataRequest_reflection_ = NULL;

}  // namespace


void protobuf_AssignDesc_SP_5fAnswer_2etxt() {
  protobuf_AddDesc_SP_5fAnswer_2etxt();
  const ::google::protobuf::FileDescriptor* file =
    ::google::protobuf::DescriptorPool::generated_pool()->FindFileByName(
      "SP_Answer.txt");
  GOOGLE_CHECK(file != NULL);
  SM_AnswerData_descriptor_ = file->message_type(0);
  static const int SM_AnswerData_offsets_[4] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_AnswerData, roleid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_AnswerData, jointime_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_AnswerData, successnum_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_AnswerData, issend_),
  };
  SM_AnswerData_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      SM_AnswerData_descriptor_,
      SM_AnswerData::default_instance_,
      SM_AnswerData_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_AnswerData, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_AnswerData, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(SM_AnswerData));
  SM_AnswerDataRequest_descriptor_ = file->message_type(1);
  static const int SM_AnswerDataRequest_offsets_[1] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_AnswerDataRequest, roleid_),
  };
  SM_AnswerDataRequest_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      SM_AnswerDataRequest_descriptor_,
      SM_AnswerDataRequest::default_instance_,
      SM_AnswerDataRequest_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_AnswerDataRequest, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_AnswerDataRequest, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(SM_AnswerDataRequest));
}

namespace {

GOOGLE_PROTOBUF_DECLARE_ONCE(protobuf_AssignDescriptors_once_);
inline void protobuf_AssignDescriptorsOnce() {
  ::google::protobuf::GoogleOnceInit(&protobuf_AssignDescriptors_once_,
                 &protobuf_AssignDesc_SP_5fAnswer_2etxt);
}

void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    SM_AnswerData_descriptor_, &SM_AnswerData::default_instance());
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    SM_AnswerDataRequest_descriptor_, &SM_AnswerDataRequest::default_instance());
}

}  // namespace

void protobuf_ShutdownFile_SP_5fAnswer_2etxt() {
  delete SM_AnswerData::default_instance_;
  delete SM_AnswerData_reflection_;
  delete SM_AnswerDataRequest::default_instance_;
  delete SM_AnswerDataRequest_reflection_;
}

void protobuf_AddDesc_SP_5fAnswer_2etxt() {
  static bool already_here = false;
  if (already_here) return;
  already_here = true;
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  ::google::protobuf::DescriptorPool::InternalAddGeneratedFile(
    "\n\rSP_Answer.txt\"U\n\rSM_AnswerData\022\016\n\006role"
    "id\030\001 \002(\005\022\020\n\010joinTime\030\002 \001(\005\022\022\n\nsuccessNum"
    "\030\003 \001(\005\022\016\n\006issend\030\004 \001(\005\"&\n\024SM_AnswerDataR"
    "equest\022\016\n\006roleid\030\001 \002(\005", 142);
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "SP_Answer.txt", &protobuf_RegisterTypes);
  SM_AnswerData::default_instance_ = new SM_AnswerData();
  SM_AnswerDataRequest::default_instance_ = new SM_AnswerDataRequest();
  SM_AnswerData::default_instance_->InitAsDefaultInstance();
  SM_AnswerDataRequest::default_instance_->InitAsDefaultInstance();
  ::google::protobuf::internal::OnShutdown(&protobuf_ShutdownFile_SP_5fAnswer_2etxt);
}

// Force AddDescriptors() to be called at static initialization time.
struct StaticDescriptorInitializer_SP_5fAnswer_2etxt {
  StaticDescriptorInitializer_SP_5fAnswer_2etxt() {
    protobuf_AddDesc_SP_5fAnswer_2etxt();
  }
} static_descriptor_initializer_SP_5fAnswer_2etxt_;

// ===================================================================

#ifndef _MSC_VER
const int SM_AnswerData::kRoleidFieldNumber;
const int SM_AnswerData::kJoinTimeFieldNumber;
const int SM_AnswerData::kSuccessNumFieldNumber;
const int SM_AnswerData::kIssendFieldNumber;
#endif  // !_MSC_VER

SM_AnswerData::SM_AnswerData()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void SM_AnswerData::InitAsDefaultInstance() {
}

SM_AnswerData::SM_AnswerData(const SM_AnswerData& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void SM_AnswerData::SharedCtor() {
  _cached_size_ = 0;
  roleid_ = 0;
  jointime_ = 0;
  successnum_ = 0;
  issend_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

SM_AnswerData::~SM_AnswerData() {
  SharedDtor();
}

void SM_AnswerData::SharedDtor() {
  if (this != default_instance_) {
  }
}

void SM_AnswerData::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* SM_AnswerData::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return SM_AnswerData_descriptor_;
}

const SM_AnswerData& SM_AnswerData::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fAnswer_2etxt();
  return *default_instance_;
}

SM_AnswerData* SM_AnswerData::default_instance_ = NULL;

SM_AnswerData* SM_AnswerData::New() const {
  return new SM_AnswerData;
}

void SM_AnswerData::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    roleid_ = 0;
    jointime_ = 0;
    successnum_ = 0;
    issend_ = 0;
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool SM_AnswerData::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required int32 roleid = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &roleid_)));
          set_has_roleid();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(16)) goto parse_joinTime;
        break;
      }

      // optional int32 joinTime = 2;
      case 2: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_joinTime:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &jointime_)));
          set_has_jointime();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(24)) goto parse_successNum;
        break;
      }

      // optional int32 successNum = 3;
      case 3: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_successNum:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &successnum_)));
          set_has_successnum();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(32)) goto parse_issend;
        break;
      }

      // optional int32 issend = 4;
      case 4: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_issend:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &issend_)));
          set_has_issend();
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

void SM_AnswerData::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int32 roleid = 1;
  if (has_roleid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->roleid(), output);
  }

  // optional int32 joinTime = 2;
  if (has_jointime()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(2, this->jointime(), output);
  }

  // optional int32 successNum = 3;
  if (has_successnum()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(3, this->successnum(), output);
  }

  // optional int32 issend = 4;
  if (has_issend()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(4, this->issend(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* SM_AnswerData::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int32 roleid = 1;
  if (has_roleid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->roleid(), target);
  }

  // optional int32 joinTime = 2;
  if (has_jointime()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(2, this->jointime(), target);
  }

  // optional int32 successNum = 3;
  if (has_successnum()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(3, this->successnum(), target);
  }

  // optional int32 issend = 4;
  if (has_issend()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(4, this->issend(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int SM_AnswerData::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int32 roleid = 1;
    if (has_roleid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->roleid());
    }

    // optional int32 joinTime = 2;
    if (has_jointime()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->jointime());
    }

    // optional int32 successNum = 3;
    if (has_successnum()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->successnum());
    }

    // optional int32 issend = 4;
    if (has_issend()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->issend());
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

void SM_AnswerData::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const SM_AnswerData* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const SM_AnswerData*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void SM_AnswerData::MergeFrom(const SM_AnswerData& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_roleid()) {
      set_roleid(from.roleid());
    }
    if (from.has_jointime()) {
      set_jointime(from.jointime());
    }
    if (from.has_successnum()) {
      set_successnum(from.successnum());
    }
    if (from.has_issend()) {
      set_issend(from.issend());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void SM_AnswerData::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void SM_AnswerData::CopyFrom(const SM_AnswerData& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool SM_AnswerData::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000001) != 0x00000001) return false;

  return true;
}

void SM_AnswerData::Swap(SM_AnswerData* other) {
  if (other != this) {
    std::swap(roleid_, other->roleid_);
    std::swap(jointime_, other->jointime_);
    std::swap(successnum_, other->successnum_);
    std::swap(issend_, other->issend_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata SM_AnswerData::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = SM_AnswerData_descriptor_;
  metadata.reflection = SM_AnswerData_reflection_;
  return metadata;
}


// ===================================================================

#ifndef _MSC_VER
const int SM_AnswerDataRequest::kRoleidFieldNumber;
#endif  // !_MSC_VER

SM_AnswerDataRequest::SM_AnswerDataRequest()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void SM_AnswerDataRequest::InitAsDefaultInstance() {
}

SM_AnswerDataRequest::SM_AnswerDataRequest(const SM_AnswerDataRequest& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void SM_AnswerDataRequest::SharedCtor() {
  _cached_size_ = 0;
  roleid_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

SM_AnswerDataRequest::~SM_AnswerDataRequest() {
  SharedDtor();
}

void SM_AnswerDataRequest::SharedDtor() {
  if (this != default_instance_) {
  }
}

void SM_AnswerDataRequest::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* SM_AnswerDataRequest::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return SM_AnswerDataRequest_descriptor_;
}

const SM_AnswerDataRequest& SM_AnswerDataRequest::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fAnswer_2etxt();
  return *default_instance_;
}

SM_AnswerDataRequest* SM_AnswerDataRequest::default_instance_ = NULL;

SM_AnswerDataRequest* SM_AnswerDataRequest::New() const {
  return new SM_AnswerDataRequest;
}

void SM_AnswerDataRequest::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    roleid_ = 0;
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool SM_AnswerDataRequest::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required int32 roleid = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &roleid_)));
          set_has_roleid();
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

void SM_AnswerDataRequest::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int32 roleid = 1;
  if (has_roleid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->roleid(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* SM_AnswerDataRequest::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int32 roleid = 1;
  if (has_roleid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->roleid(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int SM_AnswerDataRequest::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int32 roleid = 1;
    if (has_roleid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->roleid());
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

void SM_AnswerDataRequest::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const SM_AnswerDataRequest* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const SM_AnswerDataRequest*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void SM_AnswerDataRequest::MergeFrom(const SM_AnswerDataRequest& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_roleid()) {
      set_roleid(from.roleid());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void SM_AnswerDataRequest::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void SM_AnswerDataRequest::CopyFrom(const SM_AnswerDataRequest& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool SM_AnswerDataRequest::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000001) != 0x00000001) return false;

  return true;
}

void SM_AnswerDataRequest::Swap(SM_AnswerDataRequest* other) {
  if (other != this) {
    std::swap(roleid_, other->roleid_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata SM_AnswerDataRequest::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = SM_AnswerDataRequest_descriptor_;
  metadata.reflection = SM_AnswerDataRequest_reflection_;
  return metadata;
}


// @@protoc_insertion_point(namespace_scope)

// @@protoc_insertion_point(global_scope)
#ifdef _MSC_VER
#  pragma warning(pop)
#endif