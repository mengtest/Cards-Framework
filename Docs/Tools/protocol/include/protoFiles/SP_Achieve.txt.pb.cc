// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_Achieve.txt

#define INTERNAL_SUPPRESS_PROTOBUF_FIELD_DEPRECATION
#include "SP_Achieve.txt.pb.h"
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

const ::google::protobuf::Descriptor* GM_db_Achieve_Data_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  GM_db_Achieve_Data_reflection_ = NULL;
const ::google::protobuf::Descriptor* GM_db_Achieve_return_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  GM_db_Achieve_return_reflection_ = NULL;
const ::google::protobuf::Descriptor* GM_db_Achieve_request_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  GM_db_Achieve_request_reflection_ = NULL;

}  // namespace


void protobuf_AssignDesc_SP_5fAchieve_2etxt() {
  protobuf_AddDesc_SP_5fAchieve_2etxt();
  const ::google::protobuf::FileDescriptor* file =
    ::google::protobuf::DescriptorPool::generated_pool()->FindFileByName(
      "SP_Achieve.txt");
  GOOGLE_CHECK(file != NULL);
  GM_db_Achieve_Data_descriptor_ = file->message_type(0);
  static const int GM_db_Achieve_Data_offsets_[4] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_db_Achieve_Data, roleid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_db_Achieve_Data, channel_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_db_Achieve_Data, type_id_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_db_Achieve_Data, times_),
  };
  GM_db_Achieve_Data_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      GM_db_Achieve_Data_descriptor_,
      GM_db_Achieve_Data::default_instance_,
      GM_db_Achieve_Data_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_db_Achieve_Data, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_db_Achieve_Data, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(GM_db_Achieve_Data));
  GM_db_Achieve_return_descriptor_ = file->message_type(1);
  static const int GM_db_Achieve_return_offsets_[2] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_db_Achieve_return, roleid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_db_Achieve_return, data_),
  };
  GM_db_Achieve_return_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      GM_db_Achieve_return_descriptor_,
      GM_db_Achieve_return::default_instance_,
      GM_db_Achieve_return_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_db_Achieve_return, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_db_Achieve_return, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(GM_db_Achieve_return));
  GM_db_Achieve_request_descriptor_ = file->message_type(2);
  static const int GM_db_Achieve_request_offsets_[1] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_db_Achieve_request, roleid_),
  };
  GM_db_Achieve_request_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      GM_db_Achieve_request_descriptor_,
      GM_db_Achieve_request::default_instance_,
      GM_db_Achieve_request_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_db_Achieve_request, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(GM_db_Achieve_request, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(GM_db_Achieve_request));
}

namespace {

GOOGLE_PROTOBUF_DECLARE_ONCE(protobuf_AssignDescriptors_once_);
inline void protobuf_AssignDescriptorsOnce() {
  ::google::protobuf::GoogleOnceInit(&protobuf_AssignDescriptors_once_,
                 &protobuf_AssignDesc_SP_5fAchieve_2etxt);
}

void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    GM_db_Achieve_Data_descriptor_, &GM_db_Achieve_Data::default_instance());
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    GM_db_Achieve_return_descriptor_, &GM_db_Achieve_return::default_instance());
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    GM_db_Achieve_request_descriptor_, &GM_db_Achieve_request::default_instance());
}

}  // namespace

void protobuf_ShutdownFile_SP_5fAchieve_2etxt() {
  delete GM_db_Achieve_Data::default_instance_;
  delete GM_db_Achieve_Data_reflection_;
  delete GM_db_Achieve_return::default_instance_;
  delete GM_db_Achieve_return_reflection_;
  delete GM_db_Achieve_request::default_instance_;
  delete GM_db_Achieve_request_reflection_;
}

