// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_Generalize.txt

#define INTERNAL_SUPPRESS_PROTOBUF_FIELD_DEPRECATION
#include "SP_Generalize.txt.pb.h"
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

const ::google::protobuf::Descriptor* SM_SendClickDataToGs_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  SM_SendClickDataToGs_reflection_ = NULL;
const ::google::protobuf::Descriptor* SM_SendAllDataToGs_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  SM_SendAllDataToGs_reflection_ = NULL;
const ::google::protobuf::Descriptor* SM_OneData_Proto_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  SM_OneData_Proto_reflection_ = NULL;

}  // namespace


void protobuf_AssignDesc_SP_5fGeneralize_2etxt() {
  protobuf_AddDesc_SP_5fGeneralize_2etxt();
  const ::google::protobuf::FileDescriptor* file =
    ::google::protobuf::DescriptorPool::generated_pool()->FindFileByName(
      "SP_Generalize.txt");
  GOOGLE_CHECK(file != NULL);
  SM_SendClickDataToGs_descriptor_ = file->message_type(0);
  static const int SM_SendClickDataToGs_offsets_[3] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_SendClickDataToGs, m_roleid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_SendClickDataToGs, m_firstclicked_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_SendClickDataToGs, m_secondclicked_),
  };
  SM_SendClickDataToGs_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      SM_SendClickDataToGs_descriptor_,
      SM_SendClickDataToGs::default_instance_,
      SM_SendClickDataToGs_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_SendClickDataToGs, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_SendClickDataToGs, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(SM_SendClickDataToGs));
  SM_SendAllDataToGs_descriptor_ = file->message_type(1);
  static const int SM_SendAllDataToGs_offsets_[2] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_SendAllDataToGs, m_roleid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_SendAllDataToGs, m_onedata_),
  };
  SM_SendAllDataToGs_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      SM_SendAllDataToGs_descriptor_,
      SM_SendAllDataToGs::default_instance_,
      SM_SendAllDataToGs_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_SendAllDataToGs, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_SendAllDataToGs, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(SM_SendAllDataToGs));
  SM_OneData_Proto_descriptor_ = file->message_type(2);
  static const int SM_OneData_Proto_offsets_[5] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_OneData_Proto, m_roleid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_OneData_Proto, m_nextroleid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_OneData_Proto, m_level_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_OneData_Proto, m_timenow_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_OneData_Proto, m_canget_),
  };
  SM_OneData_Proto_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      SM_OneData_Proto_descriptor_,
      SM_OneData_Proto::default_instance_,
      SM_OneData_Proto_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_OneData_Proto, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SM_OneData_Proto, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(SM_OneData_Proto));
}

namespace {

GOOGLE_PROTOBUF_DECLARE_ONCE(protobuf_AssignDescriptors_once_);
inline void protobuf_AssignDescriptorsOnce() {
  ::google::protobuf::GoogleOnceInit(&protobuf_AssignDescriptors_once_,
                 &protobuf_AssignDesc_SP_5fGeneralize_2etxt);
}

void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    SM_SendClickDataToGs_descriptor_, &SM_SendClickDataToGs::default_instance());
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    SM_SendAllDataToGs_descriptor_, &SM_SendAllDataToGs::default_instance());
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    SM_OneData_Proto_descriptor_, &SM_OneData_Proto::default_instance());
}

}  // namespace

void protobuf_ShutdownFile_SP_5fGeneralize_2etxt() {
  delete SM_SendClickDataToGs::default_instance_;
  delete SM_SendClickDataToGs_reflection_;
  delete SM_SendAllDataToGs::default_instance_;
  delete SM_SendAllDataToGs_reflection_;
  delete SM_OneData_Proto::default_instance_;
  delete SM_OneData_Proto_reflection_;
}

