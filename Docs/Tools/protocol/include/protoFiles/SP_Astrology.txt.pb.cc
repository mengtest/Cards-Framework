// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SP_Astrology.txt

#define INTERNAL_SUPPRESS_PROTOBUF_FIELD_DEPRECATION
#include "SP_Astrology.txt.pb.h"
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

const ::google::protobuf::Descriptor* DB_AstrologyHis_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  DB_AstrologyHis_reflection_ = NULL;
const ::google::protobuf::Descriptor* DB_Astrology_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  DB_Astrology_reflection_ = NULL;

}  // namespace


void protobuf_AssignDesc_SP_5fAstrology_2etxt() {
  protobuf_AddDesc_SP_5fAstrology_2etxt();
  const ::google::protobuf::FileDescriptor* file =
    ::google::protobuf::DescriptorPool::generated_pool()->FindFileByName(
      "SP_Astrology.txt");
  GOOGLE_CHECK(file != NULL);
  DB_AstrologyHis_descriptor_ = file->message_type(0);
  static const int DB_AstrologyHis_offsets_[2] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(DB_AstrologyHis, m_roleid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(DB_AstrologyHis, m_data_),
  };
  DB_AstrologyHis_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      DB_AstrologyHis_descriptor_,
      DB_AstrologyHis::default_instance_,
      DB_AstrologyHis_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(DB_AstrologyHis, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(DB_AstrologyHis, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(DB_AstrologyHis));
  DB_Astrology_descriptor_ = file->message_type(1);
  static const int DB_Astrology_offsets_[2] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(DB_Astrology, m_enumid_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(DB_Astrology, m_value_),
  };
  DB_Astrology_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      DB_Astrology_descriptor_,
      DB_Astrology::default_instance_,
      DB_Astrology_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(DB_Astrology, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(DB_Astrology, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(DB_Astrology));
}

namespace {

GOOGLE_PROTOBUF_DECLARE_ONCE(protobuf_AssignDescriptors_once_);
inline void protobuf_AssignDescriptorsOnce() {
  ::google::protobuf::GoogleOnceInit(&protobuf_AssignDescriptors_once_,
                 &protobuf_AssignDesc_SP_5fAstrology_2etxt);
}

void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    DB_AstrologyHis_descriptor_, &DB_AstrologyHis::default_instance());
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    DB_Astrology_descriptor_, &DB_Astrology::default_instance());
}

}  // namespace

void protobuf_ShutdownFile_SP_5fAstrology_2etxt() {
  delete DB_AstrologyHis::default_instance_;
  delete DB_AstrologyHis_reflection_;
  delete DB_Astrology::default_instance_;
  delete DB_Astrology_reflection_;
}

void protobuf_AddDesc_SP_5fAstrology_2etxt() {
  static bool already_here = false;
  if (already_here) return;
  already_here = true;
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  ::google::protobuf::DescriptorPool::InternalAddGeneratedFile(
    "\n\020SP_Astrology.txt\"B\n\017DB_AstrologyHis\022\020\n"
    "\010m_roleId\030\001 \002(\005\022\035\n\006m_data\030\002 \003(\0132\r.DB_Ast"
    "rology\"1\n\014DB_Astrology\022\020\n\010m_enumId\030\001 \002(\005"
    "\022\017\n\007m_value\030\002 \002(\005", 137);
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "SP_Astrology.txt", &protobuf_RegisterTypes);
  DB_AstrologyHis::default_instance_ = new DB_AstrologyHis();
  DB_Astrology::default_instance_ = new DB_Astrology();
  DB_AstrologyHis::default_instance_->InitAsDefaultInstance();
  DB_Astrology::default_instance_->InitAsDefaultInstance();
  ::google::protobuf::internal::OnShutdown(&protobuf_ShutdownFile_SP_5fAstrology_2etxt);
}

// Force AddDescriptors() to be called at static initialization time.
struct StaticDescriptorInitializer_SP_5fAstrology_2etxt {
  StaticDescriptorInitializer_SP_5fAstrology_2etxt() {
    protobuf_AddDesc_SP_5fAstrology_2etxt();
  }
} static_descriptor_initializer_SP_5fAstrology_2etxt_;

// ===================================================================

#ifndef _MSC_VER
const int DB_AstrologyHis::kMRoleIdFieldNumber;
const int DB_AstrologyHis::kMDataFieldNumber;
#endif  // !_MSC_VER

DB_AstrologyHis::DB_AstrologyHis()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void DB_AstrologyHis::InitAsDefaultInstance() {
}

DB_AstrologyHis::DB_AstrologyHis(const DB_AstrologyHis& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void DB_AstrologyHis::SharedCtor() {
  _cached_size_ = 0;
  m_roleid_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

DB_AstrologyHis::~DB_AstrologyHis() {
  SharedDtor();
}

void DB_AstrologyHis::SharedDtor() {
  if (this != default_instance_) {
  }
}

void DB_AstrologyHis::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* DB_AstrologyHis::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return DB_AstrologyHis_descriptor_;
}

const DB_AstrologyHis& DB_AstrologyHis::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fAstrology_2etxt();
  return *default_instance_;
}

DB_AstrologyHis* DB_AstrologyHis::default_instance_ = NULL;

DB_AstrologyHis* DB_AstrologyHis::New() const {
  return new DB_AstrologyHis;
}

