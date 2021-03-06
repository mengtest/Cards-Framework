// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_Playermanager.txt

#define INTERNAL_SUPPRESS_PROTOBUF_FIELD_DEPRECATION
#include "SP_Playermanager.txt.pb.h"
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

const ::google::protobuf::Descriptor* SP_PlayerState_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  SP_PlayerState_reflection_ = NULL;
const ::google::protobuf::Descriptor* SP_PlayerOnlineCheck_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  SP_PlayerOnlineCheck_reflection_ = NULL;
const ::google::protobuf::Descriptor* SP_UpdateIncrement_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  SP_UpdateIncrement_reflection_ = NULL;

}  // namespace


void protobuf_AssignDesc_SP_5fPlayermanager_2etxt() {
  protobuf_AddDesc_SP_5fPlayermanager_2etxt();
  const ::google::protobuf::FileDescriptor* file =
    ::google::protobuf::DescriptorPool::generated_pool()->FindFileByName(
      "SP_Playermanager.txt");
  GOOGLE_CHECK(file != NULL);
  SP_PlayerState_descriptor_ = file->message_type(0);
  static const int SP_PlayerState_offsets_[2] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SP_PlayerState, roleid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SP_PlayerState, state_),
  };
  SP_PlayerState_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      SP_PlayerState_descriptor_,
      SP_PlayerState::default_instance_,
      SP_PlayerState_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SP_PlayerState, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SP_PlayerState, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(SP_PlayerState));
  SP_PlayerOnlineCheck_descriptor_ = file->message_type(1);
  static const int SP_PlayerOnlineCheck_offsets_[1] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SP_PlayerOnlineCheck, playerstates_),
  };
  SP_PlayerOnlineCheck_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      SP_PlayerOnlineCheck_descriptor_,
      SP_PlayerOnlineCheck::default_instance_,
      SP_PlayerOnlineCheck_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SP_PlayerOnlineCheck, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SP_PlayerOnlineCheck, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(SP_PlayerOnlineCheck));
  SP_UpdateIncrement_descriptor_ = file->message_type(2);
  static const int SP_UpdateIncrement_offsets_[2] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SP_UpdateIncrement, incrementid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SP_UpdateIncrement, roleid_),
  };
  SP_UpdateIncrement_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      SP_UpdateIncrement_descriptor_,
      SP_UpdateIncrement::default_instance_,
      SP_UpdateIncrement_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SP_UpdateIncrement, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SP_UpdateIncrement, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(SP_UpdateIncrement));
}

namespace {

GOOGLE_PROTOBUF_DECLARE_ONCE(protobuf_AssignDescriptors_once_);
inline void protobuf_AssignDescriptorsOnce() {
  ::google::protobuf::GoogleOnceInit(&protobuf_AssignDescriptors_once_,
                 &protobuf_AssignDesc_SP_5fPlayermanager_2etxt);
}

void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    SP_PlayerState_descriptor_, &SP_PlayerState::default_instance());
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    SP_PlayerOnlineCheck_descriptor_, &SP_PlayerOnlineCheck::default_instance());
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    SP_UpdateIncrement_descriptor_, &SP_UpdateIncrement::default_instance());
}

}  // namespace

void protobuf_ShutdownFile_SP_5fPlayermanager_2etxt() {
  delete SP_PlayerState::default_instance_;
  delete SP_PlayerState_reflection_;
  delete SP_PlayerOnlineCheck::default_instance_;
  delete SP_PlayerOnlineCheck_reflection_;
  delete SP_UpdateIncrement::default_instance_;
  delete SP_UpdateIncrement_reflection_;
}

void protobuf_AddDesc_SP_5fPlayermanager_2etxt() {
  static bool already_here = false;
  if (already_here) return;
  already_here = true;
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  ::google::protobuf::DescriptorPool::InternalAddGeneratedFile(
    "\n\024SP_Playermanager.txt\"/\n\016SP_PlayerState"
    "\022\016\n\006roleid\030\001 \002(\005\022\r\n\005state\030\002 \002(\005\"=\n\024SP_Pl"
    "ayerOnlineCheck\022%\n\014playerStateS\030\001 \003(\0132\017."
    "SP_PlayerState\"9\n\022SP_UpdateIncrement\022\023\n\013"
    "incrementid\030\001 \002(\003\022\016\n\006roleid\030\002 \002(\005", 193);
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "SP_Playermanager.txt", &protobuf_RegisterTypes);
  SP_PlayerState::default_instance_ = new SP_PlayerState();
  SP_PlayerOnlineCheck::default_instance_ = new SP_PlayerOnlineCheck();
  SP_UpdateIncrement::default_instance_ = new SP_UpdateIncrement();
  SP_PlayerState::default_instance_->InitAsDefaultInstance();
  SP_PlayerOnlineCheck::default_instance_->InitAsDefaultInstance();
  SP_UpdateIncrement::default_instance_->InitAsDefaultInstance();
  ::google::protobuf::internal::OnShutdown(&protobuf_ShutdownFile_SP_5fPlayermanager_2etxt);
}