void protobuf_AddDesc_SP_5fGeneralize_2etxt() {
  static bool already_here = false;
  if (already_here) return;
  already_here = true;
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  ::google::protobuf::DescriptorPool::InternalAddGeneratedFile(
    "\n\021SP_Generalize.txt\"Y\n\024SM_SendClickDataT"
    "oGs\022\020\n\010m_roleid\030\001 \002(\005\022\026\n\016m_firstclicked\030"
    "\002 \002(\005\022\027\n\017m_secondclicked\030\003 \002(\005\"L\n\022SM_Sen"
    "dAllDataToGs\022\020\n\010m_roleid\030\001 \002(\005\022$\n\tm_oned"
    "ata\030\002 \003(\0132\021.SM_OneData_Proto\"p\n\020SM_OneDa"
    "ta_Proto\022\020\n\010m_roleid\030\001 \001(\005\022\024\n\014m_nextrole"
    "id\030\002 \001(\005\022\017\n\007m_level\030\005 \001(\005\022\021\n\tm_timenow\030\007"
    " \001(\005\022\020\n\010m_canget\030\010 \001(\002", 302);
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "SP_Generalize.txt", &protobuf_RegisterTypes);
  SM_SendClickDataToGs::default_instance_ = new SM_SendClickDataToGs();
  SM_SendAllDataToGs::default_instance_ = new SM_SendAllDataToGs();
  SM_OneData_Proto::default_instance_ = new SM_OneData_Proto();
  SM_SendClickDataToGs::default_instance_->InitAsDefaultInstance();
  SM_SendAllDataToGs::default_instance_->InitAsDefaultInstance();
  SM_OneData_Proto::default_instance_->InitAsDefaultInstance();
  ::google::protobuf::internal::OnShutdown(&protobuf_ShutdownFile_SP_5fGeneralize_2etxt);
}

// Force AddDescriptors() to be called at static initialization time.
struct StaticDescriptorInitializer_SP_5fGeneralize_2etxt {
  StaticDescriptorInitializer_SP_5fGeneralize_2etxt() {
    protobuf_AddDesc_SP_5fGeneralize_2etxt();
  }
} static_descriptor_initializer_SP_5fGeneralize_2etxt_;

// ===================================================================

#ifndef _MSC_VER
const int SM_SendClickDataToGs::kMRoleidFieldNumber;
const int SM_SendClickDataToGs::kMFirstclickedFieldNumber;
const int SM_SendClickDataToGs::kMSecondclickedFieldNumber;
#endif  // !_MSC_VER

SM_SendClickDataToGs::SM_SendClickDataToGs()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void SM_SendClickDataToGs::InitAsDefaultInstance() {
}

SM_SendClickDataToGs::SM_SendClickDataToGs(const SM_SendClickDataToGs& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void SM_SendClickDataToGs::SharedCtor() {
  _cached_size_ = 0;
  m_roleid_ = 0;
  m_firstclicked_ = 0;
  m_secondclicked_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

SM_SendClickDataToGs::~SM_SendClickDataToGs() {
  SharedDtor();
}

void SM_SendClickDataToGs::SharedDtor() {
  if (this != default_instance_) {
  }
}

void SM_SendClickDataToGs::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* SM_SendClickDataToGs::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return SM_SendClickDataToGs_descriptor_;
}

const SM_SendClickDataToGs& SM_SendClickDataToGs::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fGeneralize_2etxt();
  return *default_instance_;
}

SM_SendClickDataToGs* SM_SendClickDataToGs::default_instance_ = NULL;

SM_SendClickDataToGs* SM_SendClickDataToGs::New() const {
  return new SM_SendClickDataToGs;
}

void SM_SendClickDataToGs::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    m_roleid_ = 0;
    m_firstclicked_ = 0;
    m_secondclicked_ = 0;
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool SM_SendClickDataToGs::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required int32 m_roleid = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_roleid_)));
          set_has_m_roleid();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(16)) goto parse_m_firstclicked;
        break;
      }

      // required int32 m_firstclicked = 2;
      case 2: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_m_firstclicked:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_firstclicked_)));
          set_has_m_firstclicked();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(24)) goto parse_m_secondclicked;
        break;
      }

      // required int32 m_secondclicked = 3;
      case 3: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_m_secondclicked:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_secondclicked_)));
          set_has_m_secondclicked();
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