void DB_AstrologyHis::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    m_roleid_ = 0;
  }
  m_data_.Clear();
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool DB_AstrologyHis::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required int32 m_roleId = 1;
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
        if (input->ExpectTag(18)) goto parse_m_data;
        break;
      }

      // repeated .DB_Astrology m_data = 2;
      case 2: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_LENGTH_DELIMITED) {
         parse_m_data:
          DO_(::google::protobuf::internal::WireFormatLite::ReadMessageNoVirtual(
                input, add_m_data()));
        } else {
          goto handle_uninterpreted;
        }
        if (input->ExpectTag(18)) goto parse_m_data;
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

void DB_AstrologyHis::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int32 m_roleId = 1;
  if (has_m_roleid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->m_roleid(), output);
  }

  // repeated .DB_Astrology m_data = 2;
  for (int i = 0; i < this->m_data_size(); i++) {
    ::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(
      2, this->m_data(i), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
}

::google::protobuf::uint8* DB_AstrologyHis::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int32 m_roleId = 1;
  if (has_m_roleid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->m_roleid(), target);
  }

  // repeated .DB_Astrology m_data = 2;
  for (int i = 0; i < this->m_data_size(); i++) {
    target = ::google::protobuf::internal::WireFormatLite::
      WriteMessageNoVirtualToArray(
        2, this->m_data(i), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  return target;
}

int DB_AstrologyHis::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int32 m_roleId = 1;
    if (has_m_roleid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_roleid());
    }

  }
  // repeated .DB_Astrology m_data = 2;
  total_size += 1 * this->m_data_size();
  for (int i = 0; i < this->m_data_size(); i++) {
    total_size +=
      ::google::protobuf::internal::WireFormatLite::MessageSizeNoVirtual(
        this->m_data(i));
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

void DB_AstrologyHis::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const DB_AstrologyHis* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const DB_AstrologyHis*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void DB_AstrologyHis::MergeFrom(const DB_AstrologyHis& from) {
  GOOGLE_CHECK_NE(&from, this);
  m_data_.MergeFrom(from.m_data_);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_m_roleid()) {
      set_m_roleid(from.m_roleid());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void DB_AstrologyHis::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void DB_AstrologyHis::CopyFrom(const DB_AstrologyHis& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool DB_AstrologyHis::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000001) != 0x00000001) return false;

  for (int i = 0; i < m_data_size(); i++) {
    if (!this->m_data(i).IsInitialized()) return false;
  }
  return true;
}

void DB_AstrologyHis::Swap(DB_AstrologyHis* other) {
  if (other != this) {
    std::swap(m_roleid_, other->m_roleid_);
    m_data_.Swap(&other->m_data_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata DB_AstrologyHis::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = DB_AstrologyHis_descriptor_;
  metadata.reflection = DB_AstrologyHis_reflection_;
  return metadata;
}


// ===================================================================

#ifndef _MSC_VER
const int DB_Astrology::kMEnumIdFieldNumber;
const int DB_Astrology::kMValueFieldNumber;
#endif  // !_MSC_VER

DB_Astrology::DB_Astrology()
  : ::google::protobuf::Message() {
  SharedCtor();
}

void DB_Astrology::InitAsDefaultInstance() {
}

DB_Astrology::DB_Astrology(const DB_Astrology& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
}

void DB_Astrology::SharedCtor() {
  _cached_size_ = 0;
  m_enumid_ = 0;
  m_value_ = 0;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

DB_Astrology::~DB_Astrology() {
  SharedDtor();
}

void DB_Astrology::SharedDtor() {
  if (this != default_instance_) {
  }
}

void DB_Astrology::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* DB_Astrology::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return DB_Astrology_descriptor_;
}

const DB_Astrology& DB_Astrology::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_SP_5fAstrology_2etxt();
  return *default_instance_;
}

DB_Astrology* DB_Astrology::default_instance_ = NULL;

DB_Astrology* DB_Astrology::New() const {
  return new DB_Astrology;
}

void DB_Astrology::Clear() {
  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    m_enumid_ = 0;
    m_value_ = 0;
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool DB_Astrology::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) return false
  ::google::protobuf::uint32 tag;
  while ((tag = input->ReadTag()) != 0) {
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required int32 m_enumId = 1;
      case 1: {
        if (::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_VARINT) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &m_enumid_)));
          set_has_m_enumid();
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

void DB_Astrology::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // required int32 m_enumId = 1;
  if (has_m_enumid()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(1, this->m_enumid(), output);
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

::google::protobuf::uint8* DB_Astrology::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // required int32 m_enumId = 1;
  if (has_m_enumid()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteInt32ToArray(1, this->m_enumid(), target);
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

int DB_Astrology::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required int32 m_enumId = 1;
    if (has_m_enumid()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->m_enumid());
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

void DB_Astrology::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const DB_Astrology* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const DB_Astrology*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void DB_Astrology::MergeFrom(const DB_Astrology& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_m_enumid()) {
      set_m_enumid(from.m_enumid());
    }
    if (from.has_m_value()) {
      set_m_value(from.m_value());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void DB_Astrology::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void DB_Astrology::CopyFrom(const DB_Astrology& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool DB_Astrology::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000003) != 0x00000003) return false;

  return true;
}

void DB_Astrology::Swap(DB_Astrology* other) {
  if (other != this) {
    std::swap(m_enumid_, other->m_enumid_);
    std::swap(m_value_, other->m_value_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata DB_Astrology::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = DB_Astrology_descriptor_;
  metadata.reflection = DB_Astrology_reflection_;
  return metadata;
}


// @@protoc_insertion_point(namespace_scope)

// @@protoc_insertion_point(global_scope)
#ifdef _MSC_VER
#  pragma warning(pop)
#endif