// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: scene.txt

#define INTERNAL_SUPPRESS_PROTOBUF_FIELD_DEPRECATION
#include "scene.txt.pb.h"
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

const ::google::protobuf::Descriptor* GM_LoginSceneReturn_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  GM_LoginSceneReturn_reflection_ = NULL;
const ::google::protobuf::Descriptor* GM_BroadCast_PeopleChange_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  GM_BroadCast_PeopleChange_reflection_ = NULL;

}  // namespace


void protobuf_AssignDesc_scene_2etxt() {
  protobuf_AddDesc_scene_2etxt();
  const ::google::protobuf::FileDescriptor* file =
    ::google::protobuf::DescriptorPool::generated_pool()->FindFileByName(
      "scene.txt");
  GOOGLE_CHECK(file != NULL);
  GM_LoginSceneReturn_descriptor_ = file->message_type(0);
  static const int GM_LoginSceneReturn_offsets_[3] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_LoginSceneReturn, sceneid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_LoginSceneReturn, posx_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_LoginSceneReturn, posz_),
  };
  GM_LoginSceneReturn_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      GM_LoginSceneReturn_descriptor_,
      GM_LoginSceneReturn::default_instance_,
      GM_LoginSceneReturn_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_LoginSceneReturn, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_LoginSceneReturn, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(GM_LoginSceneReturn));
  GM_BroadCast_PeopleChange_descriptor_ = file->message_type(1);
  static const int GM_BroadCast_PeopleChange_offsets_[2] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_BroadCast_PeopleChange, roleid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_BroadCast_PeopleChange, broadcastpeople_),
  };
  GM_BroadCast_PeopleChange_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      GM_BroadCast_PeopleChange_descriptor_,
      GM_BroadCast_PeopleChange::default_instance_,
      GM_BroadCast_PeopleChange_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_BroadCast_PeopleChange, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_BroadCast_PeopleChange, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(GM_BroadCast_PeopleChange));
}

namespace {

GOOGLE_PROTOBUF_DECLARE_ONCE(protobuf_AssignDescriptors_once_);
inline void protobuf_AssignDescriptorsOnce() {
  ::google::protobuf::GoogleOnceInit(&protobuf_AssignDescriptors_once_,
                 &protobuf_AssignDesc_scene_2etxt);
}

void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    GM_LoginSceneReturn_descriptor_, &GM_LoginSceneReturn::default_instance());
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    GM_BroadCast_PeopleChange_descriptor_, &GM_BroadCast_PeopleChange::default_instance());
}

}  // namespace

void protobuf_ShutdownFile_scene_2etxt() {
  delete GM_LoginSceneReturn::default_instance_;
  delete GM_LoginSceneReturn_reflection_;
  delete GM_BroadCast_PeopleChange::default_instance_;
  delete GM_BroadCast_PeopleChange_reflection_;
}

void protobuf_AddDesc_scene_2etxt() {
  static bool already_here = false;
  if (already_here) return;
  already_here = true;
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  ::google::protobuf::DescriptorPool::InternalAddGeneratedFile(
    "\n\tscene.txt\"B\n\023GM_LoginSceneReturn\022\017\n\007sc"
    "eneID\030\001 \002(\005\022\014\n\004posx\030\002 \002(\002\022\014\n\004posz\030\003 \002(\002\""
    "D\n\031GM_BroadCast_PeopleChange\022\016\n\006roleid\030\001"
    " \002(\005\022\027\n\017broadcastpeople\030\002 \001(\005", 149);
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "scene.txt", &protobuf_RegisterTypes);
  GM_LoginSceneReturn::default_instance_ = new GM_LoginSceneReturn();
  GM_BroadCast_PeopleChange::default_instance_ = new GM_BroadCast_PeopleChange();
  GM_LoginSceneReturn::default_instance_->InitAsDefaultInstance();
  GM_BroadCast_PeopleChange::default_instance_->InitAsDefaultInstance();
  ::google::protobuf::internal::OnShutdown(&protobuf_ShutdownFile_scene_2etxt);
}

// Force AddDescriptors() to be called at static initialization time.
struct StaticDescriptorInitializer_scene_2etxt {
  StaticDescriptorInitializer_scene_2etxt() {
    protobuf_AddDesc_scene_2etxt();
  }
} static_descriptor_initializer_scene_2etxt_;