void SM_SendClickDataToGs::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int32 m_roleid = 1;
  if (has_m_roleid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->m_roleid(), output);
  }

  // required int32 m_firstclicked = 2;
  if (has_m_firstclicked()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(2, this->m_firstclicked(), output);
  }

  // required int32 m_secondclicked = 3;
  if (has_m_secondclicked()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(3, this->m_secondclicked(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* SM_SendClickDataToGs::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int32 m_roleid = 1;
  if (has_m_roleid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->m_roleid(), target);
  }

  // required int32 m_firstclicked = 2;
  if (has_m_firstclicked()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(2, this->m_firstclicked(), target);
  }

  // required int32 m_secondclicked = 3;
  if (has_m_secondclicked()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(3, this->m_secondclicked(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int SM_SendClickDataToGs::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int32 m_roleid = 1;
    if (has_m_roleid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_roleid());
    }

    // required int32 m_firstclicked = 2;
    if (has_m_firstclicked()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_firstclicked());
    }

    // required int32 m_secondclicked = 3;
    if (has_m_secondclicked()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_secondclicked());
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

void SM_SendClickDataToGs::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const SM_SendClickDataToGs* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const SM_SendClickDataToGs*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void SM_SendClickDataToGs::MergeFrom(const SM_SendClickDataToGs& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_m_roleid()) {
      set_m_roleid(from.m_roleid());
    }
    if (from.has_m_firstclicked()) {
      set_m_firstclicked(from.m_firstclicked());
    }
    if (from.has_m_secondclicked()) {
      set_m_secondclicked(from.m_secondclicked());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void SM_SendClickDataToGs::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void SM_SendClickDataToGs::CopyFrom(const SM_SendClickDataToGs& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool SM_SendClickDataToGs::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000007) != 0x00000007) return false;

  return true;
}

void SM_SendClickDataToGs::Swap(SM_SendClickDataToGs* other) {
  if (other != this) {
    std::swap(m_roleid_, other->m_roleid_);
    std::swap(m_firstclicked_, other->m_firstclicked_);
    std::swap(m_secondclicked_, other->m_secondclicked_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata SM_SendClickDataToGs::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = SM_SendClickDataToGs_descriptor_;
  metadata.reflection = SM_SendClickDataToGs_reflection_;
  return metadata;
}


// ===================================================================

#ifndef _MSC_VER
const int SM_SendAllDataToGs::kMRoleidFieldNumber;
const int SM_SendAllDataToGs::kMOnedataFieldNumber;
#endif  // !_MSC_VER

SM_SendAllDataToGs::SM_SendAllDataToGs()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void SM_SendAllDataToGs::InitAsDefaultInstance() {
}

SM_SendAllDataToGs::SM_SendAllDataToGs(const SM_SendAllDataToGs& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void SM_SendAllDataToGs::SharedCtor() {
  _cached_size_ = 0;
  m_roleid_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

SM_SendAllDataToGs::~SM_SendAllDataToGs() {
  SharedDtor();
}

void SM_SendAllDataToGs::SharedDtor() {
  if (this != default_instance_) {
  }
}

void SM_SendAllDataToGs::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* SM_SendAllDataToGs::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return SM_SendAllDataToGs_descriptor_;
}

const SM_SendAllDataToGs& SM_SendAllDataToGs::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fGeneralize_2etxt();
  return *default_instance_;
}

SM_SendAllDataToGs* SM_SendAllDataToGs::default_instance_ = NULL;

SM_SendAllDataToGs* SM_SendAllDataToGs::New() const {
  return new SM_SendAllDataToGs;
}

void SM_SendAllDataToGs::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    m_roleid_ = 0;
  }
  m_onedata_.Clear();
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool SM_SendAllDataToGs::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required int32 m_roleid = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_roleid_)));
          set_has_m_roleid();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(18)) goto parse_m_onedata;
        break;
      }

      // repeated .SM_OneData_Proto m_onedata = 2;
      case 2: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_LENGTH_DELIMITED) {
         parse_m_onedata:
          DO_(::google::protobuf::internal::WireFormatLite::ReadMessageNoVirtual(
                input, add_m_onedata()));
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(18)) goto parse_m_onedata;
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