// Force AddDescriptors() to be called at static initialization time.
struct StaticDescriptorInitializer_SP_5fPlayermanager_2etxt {
  StaticDescriptorInitializer_SP_5fPlayermanager_2etxt() {
    protobuf_AddDesc_SP_5fPlayermanager_2etxt();
  }
} static_descriptor_initializer_SP_5fPlayermanager_2etxt_;

// ===================================================================

#ifndef _MSC_VER
const int SP_PlayerState::kRoleidFieldNumber;
const int SP_PlayerState::kStateFieldNumber;
#endif  // !_MSC_VER

SP_PlayerState::SP_PlayerState()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void SP_PlayerState::InitAsDefaultInstance() {
}

SP_PlayerState::SP_PlayerState(const SP_PlayerState& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void SP_PlayerState::SharedCtor() {
  _cached_size_ = 0;
  roleid_ = 0;
  state_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

SP_PlayerState::~SP_PlayerState() {
  SharedDtor();
}

void SP_PlayerState::SharedDtor() {
  if (this != default_instance_) {
  }
}

void SP_PlayerState::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* SP_PlayerState::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return SP_PlayerState_descriptor_;
}

const SP_PlayerState& SP_PlayerState::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fPlayermanager_2etxt();
  return *default_instance_;
}

SP_PlayerState* SP_PlayerState::default_instance_ = NULL;

SP_PlayerState* SP_PlayerState::New() const {
  return new SP_PlayerState;
}

void SP_PlayerState::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    roleid_ = 0;
    state_ = 0;
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool SP_PlayerState::MergePartialFromCodedStream(
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
        if (input->ExpectTag(16)) goto parse_state;
        break;
      }

      // required int32 state = 2;
      case 2: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_state:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &state_)));
          set_has_state();
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