// ===================================================================

#ifndef _MSC_VER
const int GM_LoginSceneReturn::kSceneIDFieldNumber;
const int GM_LoginSceneReturn::kPosxFieldNumber;
const int GM_LoginSceneReturn::kPoszFieldNumber;
#endif  // !_MSC_VER

GM_LoginSceneReturn::GM_LoginSceneReturn()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void GM_LoginSceneReturn::InitAsDefaultInstance() {
}

GM_LoginSceneReturn::GM_LoginSceneReturn(const GM_LoginSceneReturn& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void GM_LoginSceneReturn::SharedCtor() {
  _cached_size_ = 0;
  sceneid_ = 0;
  posx_ = 0;
  posz_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

GM_LoginSceneReturn::~GM_LoginSceneReturn() {
  SharedDtor();
}

void GM_LoginSceneReturn::SharedDtor() {
  if (this != default_instance_) {
  }
}

void GM_LoginSceneReturn::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* GM_LoginSceneReturn::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return GM_LoginSceneReturn_descriptor_;
}

const GM_LoginSceneReturn& GM_LoginSceneReturn::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_scene_2etxt();
  return *default_instance_;
}

GM_LoginSceneReturn* GM_LoginSceneReturn::default_instance_ = NULL;

GM_LoginSceneReturn* GM_LoginSceneReturn::New() const {
  return new GM_LoginSceneReturn;
}

void GM_LoginSceneReturn::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    sceneid_ = 0;
    posx_ = 0;
    posz_ = 0;
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool GM_LoginSceneReturn::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required int32 sceneID = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &sceneid_)));
          set_has_sceneid();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(21)) goto parse_posx;
        break;
      }

      // required float posx = 2;
      case 2: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_FIXED32) {
         parse_posx:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   float, ::google::protobuf::internal::WireFormatLite::TYPE_FLOAT>(
                 input, &posx_)));
          set_has_posx();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(29)) goto parse_posz;
        break;
      }

      // required float posz = 3;
      case 3: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_FIXED32) {
         parse_posz:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   float, ::google::protobuf::internal::WireFormatLite::TYPE_FLOAT>(
                 input, &posz_)));
          set_has_posz();
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