void protobuf_AddDesc_SP_5fAchieve_2etxt() {
  static bool already_here = false;
  if (already_here) return;
  already_here = true;
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  ::google::protobuf::DescriptorPool::InternalAddGeneratedFile(
    "\n\016SP_Achieve.txt\"U\n\022GM_db_Achieve_Data\022\016"
    "\n\006roleid\030\001 \002(\005\022\017\n\007channel\030\002 \001(\005\022\017\n\007type_"
    "id\030\003 \001(\005\022\r\n\005times\030\004 \001(\005\"I\n\024GM_db_Achieve"
    "_return\022\016\n\006roleid\030\001 \002(\005\022!\n\004data\030\002 \003(\0132\023."
    "GM_db_Achieve_Data\"\'\n\025GM_db_Achieve_requ"
    "est\022\016\n\006roleid\030\001 \002(\005", 219);
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "SP_Achieve.txt", &protobuf_RegisterTypes);
  GM_db_Achieve_Data::default_instance_ = new GM_db_Achieve_Data();
  GM_db_Achieve_return::default_instance_ = new GM_db_Achieve_return();
  GM_db_Achieve_request::default_instance_ = new GM_db_Achieve_request();
  GM_db_Achieve_Data::default_instance_->InitAsDefaultInstance();
  GM_db_Achieve_return::default_instance_->InitAsDefaultInstance();
  GM_db_Achieve_request::default_instance_->InitAsDefaultInstance();
  ::google::protobuf::internal::OnShutdown(&protobuf_ShutdownFile_SP_5fAchieve_2etxt);
}

// Force AddDescriptors() to be called at static initialization time.
struct StaticDescriptorInitializer_SP_5fAchieve_2etxt {
  StaticDescriptorInitializer_SP_5fAchieve_2etxt() {
    protobuf_AddDesc_SP_5fAchieve_2etxt();
  }
} static_descriptor_initializer_SP_5fAchieve_2etxt_;

// ===================================================================

#ifndef _MSC_VER
const int GM_db_Achieve_Data::kRoleidFieldNumber;
const int GM_db_Achieve_Data::kChannelFieldNumber;
const int GM_db_Achieve_Data::kTypeIdFieldNumber;
const int GM_db_Achieve_Data::kTimesFieldNumber;
#endif  // !_MSC_VER

GM_db_Achieve_Data::GM_db_Achieve_Data()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void GM_db_Achieve_Data::InitAsDefaultInstance() {
}

GM_db_Achieve_Data::GM_db_Achieve_Data(const GM_db_Achieve_Data& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void GM_db_Achieve_Data::SharedCtor() {
  _cached_size_ = 0;
  roleid_ = 0;
  channel_ = 0;
  type_id_ = 0;
  times_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

GM_db_Achieve_Data::~GM_db_Achieve_Data() {
  SharedDtor();
}

void GM_db_Achieve_Data::SharedDtor() {
  if (this != default_instance_) {
  }
}

void GM_db_Achieve_Data::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* GM_db_Achieve_Data::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return GM_db_Achieve_Data_descriptor_;
}

const GM_db_Achieve_Data& GM_db_Achieve_Data::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fAchieve_2etxt();
  return *default_instance_;
}

GM_db_Achieve_Data* GM_db_Achieve_Data::default_instance_ = NULL;

GM_db_Achieve_Data* GM_db_Achieve_Data::New() const {
  return new GM_db_Achieve_Data;
}

void GM_db_Achieve_Data::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    roleid_ = 0;
    channel_ = 0;
    type_id_ = 0;
    times_ = 0;
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool GM_db_Achieve_Data::MergePartialFromCodedStream(
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
        if (input->ExpectTag(16)) goto parse_channel;
        break;
      }

      // optional int32 channel = 2;
      case 2: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_channel:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &channel_)));
          set_has_channel();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(24)) goto parse_type_id;
        break;
      }

      // optional int32 type_id = 3;
      case 3: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_type_id:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &type_id_)));
          set_has_type_id();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(32)) goto parse_times;
        break;
      }

      // optional int32 times = 4;
      case 4: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_times:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &times_)));
          set_has_times();
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