void SP_PlayerState::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int32 roleid = 1;
  if (has_roleid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->roleid(), output);
  }

  // required int32 state = 2;
  if (has_state()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(2, this->state(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* SP_PlayerState::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int32 roleid = 1;
  if (has_roleid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->roleid(), target);
  }

  // required int32 state = 2;
  if (has_state()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(2, this->state(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int SP_PlayerState::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int32 roleid = 1;
    if (has_roleid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->roleid());
    }

    // required int32 state = 2;
    if (has_state()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->state());
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

void SP_PlayerState::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const SP_PlayerState* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const SP_PlayerState*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void SP_PlayerState::MergeFrom(const SP_PlayerState& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_roleid()) {
      set_roleid(from.roleid());
    }
    if (from.has_state()) {
      set_state(from.state());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void SP_PlayerState::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void SP_PlayerState::CopyFrom(const SP_PlayerState& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool SP_PlayerState::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000003) != 0x00000003) return false;

  return true;
}

void SP_PlayerState::Swap(SP_PlayerState* other) {
  if (other != this) {
    std::swap(roleid_, other->roleid_);
    std::swap(state_, other->state_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata SP_PlayerState::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = SP_PlayerState_descriptor_;
  metadata.reflection = SP_PlayerState_reflection_;
  return metadata;
}


// ===================================================================

#ifndef _MSC_VER
const int SP_PlayerOnlineCheck::kPlayerStateSFieldNumber;
#endif  // !_MSC_VER

SP_PlayerOnlineCheck::SP_PlayerOnlineCheck()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void SP_PlayerOnlineCheck::InitAsDefaultInstance() {
}

SP_PlayerOnlineCheck::SP_PlayerOnlineCheck(const SP_PlayerOnlineCheck& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void SP_PlayerOnlineCheck::SharedCtor() {
  _cached_size_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

SP_PlayerOnlineCheck::~SP_PlayerOnlineCheck() {
  SharedDtor();
}

void SP_PlayerOnlineCheck::SharedDtor() {
  if (this != default_instance_) {
  }
}

void SP_PlayerOnlineCheck::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* SP_PlayerOnlineCheck::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return SP_PlayerOnlineCheck_descriptor_;
}

const SP_PlayerOnlineCheck& SP_PlayerOnlineCheck::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fPlayermanager_2etxt();
  return *default_instance_;
}

SP_PlayerOnlineCheck* SP_PlayerOnlineCheck::default_instance_ = NULL;

SP_PlayerOnlineCheck* SP_PlayerOnlineCheck::New() const {
  return new SP_PlayerOnlineCheck;
}

void SP_PlayerOnlineCheck::Clear() {
  playerstates_.Clear();
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool SP_PlayerOnlineCheck::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // repeated .SP_PlayerState playerStateS = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_LENGTH_DELIMITED) {
         parse_playerStateS:
          DO_(::google::protobuf::internal::WireFormatLite::ReadMessageNoVirtual(
                input, add_playerstates()));
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(10)) goto parse_playerStateS;
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

void SP_PlayerOnlineCheck::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // repeated .SP_PlayerState playerStateS = 1;
  for (int i = 0; i < this->playerstates_size(); i++) {
    ::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(
      1, this->playerstates(i), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* SP_PlayerOnlineCheck::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // repeated .SP_PlayerState playerStateS = 1;
  for (int i = 0; i < this->playerstates_size(); i++) {
    target = ::google::protobuf::internal::WireFormatLite::
      WriteMessageNoVirtualToArray(
        1, this->playerstates(i), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int SP_PlayerOnlineCheck::ByteSize() const {
  int total_size = 0;

  // repeated .SP_PlayerState playerStateS = 1;
  total_size += 1 * this->playerstates_size();
  for (int i = 0; i < this->playerstates_size(); i++) {
    total_size +=
      ::google::protobuf::internal::WireFormatLite::MessageSizeNoVirtual(
        this->playerstates(i));
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

void SP_PlayerOnlineCheck::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const SP_PlayerOnlineCheck* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const SP_PlayerOnlineCheck*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void SP_PlayerOnlineCheck::MergeFrom(const SP_PlayerOnlineCheck& from) {
  GOOGLE_CHECK_NE(&from, this);
  playerstates_.MergeFrom(from.playerstates_);
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void SP_PlayerOnlineCheck::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void SP_PlayerOnlineCheck::CopyFrom(const SP_PlayerOnlineCheck& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool SP_PlayerOnlineCheck::IsInitialized() const {

  for (int i = 0; i < playerstates_size(); i++) {
    if (!this->playerstates(i).IsInitialized()) return false;
  }
  return true;
}

void SP_PlayerOnlineCheck::Swap(SP_PlayerOnlineCheck* other) {
  if (other != this) {
    playerstates_.Swap(&other->playerstates_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata SP_PlayerOnlineCheck::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = SP_PlayerOnlineCheck_descriptor_;
  metadata.reflection = SP_PlayerOnlineCheck_reflection_;
  return metadata;
}


// ===================================================================

#ifndef _MSC_VER
const int SP_UpdateIncrement::kIncrementidFieldNumber;
const int SP_UpdateIncrement::kRoleidFieldNumber;
#endif  // !_MSC_VER

SP_UpdateIncrement::SP_UpdateIncrement()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void SP_UpdateIncrement::InitAsDefaultInstance() {
}

SP_UpdateIncrement::SP_UpdateIncrement(const SP_UpdateIncrement& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void SP_UpdateIncrement::SharedCtor() {
  _cached_size_ = 0;
  incrementid_ = GOOGLE_LONGLONG(0);
  roleid_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

SP_UpdateIncrement::~SP_UpdateIncrement() {
  SharedDtor();
}

void SP_UpdateIncrement::SharedDtor() {
  if (this != default_instance_) {
  }
}

void SP_UpdateIncrement::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* SP_UpdateIncrement::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return SP_UpdateIncrement_descriptor_;
}

const SP_UpdateIncrement& SP_UpdateIncrement::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fPlayermanager_2etxt();
  return *default_instance_;
}

SP_UpdateIncrement* SP_UpdateIncrement::default_instance_ = NULL;

SP_UpdateIncrement* SP_UpdateIncrement::New() const {
  return new SP_UpdateIncrement;
}

void SP_UpdateIncrement::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    incrementid_ = GOOGLE_LONGLONG(0);
    roleid_ = 0;
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool SP_UpdateIncrement::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required int64 incrementid = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int64, ::google::protobuf::internal::WireFormatLite::TYPE_INT64>(
                 input, &incrementid_)));
          set_has_incrementid();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(16)) goto parse_roleid;
        break;
      }

      // required int32 roleid = 2;
      case 2: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_roleid:
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

void SP_UpdateIncrement::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int64 incrementid = 1;
  if (has_incrementid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt64(1, this->incrementid(), output);
  }

  // required int32 roleid = 2;
  if (has_roleid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(2, this->roleid(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* SP_UpdateIncrement::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int64 incrementid = 1;
  if (has_incrementid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt64ToArray(1, this->incrementid(), target);
  }

  // required int32 roleid = 2;
  if (has_roleid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(2, this->roleid(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int SP_UpdateIncrement::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int64 incrementid = 1;
    if (has_incrementid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int64Size(
          this->incrementid());
    }

    // required int32 roleid = 2;
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

void SP_UpdateIncrement::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const SP_UpdateIncrement* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const SP_UpdateIncrement*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void SP_UpdateIncrement::MergeFrom(const SP_UpdateIncrement& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_incrementid()) {
      set_incrementid(from.incrementid());
    }
    if (from.has_roleid()) {
      set_roleid(from.roleid());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void SP_UpdateIncrement::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void SP_UpdateIncrement::CopyFrom(const SP_UpdateIncrement& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool SP_UpdateIncrement::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000003) != 0x00000003) return false;

  return true;
}

void SP_UpdateIncrement::Swap(SP_UpdateIncrement* other) {
  if (other != this) {
    std::swap(incrementid_, other->incrementid_);
    std::swap(roleid_, other->roleid_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata SP_UpdateIncrement::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = SP_UpdateIncrement_descriptor_;
  metadata.reflection = SP_UpdateIncrement_reflection_;
  return metadata;
}


// @@protoc_insertion_point(namespace_scope)

// @@protoc_insertion_point(global_scope)
#ifdef _MSC_VER
#  pragma warning(pop)
#endif