void SM_SendAllDataToGs::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int32 m_roleid = 1;
  if (has_m_roleid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->m_roleid(), output);
  }

  // repeated .SM_OneData_Proto m_onedata = 2;
  for (int i = 0; i < this->m_onedata_size(); i++) {
    ::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(
      2, this->m_onedata(i), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* SM_SendAllDataToGs::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int32 m_roleid = 1;
  if (has_m_roleid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->m_roleid(), target);
  }

  // repeated .SM_OneData_Proto m_onedata = 2;
  for (int i = 0; i < this->m_onedata_size(); i++) {
    target = ::google::protobuf::internal::WireFormatLite::
      WriteMessageNoVirtualToArray(
        2, this->m_onedata(i), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int SM_SendAllDataToGs::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int32 m_roleid = 1;
    if (has_m_roleid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_roleid());
    }

  }
  // repeated .SM_OneData_Proto m_onedata = 2;
  total_size += 1 * this->m_onedata_size();
  for (int i = 0; i < this->m_onedata_size(); i++) {
    total_size +=
      ::google::protobuf::internal::WireFormatLite::MessageSizeNoVirtual(
        this->m_onedata(i));
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

void SM_SendAllDataToGs::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const SM_SendAllDataToGs* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const SM_SendAllDataToGs*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void SM_SendAllDataToGs::MergeFrom(const SM_SendAllDataToGs& from) {
  GOOGLE_CHECK_NE(&from, this);
  m_onedata_.MergeFrom(from.m_onedata_);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_m_roleid()) {
      set_m_roleid(from.m_roleid());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void SM_SendAllDataToGs::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void SM_SendAllDataToGs::CopyFrom(const SM_SendAllDataToGs& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool SM_SendAllDataToGs::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000001) != 0x00000001) return false;

  return true;
}

void SM_SendAllDataToGs::Swap(SM_SendAllDataToGs* other) {
  if (other != this) {
    std::swap(m_roleid_, other->m_roleid_);
    m_onedata_.Swap(&other->m_onedata_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata SM_SendAllDataToGs::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = SM_SendAllDataToGs_descriptor_;
  metadata.reflection = SM_SendAllDataToGs_reflection_;
  return metadata;
}


// ===================================================================

#ifndef _MSC_VER
const int SM_OneData_Proto::kMRoleidFieldNumber;
const int SM_OneData_Proto::kMNextroleidFieldNumber;
const int SM_OneData_Proto::kMLevelFieldNumber;
const int SM_OneData_Proto::kMTimenowFieldNumber;
const int SM_OneData_Proto::kMCangetFieldNumber;
#endif  // !_MSC_VER

SM_OneData_Proto::SM_OneData_Proto()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void SM_OneData_Proto::InitAsDefaultInstance() {
}

SM_OneData_Proto::SM_OneData_Proto(const SM_OneData_Proto& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void SM_OneData_Proto::SharedCtor() {
  _cached_size_ = 0;
  m_roleid_ = 0;
  m_nextroleid_ = 0;
  m_level_ = 0;
  m_timenow_ = 0;
  m_canget_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

SM_OneData_Proto::~SM_OneData_Proto() {
  SharedDtor();
}

void SM_OneData_Proto::SharedDtor() {
  if (this != default_instance_) {
  }
}

void SM_OneData_Proto::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* SM_OneData_Proto::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return SM_OneData_Proto_descriptor_;
}

const SM_OneData_Proto& SM_OneData_Proto::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fGeneralize_2etxt();
  return *default_instance_;
}

SM_OneData_Proto* SM_OneData_Proto::default_instance_ = NULL;

SM_OneData_Proto* SM_OneData_Proto::New() const {
  return new SM_OneData_Proto;
}

void SM_OneData_Proto::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    m_roleid_ = 0;
    m_nextroleid_ = 0;
    m_level_ = 0;
    m_timenow_ = 0;
    m_canget_ = 0;
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool SM_OneData_Proto::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // optional int32 m_roleid = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_roleid_)));
          set_has_m_roleid();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(16)) goto parse_m_nextroleid;
        break;
      }

      // optional int32 m_nextroleid = 2;
      case 2: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_m_nextroleid:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_nextroleid_)));
          set_has_m_nextroleid();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(40)) goto parse_m_level;
        break;
      }

      // optional int32 m_level = 5;
      case 5: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_m_level:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_level_)));
          set_has_m_level();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(56)) goto parse_m_timenow;
        break;
      }

      // optional int32 m_timenow = 7;
      case 7: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
         parse_m_timenow:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_timenow_)));
          set_has_m_timenow();
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(69)) goto parse_m_canget;
        break;
      }

      // optional float m_canget = 8;
      case 8: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_FIXED32) {
         parse_m_canget:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   float, ::google::protobuf::internal::WireFormatLite::TYPE_FLOAT>(
                 input, &m_canget_)));
          set_has_m_canget();
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