void GM_db_Achieve_Data::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int32 roleid = 1;
  if (has_roleid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->roleid(), output);
  }

  // optional int32 channel = 2;
  if (has_channel()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(2, this->channel(), output);
  }

  // optional int32 type_id = 3;
  if (has_type_id()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(3, this->type_id(), output);
  }

  // optional int32 times = 4;
  if (has_times()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(4, this->times(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* GM_db_Achieve_Data::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int32 roleid = 1;
  if (has_roleid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->roleid(), target);
  }

  // optional int32 channel = 2;
  if (has_channel()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(2, this->channel(), target);
  }

  // optional int32 type_id = 3;
  if (has_type_id()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(3, this->type_id(), target);
  }

  // optional int32 times = 4;
  if (has_times()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(4, this->times(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int GM_db_Achieve_Data::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int32 roleid = 1;
    if (has_roleid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->roleid());
    }

    // optional int32 channel = 2;
    if (has_channel()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->channel());
    }

    // optional int32 type_id = 3;
    if (has_type_id()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->type_id());
    }

    // optional int32 times = 4;
    if (has_times()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->times());
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

void GM_db_Achieve_Data::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const GM_db_Achieve_Data* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const GM_db_Achieve_Data*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void GM_db_Achieve_Data::MergeFrom(const GM_db_Achieve_Data& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_roleid()) {
      set_roleid(from.roleid());
    }
    if (from.has_channel()) {
      set_channel(from.channel());
    }
    if (from.has_type_id()) {
      set_type_id(from.type_id());
    }
    if (from.has_times()) {
      set_times(from.times());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void GM_db_Achieve_Data::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void GM_db_Achieve_Data::CopyFrom(const GM_db_Achieve_Data& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool GM_db_Achieve_Data::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000001) != 0x00000001) return false;

  return true;
}

void GM_db_Achieve_Data::Swap(GM_db_Achieve_Data* other) {
  if (other != this) {
    std::swap(roleid_, other->roleid_);
    std::swap(channel_, other->channel_);
    std::swap(type_id_, other->type_id_);
    std::swap(times_, other->times_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata GM_db_Achieve_Data::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = GM_db_Achieve_Data_descriptor_;
  metadata.reflection = GM_db_Achieve_Data_reflection_;
  return metadata;
}


// ===================================================================

#ifndef _MSC_VER
const int GM_db_Achieve_return::kRoleidFieldNumber;
const int GM_db_Achieve_return::kDataFieldNumber;
#endif  // !_MSC_VER

GM_db_Achieve_return::GM_db_Achieve_return()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void GM_db_Achieve_return::InitAsDefaultInstance() {
}

GM_db_Achieve_return::GM_db_Achieve_return(const GM_db_Achieve_return& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void GM_db_Achieve_return::SharedCtor() {
  _cached_size_ = 0;
  roleid_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

GM_db_Achieve_return::~GM_db_Achieve_return() {
  SharedDtor();
}

void GM_db_Achieve_return::SharedDtor() {
  if (this != default_instance_) {
  }
}

void GM_db_Achieve_return::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* GM_db_Achieve_return::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return GM_db_Achieve_return_descriptor_;
}

const GM_db_Achieve_return& GM_db_Achieve_return::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fAchieve_2etxt();
  return *default_instance_;
}

GM_db_Achieve_return* GM_db_Achieve_return::default_instance_ = NULL;

GM_db_Achieve_return* GM_db_Achieve_return::New() const {
  return new GM_db_Achieve_return;
}

void GM_db_Achieve_return::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    roleid_ = 0;
  }
  data_.Clear();
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool GM_db_Achieve_return::MergePartialFromCodedStream(
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
        if (input->ExpectTag(18)) goto parse_data;
        break;
      }

      // repeated .GM_db_Achieve_Data data = 2;
      case 2: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_LENGTH_DELIMITED) {
         parse_data:
          DO_(::google::protobuf::internal::WireFormatLite::ReadMessageNoVirtual(
                input, add_data()));
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(18)) goto parse_data;
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

void GM_db_Achieve_return::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int32 roleid = 1;
  if (has_roleid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->roleid(), output);
  }

  // repeated .GM_db_Achieve_Data data = 2;
  for (int i = 0; i < this->data_size(); i++) {
    ::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(
      2, this->data(i), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* GM_db_Achieve_return::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int32 roleid = 1;
  if (has_roleid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->roleid(), target);
  }

  // repeated .GM_db_Achieve_Data data = 2;
  for (int i = 0; i < this->data_size(); i++) {
    target = ::google::protobuf::internal::WireFormatLite::
      WriteMessageNoVirtualToArray(
        2, this->data(i), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int GM_db_Achieve_return::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int32 roleid = 1;
    if (has_roleid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->roleid());
    }

  }
  // repeated .GM_db_Achieve_Data data = 2;
  total_size += 1 * this->data_size();
  for (int i = 0; i < this->data_size(); i++) {
    total_size +=
      ::google::protobuf::internal::WireFormatLite::MessageSizeNoVirtual(
        this->data(i));
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

void GM_db_Achieve_return::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const GM_db_Achieve_return* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const GM_db_Achieve_return*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void GM_db_Achieve_return::MergeFrom(const GM_db_Achieve_return& from) {
  GOOGLE_CHECK_NE(&from, this);
  data_.MergeFrom(from.data_);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_roleid()) {
      set_roleid(from.roleid());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void GM_db_Achieve_return::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void GM_db_Achieve_return::CopyFrom(const GM_db_Achieve_return& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool GM_db_Achieve_return::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000001) != 0x00000001) return false;

  for (int i = 0; i < data_size(); i++) {
    if (!this->data(i).IsInitialized()) return false;
  }
  return true;
}

void GM_db_Achieve_return::Swap(GM_db_Achieve_return* other) {
  if (other != this) {
    std::swap(roleid_, other->roleid_);
    data_.Swap(&other->data_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata GM_db_Achieve_return::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = GM_db_Achieve_return_descriptor_;
  metadata.reflection = GM_db_Achieve_return_reflection_;
  return metadata;
}


// ===================================================================

#ifndef _MSC_VER
const int GM_db_Achieve_request::kRoleidFieldNumber;
#endif  // !_MSC_VER

GM_db_Achieve_request::GM_db_Achieve_request()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void GM_db_Achieve_request::InitAsDefaultInstance() {
}

GM_db_Achieve_request::GM_db_Achieve_request(const GM_db_Achieve_request& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void GM_db_Achieve_request::SharedCtor() {
  _cached_size_ = 0;
  roleid_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

GM_db_Achieve_request::~GM_db_Achieve_request() {
  SharedDtor();
}

void GM_db_Achieve_request::SharedDtor() {
  if (this != default_instance_) {
  }
}

void GM_db_Achieve_request::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* GM_db_Achieve_request::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return GM_db_Achieve_request_descriptor_;
}

const GM_db_Achieve_request& GM_db_Achieve_request::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fAchieve_2etxt();
  return *default_instance_;
}

GM_db_Achieve_request* GM_db_Achieve_request::default_instance_ = NULL;

GM_db_Achieve_request* GM_db_Achieve_request::New() const {
  return new GM_db_Achieve_request;
}

void GM_db_Achieve_request::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    roleid_ = 0;
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool GM_db_Achieve_request::MergePartialFromCodedStream(
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

void GM_db_Achieve_request::SerializeWithCachedSizes(
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

::google::protobuf::uint8* GM_db_Achieve_request::SerializeWithCachedSizesToArray(
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

int GM_db_Achieve_request::ByteSize() const {
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

void GM_db_Achieve_request::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const GM_db_Achieve_request* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const GM_db_Achieve_request*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void GM_db_Achieve_request::MergeFrom(const GM_db_Achieve_request& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_roleid()) {
      set_roleid(from.roleid());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void GM_db_Achieve_request::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void GM_db_Achieve_request::CopyFrom(const GM_db_Achieve_request& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool GM_db_Achieve_request::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000001) != 0x00000001) return false;

  return true;
}

void GM_db_Achieve_request::Swap(GM_db_Achieve_request* other) {
  if (other != this) {
    std::swap(roleid_, other->roleid_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata GM_db_Achieve_request::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = GM_db_Achieve_request_descriptor_;
  metadata.reflection = GM_db_Achieve_request_reflection_;
  return metadata;
}


// @@protoc_insertion_point(namespace_scope)

// @@protoc_insertion_point(global_scope)
#ifdef _MSC_VER
#  pragma warning(pop)
#endif