void GM_LoginSceneReturn::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int32 sceneID = 1;
  if (has_sceneid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->sceneid(), output);
  }

  // required float posx = 2;
  if (has_posx()) {
    ::google::protobuf::internal::WireFormatLite::WriteFloat(2, this->posx(), output);
  }

  // required float posz = 3;
  if (has_posz()) {
    ::google::protobuf::internal::WireFormatLite::WriteFloat(3, this->posz(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* GM_LoginSceneReturn::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int32 sceneID = 1;
  if (has_sceneid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->sceneid(), target);
  }

  // required float posx = 2;
  if (has_posx()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteFloatToArray(2, this->posx(), target);
  }

  // required float posz = 3;
  if (has_posz()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteFloatToArray(3, this->posz(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int GM_LoginSceneReturn::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int32 sceneID = 1;
    if (has_sceneid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->sceneid());
    }

    // required float posx = 2;
    if (has_posx()) {
      total_size += 1 + 4;
    }

    // required float posz = 3;
    if (has_posz()) {
      total_size += 1 + 4;
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

void GM_LoginSceneReturn::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const GM_LoginSceneReturn* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const GM_LoginSceneReturn*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void GM_LoginSceneReturn::MergeFrom(const GM_LoginSceneReturn& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_sceneid()) {
      set_sceneid(from.sceneid());
    }
    if (from.has_posx()) {
      set_posx(from.posx());
    }
    if (from.has_posz()) {
      set_posz(from.posz());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void GM_LoginSceneReturn::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void GM_LoginSceneReturn::CopyFrom(const GM_LoginSceneReturn& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool GM_LoginSceneReturn::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000007) != 0x00000007) return false;

  return true;
}

void GM_LoginSceneReturn::Swap(GM_LoginSceneReturn* other) {
  if (other != this) {
    std::swap(sceneid_, other->sceneid_);
    std::swap(posx_, other->posx_);
    std::swap(posz_, other->posz_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata GM_LoginSceneReturn::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = GM_LoginSceneReturn_descriptor_;
  metadata.reflection = GM_LoginSceneReturn_reflection_;
  return metadata;
}


// ===================================================================

#ifndef _MSC_VER
const int GM_BroadCast_PeopleChange::kRoleidFieldNumber;
const int GM_BroadCast_PeopleChange::kBroadcastpeopleFieldNumber;
#endif  // !_MSC_VER

GM_BroadCast_PeopleChange::GM_BroadCast_PeopleChange()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void GM_BroadCast_PeopleChange::InitAsDefaultInstance() {
}

GM_BroadCast_PeopleChange::GM_BroadCast_PeopleChange(const GM_BroadCast_PeopleChange& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void GM_BroadCast_PeopleChange::SharedCtor() {
  _cached_size_ = 0;
  roleid_ = 0;
  broadcastpeople_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

GM_BroadCast_PeopleChange::~GM_BroadCast_PeopleChange() {
  SharedDtor();
}

void GM_BroadCast_PeopleChange::SharedDtor() {
  if (this != default_instance_) {
  }
}

void GM_BroadCast_PeopleChange::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* GM_BroadCast_PeopleChange::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return GM_BroadCast_PeopleChange_descriptor_;
}

const GM_BroadCast_PeopleChange& GM_BroadCast_PeopleChange::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_scene_2etxt();
  return *default_instance_;
}

GM_BroadCast_PeopleChange* GM_BroadCast_PeopleChange::default_instance_ = NULL;

GM_BroadCast_PeopleChange* GM_BroadCast_PeopleChange::New() const {
  return new GM_BroadCast_PeopleChange;
}

void GM_BroadCast_PeopleChange::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    roleid_ = 0;
    broadcastpeople_ = 0;
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool GM_BroadCast_PeopleChange::MergePartialFromCodedStream(
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
        if (input->ExpectTag(16)) goto parse_broadcastpeople;
        break;
      }

      // optional int32 broadcastpeople = 2;
      case 2: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_broadcastpeople:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &broadcastpeople_)));
          set_has_broadcastpeople();
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

void GM_BroadCast_PeopleChange::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int32 roleid = 1;
  if (has_roleid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->roleid(), output);
  }

  // optional int32 broadcastpeople = 2;
  if (has_broadcastpeople()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(2, this->broadcastpeople(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* GM_BroadCast_PeopleChange::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int32 roleid = 1;
  if (has_roleid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->roleid(), target);
  }

  // optional int32 broadcastpeople = 2;
  if (has_broadcastpeople()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(2, this->broadcastpeople(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int GM_BroadCast_PeopleChange::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int32 roleid = 1;
    if (has_roleid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->roleid());
    }

    // optional int32 broadcastpeople = 2;
    if (has_broadcastpeople()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->broadcastpeople());
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

void GM_BroadCast_PeopleChange::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const GM_BroadCast_PeopleChange* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const GM_BroadCast_PeopleChange*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void GM_BroadCast_PeopleChange::MergeFrom(const GM_BroadCast_PeopleChange& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_roleid()) {
      set_roleid(from.roleid());
    }
    if (from.has_broadcastpeople()) {
      set_broadcastpeople(from.broadcastpeople());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void GM_BroadCast_PeopleChange::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void GM_BroadCast_PeopleChange::CopyFrom(const GM_BroadCast_PeopleChange& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool GM_BroadCast_PeopleChange::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000001) != 0x00000001) return false;

  return true;
}

void GM_BroadCast_PeopleChange::Swap(GM_BroadCast_PeopleChange* other) {
  if (other != this) {
    std::swap(roleid_, other->roleid_);
    std::swap(broadcastpeople_, other->broadcastpeople_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata GM_BroadCast_PeopleChange::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = GM_BroadCast_PeopleChange_descriptor_;
  metadata.reflection = GM_BroadCast_PeopleChange_reflection_;
  return metadata;
}


// @@protoc_insertion_point(namespace_scope)

// @@protoc_insertion_point(global_scope)
#ifdef _MSC_VER
#  pragma warning(pop)
#endif