void SM_OneData_Proto::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // optional int32 m_roleid = 1;
  if (has_m_roleid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->m_roleid(), output);
  }

  // optional int32 m_nextroleid = 2;
  if (has_m_nextroleid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(2, this->m_nextroleid(), output);
  }

  // optional int32 m_level = 5;
  if (has_m_level()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(5, this->m_level(), output);
  }

  // optional int32 m_timenow = 7;
  if (has_m_timenow()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(7, this->m_timenow(), output);
  }

  // optional float m_canget = 8;
  if (has_m_canget()) {
    ::google::protobuf::internal::WireFormatLite::WriteFloat(8, this->m_canget(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* SM_OneData_Proto::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // optional int32 m_roleid = 1;
  if (has_m_roleid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->m_roleid(), target);
  }

  // optional int32 m_nextroleid = 2;
  if (has_m_nextroleid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(2, this->m_nextroleid(), target);
  }

  // optional int32 m_level = 5;
  if (has_m_level()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(5, this->m_level(), target);
  }

  // optional int32 m_timenow = 7;
  if (has_m_timenow()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(7, this->m_timenow(), target);
  }

  // optional float m_canget = 8;
  if (has_m_canget()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteFloatToArray(8, this->m_canget(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int SM_OneData_Proto::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // optional int32 m_roleid = 1;
    if (has_m_roleid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_roleid());
    }

    // optional int32 m_nextroleid = 2;
    if (has_m_nextroleid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_nextroleid());
    }

    // optional int32 m_level = 5;
    if (has_m_level()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_level());
    }

    // optional int32 m_timenow = 7;
    if (has_m_timenow()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_timenow());
    }

    // optional float m_canget = 8;
    if (has_m_canget()) {
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

void SM_OneData_Proto::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const SM_OneData_Proto* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const SM_OneData_Proto*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void SM_OneData_Proto::MergeFrom(const SM_OneData_Proto& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_m_roleid()) {
      set_m_roleid(from.m_roleid());
    }
    if (from.has_m_nextroleid()) {
      set_m_nextroleid(from.m_nextroleid());
    }
    if (from.has_m_level()) {
      set_m_level(from.m_level());
    }
    if (from.has_m_timenow()) {
      set_m_timenow(from.m_timenow());
    }
    if (from.has_m_canget()) {
      set_m_canget(from.m_canget());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void SM_OneData_Proto::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void SM_OneData_Proto::CopyFrom(const SM_OneData_Proto& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool SM_OneData_Proto::IsInitialized() const {

  return true;
}

void SM_OneData_Proto::Swap(SM_OneData_Proto* other) {
  if (other != this) {
    std::swap(m_roleid_, other->m_roleid_);
    std::swap(m_nextroleid_, other->m_nextroleid_);
    std::swap(m_level_, other->m_level_);
    std::swap(m_timenow_, other->m_timenow_);
    std::swap(m_canget_, other->m_canget_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata SM_OneData_Proto::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = SM_OneData_Proto_descriptor_;
  metadata.reflection = SM_OneData_Proto_reflection_;
  return metadata;
}


// @@protoc_insertion_point(namespace_scope)

// @@protoc_insertion_point(global_scope)
#ifdef _MSC_VER
#  pragma warning(pop)
#endif